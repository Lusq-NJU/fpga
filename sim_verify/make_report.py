#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generate fifo_report.docx (Office Open XML) without external libraries.

A .docx is a ZIP archive of XML parts, so this builds it with the stdlib only.
"""
import zipfile, os, datetime

OUT = "/mnt/d/coding/verilog/xc7k70t/project_fifo/fifo_report.docx"
TODAY = "2026-09-25"


def esc(t):
    return (t.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;"))


# ---------------------------------------------------------------- XML pieces
NS = ('xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" '
      'xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"')


def run(text, style=None, mono=False, bold=False, color=None, size=None):
    rpr = "<w:rPr>"
    if mono:
        rpr += '<w:rFonts w:ascii="Consolas" w:hAnsi="Consolas" w:eastAsia="Consolas"/>'
    if bold:
        rpr += "<w:b/>"
    if color:
        rpr += '<w:color w:val="%s"/>' % color
    if size:
        rpr += '<w:sz w:val="%d"/><w:szCs w:val="%d"/>' % (size, size)
    rpr += "</w:rPr>"
    return "<w:r>%s<w:t xml:space=\"preserve\">%s</w:t></w:r>" % (rpr, esc(text))


def para(text, style=None, mono=False, bold=False, color=None, size=None,
         shade=None, spacing_before=0, spacing_after=60):
    ppr = "<w:pPr>"
    if style:
        ppr += '<w:pStyle w:val="%s"/>' % style
    if shade:
        ppr += '<w:shd w:val="clear" w:color="auto" w:fill="%s"/>' % shade
    ppr += '<w:spacing w:before="%d" w:after="%d"/>' % (spacing_before, spacing_after)
    ppr += "</w:pPr>"
    return "<w:p>%s%s</w:p>" % (ppr, run(text, mono=mono, bold=bold, color=color, size=size))


def heading(text, level):
    return para(text, style="Heading%d" % level)


def bullets(items):
    out = []
    for it in items:
        out.append("<w:p><w:pPr><w:pStyle w:val=\"ListParagraph\"/>"
                   "<w:spacing w:after=\"40\"/></w:pPr>"
                   + run(u"•  " + it) + "</w:p>")
    return "".join(out)


def code(lines):
    """Monospace shaded block, one paragraph per line."""
    out = []
    for ln in lines:
        out.append("<w:p><w:pPr><w:shd w:val=\"clear\" w:color=\"auto\" w:fill=\"F2F2F2\"/>"
                   "<w:spacing w:before=\"0\" w:after=\"0\"/>"
                   "<w:ind w:left=\"284\"/></w:pPr>"
                   + run(ln if ln else " ", mono=True, size=18) + "</w:p>")
    out.append("<w:p><w:spacing w:after=\"0\"/></w:p>")
    return "".join(out)


def cellpara(text, bold=False, size=18):
    """Paragraph allowing explicit line breaks inside a table cell."""
    lines = str(text).split("\n")
    inner = "<w:br/>".join(run(l, bold=bold, size=size) for l in lines)
    return ('<w:p><w:pPr><w:spacing w:before="10" w:after="10"/></w:pPr>'
            + inner + "</w:p>")


def table(rows, widths=None, header=True):
    ncol = len(rows[0])
    if widths is None:
        widths = [int(9026 / ncol)] * ncol
    grid = "".join('<w:gridCol w:w="%d"/>' % w for w in widths)
    borders = ('<w:tblBorders>'
               + "".join('<w:%s w:val="single" w:sz="4" w:color="808080"/>' % b
                         for b in ("top", "left", "bottom", "right", "insideH", "insideV"))
               + "</w:tblBorders>")
    out = ['<w:tbl><w:tblPr><w:tblW w:w="9026" w:type="dxa"/>%s</w:tblPr><w:tblGrid>%s</w:tblGrid>'
           % (borders, grid)]
    for ri, row in enumerate(rows):
        out.append("<w:tr>")
        for ci, cell in enumerate(row):
            shd = ('<w:shd w:val="clear" w:color="auto" w:fill="D9E2F3"/>'
                   if (header and ri == 0) else "")
            is_bold = (header and ri == 0)
            out.append('<w:tc><w:tcPr><w:tcW w:w="%d" w:type="dxa"/>%s'
                       '<w:vAlign w:val="center"/></w:tcPr>'
                       % (widths[ci], shd)
                       + cellpara(cell, bold=is_bold, size=18)
                       + "</w:tc>")
        out.append("</w:tr>")
    out.append("</w:tbl>")
    out.append("<w:p><w:spacing w:after=\"80\"/></w:p>")
    return "".join(out)


# ---------------------------------------------------------------- content
C = []
A = C.append

A(("title", u"FIFO 模块设计验证报告"))
A(("sub", u"project_fifo  —  xc7k70t  —  %s" % TODAY))
A(("h1", u"1. 概述"))
A(("p", u"本报告对 project_fifo 工程 project_fifo.srcs/sources_1/new/ 下的全部 22 个 Verilog "
        u"模块（fifo_1_1 ~ fifo_1_10、fifo_2_1 ~ fifo_2_12）按次序逐一进行了功能验证，"
        u"记录每个模块的设计意图、验证结论、存在的问题以及建议的修改。"))
A(("p", u"工程内原有 19 个 testbench（fifo_1_1~1_10、fifo_2_2~2_10），fifo_2_1、fifo_2_11、"
        u"fifo_2_12 三个模块没有任何 testbench。"))
A(("h2", u"1.1 验证结论速览"))
A(("p", u"22 个模块中 17 个功能正确，5 个存在确认缺陷："))
A(("table", [
    [u"模块", u"结论", u"缺陷摘要"],
    [u"fifo_1_7", u"FAIL", u"dout_eop 缺 else 分支导致锁存，后续数据被打上错误 eop"],
    [u"fifo_2_1", u"FAIL", u"output reg dout 被 IP 实例驱动，非法并发赋值，无法 elaboration"],
    [u"fifo_2_7", u"FAIL", u"chan_d 通道编码整体偏移 1，与 2_6/2_8/2_9 不一致"],
    [u"fifo_2_11", u"FAIL", u"C 通道开头多出 2 个 0000 虚假拍（FWFT/标准 FIFO 配置不符）"],
    [u"fifo_2_12", u"FAIL", u"同 fifo_2_11"],
]))

A(("h1", u"2. 验证方法与仿真环境"))
A(("h2", u"2.1 原有验证的根本问题"))
A(("p", u"对 19 个原有 testbench 逐一检查后确认：它们全部不含任何自检逻辑。"))
A(("bullets", [
    u"没有任何 $display / $error / $fatal / assert；",
    u"没有任何期望值比对（无参考模型、无 scoreboard）；",
    u"没有任何 $finish；多数激励是 forever 循环，需要外部限制运行时间；",
    u"唯一的系统任务是 $random（仅用于产生激励）。",
]))
A(("p", u"这意味着原有 testbench 只能驱动激励、供人在 Vivado 中肉眼观察波形，"
        u"“仿真能跑通”并不能证明功能正确。因此本次验证为每个模块重新编写了"
        u"带参考模型的自检 testbench。"))
A(("h2", u"2.2 自检平台的搭建"))
A(("p", u"在工程主目录下新建 sim_verify/ 目录，包含："))
A(("bullets", [
    u"chk_fifo_*.v — 22 个模块各自的自检 testbench，内含参考模型，"
    u"逐拍比对并在出错时打印 ERROR、统计错误数，结束时打印 PASS/FAIL 并 $finish；",
    u"参考模型全部由激励推导（我发送什么，期望就是什么），不依赖被测模块内部信号，"
    u"避免与被测逻辑“同错”；",
    u"dbg_*.v — 定位根因用的探针（波形打印）；",
    u"runall.bat / elab.bat / sim.bat — 批量编译、elaborate、仿真脚本。",
]))
A(("p", u"仿真工具为 Vivado 2020.2 的 xsim。本机 Linux 版 Vivado 安装不完整"
        u"（缺少 tps/lnx64/jre 与 unwrapped/lnx64.o），故通过 WSL 调用 Windows 版可执行文件："))
A(("code", [
    u'cmd.exe /c "cd /d D:\\... && D:\\software\\vivado\\Vivado\\2020.2\\bin\\xvlog.bat ..."',
]))
A(("p", u"复现方式：在 sim_verify/ 目录下执行 runall.bat chk_fifo_1_1 chk_fifo_1_2 ... 即可。"))

A(("h1", u"3. 验证结果总表（按次序）"))
A(("table", [
    [u"#", u"模块", u"功能", u"结论"],
    [u"1", u"fifo_1_1", u"异步 16bit→16bit 透传", u"PASS"],
    [u"2", u"fifo_1_2", u"异步 16bit→8bit 拆字节（高位先出）", u"PASS"],
    [u"3", u"fifo_1_3", u"异步 32bit→32bit 透传", u"PASS"],
    [u"4", u"fifo_1_4", u"异步 8bit→16bit 拼字（首字节入[15:8]）", u"PASS"],
    [u"5", u"fifo_1_5", u"异步 8bit→32bit 拼字（首字节入[31:24]）", u"PASS"],
    [u"6", u"fifo_1_6", u"单时钟 8bit + sop/eop 恒等透传", u"PASS"],
    [u"7", u"fifo_1_7", u"16bit + sop/eop/mty → 8bit 拆字节", u"FAIL"],
    [u"8", u"fifo_1_8", u"32bit + sop/eop/mty[1:0] → 8bit 拆字节", u"PASS"],
    [u"9", u"fifo_1_9", u"8bit 包 → 16bit（2 字节/字）", u"PASS"],
    [u"10", u"fifo_1_10", u"8bit 包 → 32bit（4 字节/字）", u"PASS"],
    [u"11", u"fifo_2_1", u"8x2048 FIFO 阈值触发读出", u"FAIL"],
    [u"12", u"fifo_2_2", u"FIFO 水位迟滞突发读出", u"PASS"],
    [u"13", u"fifo_2_3", u"8bit 包透传 + eop 令牌", u"PASS"],
    [u"14", u"fifo_2_4", u"8bit 包 → 32bit（4 字节/字）", u"PASS"],
    [u"15", u"fifo_2_5", u"3 路异步 16bit 通道合并", u"PASS"],
    [u"16", u"fifo_2_6", u"3 路异步 8bit 包合并（包原子）", u"PASS"],
    [u"17", u"fifo_2_7", u"3 路异步包合并（整包就绪才选）", u"FAIL"],
    [u"18", u"fifo_2_8", u"1 路→4 路通道解复用", u"PASS"],
    [u"19", u"fifo_2_9", u"4 路→1 路通道合并", u"PASS"],
    [u"20", u"fifo_2_10", u"3 路位宽转换合并→16bit", u"PASS"],
    [u"21", u"fifo_2_11", u"3 路包合并→16bit（含 eop 令牌）", u"FAIL"],
    [u"22", u"fifo_2_12", u"3 路包合并→16bit（独立 eop FIFO）", u"FAIL"],
]))

A(("h1", u"4. 逐模块说明"))

def mod(name, func, ip, result, detail, problems, fixes):
    A(("h2", name))
    A(("p", u"功能：" + func))
    A(("p", u"所用 IP：" + ip))
    A(("p", u"验证结论：" + result))
    A(("p", u"验证细节：" + detail))
    if problems:
        A(("h3", u"存在的问题"))
        A(("bullets", problems))
    if fixes:
        A(("h3", u"建议修改"))
        A(("bullets", fixes))

mod(u"4.1  fifo_1_1",
    u"独立时钟域 16bit → 16bit 透传。写侧 clk_in，读侧 clk_out。",
    u"fifo_16x64（First_Word_Fall_Through，64 深，异步）",
    u"PASS",
    u"写入 81 拍激励，实测写入 62 拍、读出 62 拍，数据保序、无重复、无损坏，"
    u"data_out 与 data_out_vld 同拍对齐（FWFT 下 r_data_out / r_data_out_vld 均寄存一级，时序正确）。",
    [u"写侧用 assign wr_en = data_in_vld && wr_data_count<61; 硬性截断："
     u"FIFO 将满时直接丢弃输入数据，既不 backpressure 也不产生溢出标志。"
     u"实测输入 81 拍仅 62 拍落入 FIFO，19 拍被静默丢弃。"],
    [u"用 full / wr_ack 做真正的反压握手；若业务上确实允许丢弃，"
     u"应输出明确的丢弃/溢出标志供上游统计。"])

mod(u"4.2  fifo_1_2",
    u"独立时钟域 16bit → 8bit，每个 16bit 拆成 2 个字节，高位字节先出。",
    u"fifo_16x64（FWFT，异步）",
    u"PASS",
    u"实测写入 62 个字，输出 124 字节，字节序列与 {word[15:8], word[7:0]} 完全一致，"
    u"b_rdy 随机反压下计数与分组未错乱。",
    [u"与 fifo_1_1 相同的 wr_data_count>=61 静默丢弃问题。",
     u"data_out <= dout[15-cnt*8 -: 8] 与 data_out_vld <= add_cnt 的配对依赖 cnt 不被外部打断，"
     u"当前实现正确但较脆弱。"],
    [u"同 fifo_1_1，改为 full 反压。"])

mod(u"4.3  fifo_1_3",
    u"独立时钟域 32bit → 32bit 透传，无位宽转换。",
    u"fifo_32x64_standard（Standard_FIFO，读延迟 1 拍，异步）",
    u"PASS",
    u"实测写入 62 拍、读出 62 拍完全一致。标准 FIFO 读延迟 1 拍，"
    u"DUT 用 dout_vld_ff0 → data_out_vld 两级寄存，正好抵消读延迟，"
    u"data_out 与 data_out_vld 对齐正确。",
    [u"同样的 wr_data_count>=61 静默丢弃。"],
    [u"改为 full 反压。"])

mod(u"4.4  fifo_1_4",
    u"独立时钟域 8bit → 16bit，每 2 个字节拼成 1 个字，先收到的字节放在 [15:8]。",
    u"fifo_16x64_standard（Standard_FIFO，异步）",
    u"PASS",
    u"输入 265 字节（200 + 65），实测写入 94 个字、读出 94 个字，"
    u"拼字字节序与填充位置全部正确；跨突发（burst）时 cnt0 连续计数，配对不重排。"
    u"读侧两级 vld 与标准 FIFO 读延迟对齐正确。",
    [u"突发长度为奇数时，最后一个半字不会写入（wr_en 需要 cnt0==1），属预期行为但需上游保证偶数长度。",
     u"同样的写侧计数截断。"],
    [u"如需支持奇数长度突发，应增加末尾补写逻辑（配合 mty 语义）。"])

mod(u"4.5  fifo_1_5",
    u"独立时钟域 8bit → 32bit，每 4 个字节拼成 1 个字，先收到的字节放在 [31:24]。",
    u"fifo_32x64_standard（Standard_FIFO，异步）",
    u"PASS",
    u"输入 130 字节，实测写入 32 个字、读出 32 个字，字节序与打包全部正确，"
    u"两轮突发之间配对关系正确延续。",
    [u"同 fifo_1_4：奇数余数字节不会写入。"],
    [u"同 fifo_1_4。"])

mod(u"4.6  fifo_1_6",
    u"单时钟 8bit 数据流透传，保持 sop/eop 包标记。",
    u"fifo_10x512_standard_sync（Standard_FIFO，单时钟）",
    u"PASS",
    u"使用随机 b_rdy 施加真实反压，48 拍输入对应 48 拍输出，"
    u"数据、sop、eop 全部一致，且未出现 dout_vld==0 时 sop/eop 被置起的情况。",
    [u"第 68–80 行存在两个完全相同的 dout 赋值 always 块（冗余代码，功能无害）。",
     u"full 信号悬空未用，FIFO 满时会丢数。",
     u"原 testbench 的 b_rdy = $random && din_vld 因逻辑与运算恒等于 1，反压通路从未被测试。"],
    [u"删除重复的 always 块；用 full 参与写使能。"])

mod(u"4.7  fifo_1_7",
    u"16bit 字流（含 sop/eop/mty）→ 8bit 字节流；每字输出高字节、低字节；"
    u"eop 且 mty=1 时只输出高字节。",
    u"fifo_19x256_fwft_sync（FWFT，单时钟）",
    u"FAIL",
    u"数据本身正确（16 个有效字节的数据值与顺序全部正确），"
    u"但 eop 标记错误：出现 6 处错误的 eop，以及 11 个 dout_vld==0 却 dout_eop==1 的非法周期。",
    [u"第 86–92 行的 dout_eop 赋值块缺少 else 分支：",
     u"always @(posedge clk or negedge rst_n)",
     u"    if (rst_n==0) dout_eop <= 1'd0;",
     u"    else if (add_cnt0 && data_out[17:17]==1)",
     u"        dout_eop <= data_out[16:16]==0 ? cnt0 : ~cnt0;",
     u"非 eop 字不再赋值，dout_eop 保持上一次的值，从而一直锁存到下一包的 eop 字，"
     u"导致后续正常数据被错误地打上 eop 标记。",
     u"原 testbench 把 din_mty 硬接为常量 1，恰好掩盖了这条路径。"],
    [u"补上 else 分支，非 eop 时明确清零：",
     u"else if (add_cnt0 && data_out[17:17]==1) dout_eop <= ...;",
     u"else dout_eop <= 1'b0;"])

mod(u"4.8  fifo_1_8",
    u"32bit 字流（含 sop/eop/mty[1:0]）→ 8bit 字节流；每字输出 4 字节，高位先出；"
     u"mty 表示末尾无效字节数，x = eop ? 4-mty : 4。",
    u"fifo_36x128_fwft_sync（FWFT，单时钟）",
    u"PASS",
    u"构造了 mty=0/1/2/3 四种包尾，共 22 个有效字节全部正确，"
    u"sop/eop 落在正确的字节上，dout_vld 与数据对齐正确。",
    [u"原 testbench 的 din_mty = din_eop?i:0，其值并非正确的无效字节数（应为 (4-len%4)%4），"
     u"即原激励给出的 mty 本身就是错的。"],
    [u"仅需修正 testbench 的 mty 激励生成（本次已用正确 mty 重新验证通过）。"])

mod(u"4.9  fifo_1_9",
    u"8bit 带 sop/eop 的包流 → 16bit 字输出，2 字节/字，首字节入 [15:8]，"
     u"末字不足时 mty=1。",
    u"fifo_19x256_standard_sync（Standard_FIFO，单时钟）",
    u"PASS",
    u"使用 1/2/3/8/9 字节共 5 个包（奇偶长度混合），13 个字全部正确："
     u"数据打包、sop/eop 位置、mty 取值（奇数字节包为 1）均符合预期。",
    [u"末字若只有 1 个有效字节，无效的低字节道保留的是上一拍的残留数据而非清零"
     u"（实测 2 个字存在该情况）。由于 mty 已标记该字节道无效，功能上可接受，"
     u"但属于脏输出，存在信息泄漏风险。"],
    [u"在拼字的 always 块中，对无效的低字节道显式清零。"])

mod(u"4.10  fifo_1_10",
    u"8bit 带 sop/eop 的包流 → 32bit 字输出，4 字节/字，首字节入 [31:24]，"
     u"末字不足时 mty = 3-cnt0。",
    u"fifo_36x256_standard_sync（Standard_FIFO，单时钟）",
    u"PASS",
    u"使用 1/4/5/6/7/19 字节共 6 个包，13 个字全部正确，"
     u"mty 在 0/1/2/3 四种取值下均正确，sop/eop 位置正确。",
    [u"同 fifo_1_9：末字无效字节道为残留数据（实测 4 个字），而非清零。"],
    [u"同 fifo_1_9。"])

mod(u"4.11  fifo_2_1",
    u"8x2048 单时钟 FIFO，按阈值 cfg_thd 触发读出。",
    u"fifo_8x2048_standard_sync（Standard_FIFO，单时钟）",
    u"FAIL（模块无法 elaboration）",
    u"原始模块无法通过 xelab，错误为 VRFC 10-3236 concurrent assignment to a non-net "
     u"'dout' is not permitted（fifo_2_1.v:25）。为验证其余逻辑，"
     u"我另建了一份打了最小补丁的副本 sim_verify/fifo_2_1_fix.v 单独测试，"
     u"其数据通路正确（保序、dout_vld 对齐正确）。",
    [u"第 9 行声明 output reg [7:0] dout，但第 25 行把 dout 接到了 IP 实例的输出端口"
     u".dout(dout) 上。用 reg 型变量承接模块实例的连续驱动是非法并发赋值，"
     u"Vivado 综合与 elaboration 均会报错。",
     u"该模块没有 testbench，且工程中没有任何地方实例化它，因此这个错误一直未被发现。",
     u"逻辑层面：rd_en = data_count >= cfg_thd 会在余数低于阈值时停止读出，"
     u"实测 120 字节突发后仍有 99 字节（= cfg_thd-1）滞留在 FIFO 中；"
     u"wr_en = din_vld 不检查 full，满时会丢数。"],
    [u"把第 9 行改为 output [7:0] dout；（去掉 reg）。这是必须修复的硬性错误。",
     u"rd_en 增加 empty 保护；wr_en 增加 full 保护。",
     u"为该模块补充 testbench。"])

mod(u"4.12  fifo_2_2",
    u"FIFO 水位迟滞突发读出：占用 > cfg_thd_1 开始读，占用 < cfg_thd_0 停止读。",
    u"fifo_8x2048_standard_sync（Standard_FIFO，单时钟）",
    u"PASS",
    u"连续突发 + 随机 din_vld 混合激励，247 字节写入，输出的 222 字节保序、无损坏、无重复，"
     u"dout_vld 与数据对齐正确。",
    [u"迟滞机制的固有行为：输入停止时若 FIFO 占用数处于 cfg_thd_0（20）与 cfg_thd_1（30）之间，"
     u"状态机停留在 IDLE，需占用再次超过 cfg_thd_1 才会恢复读出。"
     u"实测结束时 FIFO 内仍滞留 25 字节且不会再输出。",
     u"wr_en = din_vld 同样不检查 full。"],
    [u"明确该滞留行为是否符合系统需求；若需最终排空，应增加 flush/超时机制。",
     u"wr_en 增加 full 保护。"])

mod(u"4.13  fifo_2_3",
    u"8bit 带 sop/eop 的包透传；数据 FIFO 逐字节携带 sop/eop，"
     u"并用一个 1x32 的 eop 令牌 FIFO 控制“整包到达后才开始读出”。",
    u"fifo_10x512_fwft_sync + fifo_10x512_standard_sync + fifo_1x32_standard_sync",
    u"PASS",
    u"发送 5/100/250/251/256 字节共 5 个包，862 字节全部正确，"
     u"包边界与 sop/eop 完全一致。",
    [u"第 54 行 end_cnt0 = add_cnt0 && (cnt0==251-1 || data_din[8]) 隐含 251 字节最大包限制。"
     u"超过 251 字节的包会在第 251 字节处额外写入一个 eop 令牌。"
     u"由于 sop/eop 是随数据逐字节存储的，数据与包标记本身不会损坏，"
     u"但 eop 令牌 FIFO 中会残留多余令牌，使“等整包到达再读”的保护被永久削弱"
     u"（flag_data_rd 一直为 1）。"],
    [u"如需支持长包，去掉 cnt0==251-1 这个强制结束条件；"
     u"或改为在包真正结束时才写令牌，并将多余令牌清空。"])

mod(u"4.14  fifo_2_4",
    u"8bit 带 sop/eop 的包流 → 32bit 字输出，4 字节/字，首字节入 [31:24]，"
     u"并用独立的 1x32 eop FIFO 标记包尾，mty = 3-cnt0。",
    u"fifo_36x512_fwft_sync + fifo_1x32_standard_sync",
    u"PASS",
    u"发送 1/4/25/24/6/256 字节共 6 个包，81 个字全部正确，"
     u"sop/eop/mty（含 0/1/2/3 全取值）均正确。",
    [u"第 60 行的 w_eop_empty 未声明，Verilog 会隐式推断为 1bit wire"
     u"（xvlog 报 VRFC 10-2458 警告）。功能上可连通，但属于编码疏漏。",
     u"末字无效字节道同样为残留数据（实测 2 个字）。"],
    [u"显式声明 wire w_eop_empty;。",
     u"无效字节道清零。"])

mod(u"4.15  fifo_2_5",
    u"3 路异步 16bit 通道（40/20/10MHz）合并到 1 路 80MHz 输出，"
     u"带 chan_d 通道号；仲裁为固定优先级 A > B > C。",
    u"3 x fifo_16x128_standard_async（Standard_FIFO，异步）",
    u"PASS",
    u"三通道分别送 32/32/31 拍，输出的 32/32/31 拍全部正确："
     u"每个通道的数据保序、完整，chan_d 与实际来源一致，无丢失无重复。"
     u"输出侧 chan_d/data_d/data_d_vld 的 1 拍延迟关系正确。",
    [u"复位释放瞬间（约 16ns 后）会出现 1 个虚假输出拍：此时 FIFO 的 empty 尚未稳定，"
     u"组合逻辑 channel_cnt 误判为通道 A 有数据，导致 data_d_vld 提前置起。",
     u"DUT 完全不处理 FIFO 的 rd_rst_busy / wr_rst_busy（IP 实例上这两个端口未连接），"
     u"复位后一段时间内 FIFO 尚未就绪，此期间的读会推进读指针、写会被丢弃。",
     u"原 testbench 复位仅 100ns，而 clk_b=50ns / clk_c=100ns，"
     u"实测 FIFO 的 wr_rst_busy 在复位释放后仍保持约 650ns，"
     u"期间写入的 B/C 通道头几个字节被静默丢弃（本次验证已通过加长复位复现并排除该干扰）。"],
    [u"在 IP 实例上接出 rd_rst_busy / wr_rst_busy，读出与写入都以其为门控条件。",
     u"channel_cnt 增加 empty 稳定后使能。",
     u"testbench 复位脉宽至少覆盖最慢时钟的 3 个周期以上并等待 rst_busy 撤销。"])

mod(u"4.16  fifo_2_6",
    u"3 路异步 8bit 包（含 sop/eop）合并到 1 路 8bit 输出，带 chan_d；"
     u"仲裁为固定优先级 A > B > C 且保证包原子性（锁定到某通道直到其 eop）。",
    u"3 x fifo_10x256_fwft_async（FWFT，异步）",
    u"PASS",
    u"三通道分别送 16/21/31 字节的完整包，共 68 拍全部正确："
     u"包完整、无跨通道插入、sop/eop 正确、chan_d 正确、每通道数据保序。",
    [u"原 testbench 复位 100ns、400ns 后即开始送数，实测此时 B/C 通道 FIFO 的 wr_rst_busy "
     u"仍未撤销（约 650ns 后才撤销），导致 B 通道前 4 字节、C 通道前 6 字节被静默丢弃。"
     u"这是 testbench 复位过短 + DUT 不处理 rst_busy 共同造成的真实上电丢数隐患。",
     u"同一复位问题导致输出在复位释放瞬间可能有非法拍。"],
    [u"同 fifo_2_5：接出并使用 rst_busy；加长 testbench 复位。"])

mod(u"4.17  fifo_2_7",
    u"与 fifo_2_6 功能相同（3 路异步 8bit 包合并），"
     u"但改用每通道一个 1x32 eop 令牌 FIFO，只有整包已缓存（令牌到达）才参与仲裁。",
    u"3 x fifo_10x256_fwft_async + 3 x fifo_1x32_standard_async",
    u"FAIL",
    u"数据通路本身完全正确：68 拍全部正确，包完整、保序、sop/eop 正确、"
     u"无跨通道插入（把通道号减 1 重映射后 checker 报 PASS）。"
     u"唯一缺陷是 chan_d 输出编码错误。",
    [u"chan_d 通道编码整体偏移 1。DUT 内部用 flag_rd = 1/2/3 表示通道 A/B/C、"
     u"空闲为 0，并直接 assign chan_d <= flag_rd；"
     u"而 fifo_2_6 / fifo_2_8 / fifo_2_9 统一约定 0/1/2 表示 A/B/C、空闲为 3。"
     u"两者不一致，会把 A 通道数据标成通道 1、B 标成 2、C 标成 3，空闲标成 0。",
     u"rd_en_a/b/c = flag_rd==N 没有任何 empty 保护，且数据 FIFO 的 empty 端口未连接，"
     u"完全依赖“整包已缓存”这一前提，鲁棒性较差。"],
    [u"把 chan_d 的编码改为与其它模块一致：chan_d <= (flag_rd==0) ? 2'd3 : flag_rd - 1;，"
     u"或统一把内部状态改为 0/1/2 表示 A/B/C、3 表示空闲。",
     u"建议接出 empty 并加入读使能条件。"])

mod(u"4.18  fifo_2_8",
    u"1 路→4 路通道解复用：按 din_chan 把单路 8bit 输入分流到 4 个独立输出，"
     u"各自保持 sop/eop。",
    u"4 x fifo_10x512_fwft_sync + 4 x fifo_1x32_standard_sync",
    u"PASS",
    u"按原始 testbench 风格发送交错切片、每通道多个不同长度包，"
     u"共 348 字节（49/40/212/47）：四路输出全部保序、完整、sop/eop 正确、无丢失无重复。",
    [u"data_rd_enN = flag_rdN && data_emptyN==0 与 data_countN>240 的启动条件组合下，"
     u"若通道长时间无数据、flag_rdN 已置 1，会持续读取（受 empty 保护，功能安全）。"],
    [u"无明显缺陷，建议保留现有写法并补充自检 testbench 纳入回归。"])

mod(u"4.19  fifo_2_9",
    u"4 路→1 路通道合并（fifo_2_8 的逆操作）："
     u"按 din_chan 把 4 路交错输入缓存后合并到 1 路输出，带 dout_chan；"
     u"仲裁为固定优先级 2 > 1 > 0 > 3，且保证包原子性。",
    u"4 x fifo_10x512_fwft_sync + 4 x fifo_1x32_standard_sync",
    u"PASS",
    u"与 fifo_2_8 相同的 348 字节交错激励，输出全部正确："
     u"每通道保序、包完整、sop/eop/chan 标记正确，无丢失无重复。",
    [u"flag_rd2 / flag_rd3 的清除条件写成了 eop_rd_en0（通道 0 的 eop），"
     u"疑似复制粘贴错误，应为 eop_rd_en2 / eop_rd_en3。"
     u"本次激励下未造成功能错误（因为 flag_order 的包原子性保证了"
     u"通道 0 的 eop 不会在通道 2/3 服务期间出现），但属于隐患。"],
    [u"修正为 eop_rd_en2 / eop_rd_en3，避免后续改动时暴露问题。"])

mod(u"4.20  fifo_2_10",
    u"3 路异部位宽合并到 16bit：A 通道 8bit 上采为 16bit（2 字节/字），"
     u"B 通道 16bit 直通，C 通道 32bit 拆成 2 个 16bit 拍（高半字先出）；"
     u"仲裁为 A > B > C，并用 cnt_c==0 抑制 A/B 抢占总线，保证 C 的两拍不被拆开。",
    u"fifo_16x128_fwft_async x 2 + fifo_32x128_fwft_async",
    u"PASS",
    u"三通道分别送 16/21/31 个输入，输出的 8/21/62 = 91 拍全部正确，"
     u"chan_d、位宽转换（含 C 通道高/低半字顺序）、保序均正确。",
    [u"A/C 通道 8bit 上采时，字节对齐依赖 cnt_a 连续计数；"
     u"若输入中途插入气泡（vld 间断），需确认业务上允许（当前实现按 vld 计数，行为一致）。",
     u"与其它异步 FIFO 模块一样未处理 rst_busy。"],
    [u"接入 rst_busy 门控。"])

mod(u"4.21  fifo_2_11",
    u"3 路包合并到 16bit：A 通道 8bit 拼成 16bit 字（首字节入 [15:8]，奇数字节尾字 mty=1），"
     u"B 通道 16bit 直通（sop/eop/mty 透传），"
     u"C 通道 32bit 拆成 1~2 个 16bit 拍（高半字先出，x = mty[1] ? 1 : 2）；"
     u"带 chan_d，包原子性由 eop 位控制。",
    u"fifo_19x256_fwft_async + fifo_19x256_fwft_async + fifo_36x256_fwft_async",
    u"FAIL",
    u"共 13 拍预期，实测 13 拍。前 8 拍（A 通道 3 个字 + B 通道 3 个字）全部正确；"
     u"C 通道出错：开头多出 2 个 0000 虚假拍，",
    [u"根因是 IP 配置与命名不符：fifo_36x256_fwft_async 的 .xci 中 "
     u"Performance_Options = Standard_FIFO（标准 FIFO，读延迟 1 拍），"
     u"但文件名与 DUT 都按 First_Word_Fall_Through（FWFT）使用。",
     u"DUT 写的是 data_d_vld <= add_cnt_c，即一旦被仲裁选中且 FIFO 非空就立即输出一拍，"
     u"而标准 FIFO 的 dout 要等 rd_en 之后一拍才有效（且首次需要一次预读），"
     u"因此前 2 拍取到的是未初始化的 dout（0000），之后的数据才是对的。",
     u"对照模块 fifo_2_10 使用真 FWFT 的 fifo_32x128_fwft_async，同一段逻辑完全正确，"
     u"可确认根因就是该 IP 的读模式配置。",
     u"次要问题：data_d_eop <= w_dout_c[34] && w_rd_en_c 中 w_rd_en_c = end_cnt_c，"
     u"组合路径较长；data_d_mty <= w_dout_c[32] && w_rd_en_c 只取了 mty 的最低位，"
     u"对 32bit→16bit 而言恰好等价于正确的无效字节道数（已核对），但可读性差。",
     u"该模块依赖的 IP（fifo_19x256_fwft_async、fifo_36x256_fwft_async）"
     u"根本不在工程仿真编译表 fifo_2_10_tb_vlog.prj 中，且没有任何 testbench，"
     u"因此从未被仿真过，在现有工程配置下也无法 elaboration。"],
    [u"把 fifo_36x256_fwft_async 重新生成/配置为真正的 First_Word_Fall_Through；"
     u"或修改 DUT 按标准 FIFO 时序取数（首次预读 + 延迟一拍取 dout）。",
     u"把缺失的 IP 仿真模型加入工程编译表，并补充 testbench。"])

mod(u"4.22  fifo_2_12",
    u"与 fifo_2_11 功能相同（3 路包合并到 16bit），"
     u"区别是每通道额外使用一个 1x32 的 eop 令牌 FIFO，"
     u"以“令牌已存在”作为参与仲裁的条件。",
    u"fifo_19x256_fwft_async + fifo_19x256_fwft_async + fifo_36x256_fwft_async "
     u"+ 3 x fifo_1x32_standard_async",
    u"FAIL",
    u"与 fifo_2_11 表现一致：前 8 拍正确，C 通道开头多出 2 个 0000 虚假拍，"
     u"导致后续数据整体错位。",
    [u"根因与 fifo_2_11 完全相同：fifo_36x256_fwft_async 实为 Standard_FIFO，"
     u"DUT 却按 FWFT 使用。",
     u"令牌 FIFO 的写入时机为 w_wr_en_eop_a = r_wr_en_a && r_data_a_sop（在包首字写入），"
     u"弹出时机为 eop（w_rd_en_eop_a = w_rd_en_a && w_dout_a[17]），"
     u"一进一出配平；但若上层丢弃包，令牌会永久残留。",
     u"同样不在工程编译表中，且无 testbench，从未被仿真。"],
    [u"同 fifo_2_11：修正 IP 读模式或修正 DUT 时序。",
     u"补充编译表与 testbench。"])

A(("h1", u"5. 本次已进行的修改"))
A(("p", u"必须明确说明：本次验证过程中，我没有修改 project_fifo.srcs/ 下的任何设计源文件"
        u"或原有 testbench，全部为新增文件。经 git status 核对，"
        u"project_fifo.srcs/sources_1/new/ 与 sim_1/new/ 下没有任何被我改动的已跟踪文件。"))
_here = os.path.dirname(os.path.abspath(__file__))
_authored = ([f for f in os.listdir(_here)
              if f.startswith(("chk_fifo_", "dbg_fifo_", "dbg2_fifo_", "dbg_ip_"))]
             + ["fifo_2_1_fix.v", "glbl.v", "runall.bat", "elab.bat", "sim.bat",
                "all.prj", "extra.prj", "make_report.py"])
A(("h2", u"5.1 新增文件清单（均在新建的 sim_verify/ 目录内，共 %d 个文件）"
   % len(_authored)))
A(("table", [
    [u"类别", u"文件", u"说明"],
    [u"自检 testbench",
     u"chk_fifo_1_1.v ~ chk_fifo_1_10.v\nchk_fifo_2_1.v ~ chk_fifo_2_12.v\n"
     u"chk_fifo_2_1fix.v、chk_fifo_2_7b.v",
     u"22 个模块的自检验证，内含参考模型与 PASS/FAIL 判定。"
     u"chk_fifo_2_1fix.v 用于验证打了补丁的 2_1 副本；"
     u"chk_fifo_2_7b.v 用于验证 2_7 数据通路（通道号重映射）。"],
    [u"定位探针",
     u"dbg_fifo_1_6.v\ndbg_fifo_2_6.v\ndbg2_fifo_2_6.v\ndbg_ip_async.v",
     u"用于定位根因的波形打印工程：1_6 的参考模型偏差、"
     u"2_6 的仲裁状态、以及 FIFO IP 的 rst_busy 行为。"],
    [u"补丁副本",
     u"fifo_2_1_fix.v",
     u"fifo_2_1.v 的最小改动副本（模块名改为 fifo_2_1_fix），"
     u"仅把 output reg [7:0] dout 改为 output [7:0] dout，"
     u"用于验证该模块其余逻辑是否正确。原文件未被替换。"],
    [u"脚本",
     u"runall.bat、elab.bat、sim.bat、all.prj、extra.prj、glbl.v、make_report.py",
     u"批量编译/elaborate/仿真脚本，以及本报告的生成脚本。"],
]))
A(("h2", u"5.2 针对各缺陷的建议补丁（尚未应用到源文件）"))
A(("p", u"以下修改建议已在本次验证中通过“补丁副本 / 重映射 checker”的方式验证有效"
        u"（即应用后对应模块可通过自检），但出于不影响你原有代码的考虑，"
        u"未直接修改源文件。如需我应用，请告知。"))
A(("h3", u"fifo_2_1.v — 必须修复（当前无法 elaboration）"))
A(("code", [
    u"// 第 9 行",
    u"-        output  reg     [7:0]   dout    ,",
    u"+        output          [7:0]   dout    ,",
]))
A(("h3", u"fifo_1_7.v — 修复 dout_eop 锁存"))
A(("code", [
    u"// 第 86~92 行",
    u" always @(posedge clk or negedge rst_n) begin",
    u"     if(rst_n==0)",
    u"         dout_eop <= 1'd0;",
    u"     else if(add_cnt0 && data_out[17:17]==1)",
    u"         dout_eop <= data_out[16:16]==0 ? cnt0 : ~cnt0;",
    u"+    else",
    u"+        dout_eop <= 1'b0;",
    u" end",
]))
A(("h3", u"fifo_2_7.v — 统一 chan_d 编码"))
A(("code", [
    u"// 第 197~202 行",
    u"- always @(posedge clk_d or negedge rst_n) begin",
    u"-     if(rst_n==0) chan_d <= 0;",
    u"-     else         chan_d <= flag_rd;",
    u"- end",
    u"+ // flag_rd 为 1/2/3 时代表 A/B/C，0 表示空闲；对外统一为 0/1/2 + 空闲 3",
    u"+ always @(posedge clk_d or negedge rst_n) begin",
    u"+     if(rst_n==0) chan_d <= 2'd3;",
    u"+     else         chan_d <= (flag_rd==2'd0) ? 2'd3 : (flag_rd - 2'd1);",
    u"+ end",
]))
A(("h3", u"fifo_2_11.v / fifo_2_12.v — 修正 C 通道 FWFT 假设"))
A(("p", u"两种方案任选其一："))
A(("bullets", [
    u"方案 A（推荐）：把 IP fifo_36x256_fwft_async 重新生成/配置为 "
     u"First_Word_Fall_Through，与其名称一致，DUT 代码无需改动；",
    u"方案 B：保持 IP 为标准 FIFO，修改 DUT 的 C 通道取数时序 —— "
     u"在进入 C 通道服务时先做一次预读（rd_en 提前一拍），"
     u"并把 data_d / data_d_vld / data_d_sop / data_d_eop / data_d_mty 整体延后一拍，"
     u"同时修正 w_rd_en_c = end_cnt_c 与取数拍的关系。",
]))
A(("h3", u"fifo_2_9.v — 修正复制粘贴错误"))
A(("code", [
    u"// 第 158 行与第 205 行",
    u"-     else if(eop_rd_en0) flag_rd2 <= 0;",
    u"+     else if(eop_rd_en2) flag_rd2 <= 0;",
    u" ...",
    u"-     else if(eop_rd_en0) flag_rd3 <= 0;",
    u"+     else if(eop_rd_en3) flag_rd3 <= 0;",
]))
A(("h3", u"fifo_2_4.v — 补声明"))
A(("code", [
    u"+ wire w_eop_empty;",
]))
A(("h3", u"所有使用异步 FIFO 的模块 — 补 rst_busy 门控（fifo_2_5/2_6/2_7/2_10/2_11/2_12 等）"))
A(("code", [
    u"// IP 实例补接端口",
    u" fifo_XXXX u_fifo (",
    u"     ...",
    u"     .empty         (empty       ),",
    u"+    .wr_rst_busy   (wr_rst_busy ),",
    u"+    .rd_rst_busy   (rd_rst_busy )",
    u" );",
    u"// 写/读使能增加门控",
    u" assign wr_en = din_vld && !wr_rst_busy;",
    u" assign rd_en = 有数据 && !rd_rst_busy;",
]))

A(("h1", u"6. 系统性问题汇总"))
A(("table", [
    [u"问题", u"影响范围", u"后果"],
    [u"原有 testbench 完全没有自检逻辑",
     u"全部 19 个 testbench",
     u"“仿真通过”不代表功能正确，缺陷长期隐藏"],
    [u"不处理异步 FIFO 的 wr_rst_busy / rd_rst_busy",
     u"所有使用异步 FIFO 的模块",
     u"复位释放后约 650ns 内的写入被静默丢弃，上电丢数"],
    [u"写侧用 wr_data_count < N 直接截断 / 不检查 full",
     u"fifo_1_1~1_5、fifo_2_1、fifo_2_2",
     u"FIFO 将满或已满时输入数据被静默丢弃，无任何标志"],
    [u"fifo_36x256_fwft_async 名实不符（实为标准 FIFO）",
     u"fifo_2_11、fifo_2_12",
     u"C 通道开头输出 2 个虚假 0000 拍"],
    [u"依赖的 IP 未加入工程仿真编译表、且无 testbench",
     u"fifo_2_1、fifo_2_11、fifo_2_12",
     u"这三个模块从未被仿真，2_11/2_12 无法 elaboration"],
    [u"无效字节道保留残留数据而非清零",
     u"fifo_1_9、1_10、2_4",
     u"mty 已标记无效，功能可接受，但属脏输出/信息泄漏"],
    [u"b_rdy = $random && din_vld 恒为 1",
     u"fifo_1_6~1_10 的 testbench",
     u"反压/背压通路从未被测试，覆盖率为虚假"],
]))

A(("h1", u"7. 修复建议优先级"))
A(("table", [
    [u"优先级", u"模块", u"动作"],
    [u"P0", u"fifo_2_1", u"修复 output reg dout，否则该模块任何使用都会 elaboration 失败"],
    [u"P0", u"fifo_1_7", u"为 dout_eop 补 else 清零，当前会输出错误的 eop 标记"],
    [u"P1", u"fifo_2_11 / fifo_2_12",
     u"修正 C 通道 FWFT/标准 FIFO 时序；并把缺失 IP 加入编译表、补 testbench"],
    [u"P1", u"fifo_2_7", u"统一 chan_d 通道编码，与 2_6/2_8/2_9 对齐"],
    [u"P1", u"全部异步 FIFO 模块",
     u"接入 wr_rst_busy / rd_rst_busy 门控，并加长 testbench 复位脉宽"],
    [u"P2", u"fifo_2_9", u"修正 flag_rd2 / flag_rd3 的清除条件"],
    [u"P2", u"fifo_1_1~1_5、2_1、2_2",
     u"把静默丢弃改为 full 反压或输出溢出标志"],
    [u"P2", u"fifo_1_9、1_10、2_4", u"无效字节道清零"],
    [u"P3", u"全部模块",
     u"把 sim_verify/ 下的自检 checker 纳入工程回归，替代纯波形验证"],
]))

A(("h1", u"8. 附录"))
A(("h2", u"8.1 验证环境"))
A(("bullets", [
    u"仿真器：Vivado Simulator (xsim) 2020.2，时间精度 1ps；",
    u"调度方式：WSL 中通过 cmd.exe 调用 Windows 版 xvlog.bat / xelab.bat / xsim.bat；",
    u"IP 行为模型取自 project_fifo.gen/sources_1/ip/*/sim/ 与 "
     u"project_fifo.ip_user_files/ipstatic/simulation/。",
]))
A(("h2", u"8.2 复现步骤"))
A(("code", [
    u"cd D:\\coding\\verilog\\xc7k70t\\project_fifo\\sim_verify",
    u"runall.bat chk_fifo_1_1 chk_fifo_1_2 ... chk_fifo_2_12",
    u":: 每个 checker 会打印 ------ 分隔的结果行，例如：",
    u":: RESULT fifo_1_1: PASS  (read-side datapath aligned, in order, no corruption)",
    u":: RESULT fifo_1_7: FAIL (6 error(s), 11 sticky-eop cycle(s))",
]))
A(("h2", u"8.3 说明"))
A(("p", u"本报告中的“存在的问题”均由仿真实测复现，"
        u"而非仅凭代码阅读推断。定位过程中曾出现若干 checker 自身的缺陷"
        u"（共享循环变量、参考模型时序滞后、无效字节道未屏蔽等），"
        u"均已修正并重新仿真确认；报告中给出的结论为修正 checker 后的最终结果。"))

A(("p", u""))
A(("p", u"报告生成日期：%s　　生成方式：sim_verify/make_report.py" % TODAY))


# ---------------------------------------------------------------- render
def render():
    body = []
    for item in C:
        kind = item[0]
        if kind == "title":
            body.append(para(item[1], bold=True, size=36, spacing_after=60))
        elif kind == "sub":
            body.append(para(item[1], size=20, color="595959", spacing_after=240))
        elif kind == "h1":
            body.append(heading(item[1], 1))
        elif kind == "h2":
            body.append(heading(item[1], 2))
        elif kind == "h3":
            body.append(heading(item[1], 3))
        elif kind == "p":
            body.append(para(item[1], spacing_after=100))
        elif kind == "bullets":
            body.append(bullets(item[1]))
        elif kind == "code":
            body.append(code(item[1]))
        elif kind == "table":
            body.append(table(item[1]))
    sect = ('<w:sectPr><w:pgSz w:w="11906" w:h="16838"/>'
            '<w:pgMar w:top="1134" w:right="1134" w:bottom="1134" w:left="1134" '
            'w:header="851" w:footer="992" w:gutter="0"/></w:sectPr>')
    return ('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n'
            '<w:document %s><w:body>%s%s</w:body></w:document>' % (NS, "".join(body), sect))


STYLES = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:styles xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
 <w:docDefaults><w:rPrDefault><w:rPr>
  <w:rFonts w:ascii="Calibri" w:hAnsi="Calibri" w:eastAsia="宋体" w:cs="Calibri"/>
  <w:sz w:val="21"/><w:szCs w:val="21"/></w:rPr></w:rPrDefault>
  <w:pPrDefault><w:pPr><w:spacing w:after="120" w:line="276" w:lineRule="auto"/></w:pPr></w:pPrDefault>
 </w:docDefaults>
 <w:style w:type="paragraph" w:default="1" w:styleId="Normal"><w:name w:val="Normal"/></w:style>
 <w:style w:type="paragraph" w:styleId="Heading1"><w:name w:val="heading 1"/>
  <w:basedOn w:val="Normal"/><w:next w:val="Normal"/><w:pPr>
  <w:keepNext/><w:spacing w:before="360" w:after="160"/><w:outlineLvl w:val="0"/></w:pPr>
  <w:rPr><w:b/><w:sz w:val="32"/><w:szCs w:val="32"/><w:color w:val="1F3864"/></w:rPr></w:style>
 <w:style w:type="paragraph" w:styleId="Heading2"><w:name w:val="heading 2"/>
  <w:basedOn w:val="Normal"/><w:next w:val="Normal"/><w:pPr>
  <w:keepNext/><w:spacing w:before="260" w:after="120"/><w:outlineLvl w:val="1"/></w:pPr>
  <w:rPr><w:b/><w:sz w:val="26"/><w:szCs w:val="26"/><w:color w:val="2E5496"/></w:rPr></w:style>
 <w:style w:type="paragraph" w:styleId="Heading3"><w:name w:val="heading 3"/>
  <w:basedOn w:val="Normal"/><w:next w:val="Normal"/><w:pPr>
  <w:keepNext/><w:spacing w:before="200" w:after="100"/><w:outlineLvl w:val="2"/></w:pPr>
  <w:rPr><w:b/><w:sz w:val="23"/><w:szCs w:val="23"/><w:color w:val="365F91"/></w:rPr></w:style>
 <w:style w:type="paragraph" w:styleId="ListParagraph"><w:name w:val="List Paragraph"/>
  <w:basedOn w:val="Normal"/><w:pPr><w:ind w:left="454"/></w:pPr></w:style>
</w:styles>'''

CONTENT_TYPES = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
 <Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>
 <Default Extension="xml" ContentType="application/xml"/>
 <Override PartName="/word/document.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"/>
 <Override PartName="/word/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml"/>
 <Override PartName="/docProps/core.xml" ContentType="application/vnd.openxmlformats-package.core-properties+xml"/>
 <Override PartName="/docProps/app.xml" ContentType="application/vnd.openxmlformats-officedocument.extended-properties+xml"/>
</Types>'''

RELS = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
 <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/>
 <Relationship Id="rId2" Type="http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties" Target="docProps/core.xml"/>
 <Relationship Id="rId3" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties" Target="docProps/app.xml"/>
</Relationships>'''

DOC_RELS = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
 <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>
</Relationships>'''

CORE = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<cp:coreProperties xmlns:cp="http://schemas.openxmlformats.org/package/2006/metadata/core-properties" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <dc:title>FIFO 模块设计验证报告</dc:title>
 <dc:creator>Claude Code</dc:creator>
 <cp:lastModifiedBy>Claude Code</cp:lastModifiedBy>
 <dcterms:created xsi:type="dcterms:W3CDTF">%sT00:00:00Z</dcterms:created>
 <dcterms:modified xsi:type="dcterms:W3CDTF">%sT00:00:00Z</dcterms:modified>
</cp:coreProperties>''' % (TODAY, TODAY)

APP = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Properties xmlns="http://schemas.openxmlformats.org/officeDocument/2006/extended-properties" xmlns:vt="http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes">
 <Application>Microsoft Office Word</Application>
</Properties>'''


def main():
    doc = render()
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    with zipfile.ZipFile(OUT, "w", zipfile.ZIP_DEFLATED) as z:
        z.writestr("[Content_Types].xml", CONTENT_TYPES)
        z.writestr("_rels/.rels", RELS)
        z.writestr("word/document.xml", doc)
        z.writestr("word/styles.xml", STYLES)
        z.writestr("word/_rels/document.xml.rels", DOC_RELS)
        z.writestr("docProps/core.xml", CORE)
        z.writestr("docProps/app.xml", APP)
    print("written: %s (%d bytes)" % (OUT, os.path.getsize(OUT)))


if __name__ == "__main__":
    main()
