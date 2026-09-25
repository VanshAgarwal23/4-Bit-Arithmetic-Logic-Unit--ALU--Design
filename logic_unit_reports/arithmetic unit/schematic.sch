# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:24.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #575d6c
property boxcolor1 #575d6c
property boxcolor2 #000000
property boxinstcolor #1c1f28
property boxpincolor #1c1f28
property buscolor #009633
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #e5c7ff
property fillcolor2 #cde5ff
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #8bc34a
property objecthighlight0 #fe00f6
property objecthighlight1 #ffea00
property objecthighlight2 #84e413
property objecthighlight3 #1661ff
property objecthighlight4 #d9b7ff
property objecthighlight5 #ffa358
property objecthighlight6 #ff2b2b
property objecthighlight7 #00e0ff
property objecthighlight8 #c0ca33
property objecthighlight9 #b16eff
property objecthighlight10 #46a466
property objecthighlight11 #caff78
property objecthighlight12 #ab47bc
property objecthighlight13 #b4602c
property objecthighlight14 #c20f8c
property objecthighlight15 #00ffaa
property objecthighlight16 #ff9fe4
property objecthighlight17 #ff8019
property objecthighlight18 #26b3ff
property objecthighlight19 #e5551c
property overlaycolor #8bc34a
property pbuscolor #000000
property pbusnamecolor #1c1f28
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #1c1f28
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #1c1f28
property rubberbandfontsize 16
property selectattr 0
property selectionappearance 2
property selectioncolor #396cef
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new arithmetic_unit work:arithmetic_unit:NOFILE -nosplit
load symbol RTL_MUX0 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_MUX work MUX pin S input.bot pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_EQ work RTL(=) pin O output.right pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] fillcolor 1
load port carry_out output -pg 1 -lvl 4 -x 740 -y 60
load port sel input -pg 1 -lvl 0 -x 0 -y 190
load port zero output -pg 1 -lvl 4 -x 740 -y 190
load portBus a input [3:0] -attr @name a[3:0] -pg 1 -lvl 0 -x 0 -y 40
load portBus b input [3:0] -attr @name b[3:0] -pg 1 -lvl 0 -x 0 -y 70
load portBus result output [3:0] -attr @name result[3:0] -pg 1 -lvl 4 -x 740 -y 140
load inst carry_out_i RTL_MUX0 work -attr @cell(#1c1f28) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=1'b1 -pg 1 -lvl 3 -x 620 -y 60
load inst result0_i RTL_ADD work -attr @cell(#1c1f28) RTL_ADD -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 1 -x 110 -y 50
load inst result0_i__0 RTL_SUB work -attr @cell(#1c1f28) RTL_SUB -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 1 -x 110 -y 140
load inst result_i RTL_MUX work -attr @cell(#1c1f28) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=1'b1 -pinBusAttr O @name O[3:0] -pg 1 -lvl 2 -x 370 -y 130
load inst zero_i RTL_EQ work -attr @cell(#1c1f28) RTL_EQ -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pg 1 -lvl 3 -x 620 -y 190
load net <const0> -ground -pin zero_i I1[3] -pin zero_i I1[2] -pin zero_i I1[1] -pin zero_i I1[0]
load net a[0] -attr @rip a[0] -port a[0] -pin result0_i I0[0] -pin result0_i__0 I0[0]
load net a[1] -attr @rip a[1] -port a[1] -pin result0_i I0[1] -pin result0_i__0 I0[1]
load net a[2] -attr @rip a[2] -port a[2] -pin result0_i I0[2] -pin result0_i__0 I0[2]
load net a[3] -attr @rip a[3] -port a[3] -pin result0_i I0[3] -pin result0_i__0 I0[3]
load net b[0] -attr @rip b[0] -port b[0] -pin result0_i I1[0] -pin result0_i__0 I1[0]
load net b[1] -attr @rip b[1] -port b[1] -pin result0_i I1[1] -pin result0_i__0 I1[1]
load net b[2] -attr @rip b[2] -port b[2] -pin result0_i I1[2] -pin result0_i__0 I1[2]
load net b[3] -attr @rip b[3] -port b[3] -pin result0_i I1[3] -pin result0_i__0 I1[3]
load net carry_out -port carry_out -pin carry_out_i O
netloc carry_out 1 3 1 NJ 60
load net p_0_in[0] -attr @rip O[0] -pin result0_i__0 O[0] -pin result_i I1[0]
load net p_0_in[1] -attr @rip O[1] -pin result0_i__0 O[1] -pin result_i I1[1]
load net p_0_in[2] -attr @rip O[2] -pin result0_i__0 O[2] -pin result_i I1[2]
load net p_0_in[3] -attr @rip O[3] -pin result0_i__0 O[3] -pin result_i I1[3]
load net p_1_in[0] -attr @rip O[0] -pin result0_i O[0] -pin result_i I0[0]
load net p_1_in[1] -attr @rip O[1] -pin result0_i O[1] -pin result_i I0[1]
load net p_1_in[2] -attr @rip O[2] -pin result0_i O[2] -pin result_i I0[2]
load net p_1_in[3] -attr @rip O[3] -pin result0_i O[3] -pin result_i I0[3]
load net result0_i__0_n_0 -attr @rip O[4] -pin carry_out_i I1 -pin result0_i__0 O[4]
load net result0_i_n_0 -attr @rip O[4] -pin carry_out_i I0 -pin result0_i O[4]
load net result[0] -attr @rip O[0] -port result[0] -pin result_i O[0] -pin zero_i I0[0]
load net result[1] -attr @rip O[1] -port result[1] -pin result_i O[1] -pin zero_i I0[1]
load net result[2] -attr @rip O[2] -port result[2] -pin result_i O[2] -pin zero_i I0[2]
load net result[3] -attr @rip O[3] -port result[3] -pin result_i O[3] -pin zero_i I0[3]
load net sel -pin carry_out_i S -pin result_i S -port sel
netloc sel 1 0 3 NJ 190 NJ 190N 510
load net zero -port zero -pin zero_i O
netloc zero 1 3 1 NJ 190
load netBundle @a 4 a[3] a[2] a[1] a[0] -autobundled
netbloc @a 1 0 1 20 40n
load netBundle @b 4 b[3] b[2] b[1] b[0] -autobundled
netbloc @b 1 0 1 40 60n
load netBundle @result 4 result[3] result[2] result[1] result[0] -autobundled
netbloc @result 1 2 2 490 140 NJ
load netBundle @p_1_in,result0_i_n_ 5 result0_i_n_0 p_1_in[3] p_1_in[2] p_1_in[1] p_1_in[0] -autobundled
netbloc @p_1_in,result0_i_n_ 1 1 2 240 50 530
load netBundle @p_0_in,result0_i__0_n_ 5 result0_i__0_n_0 p_0_in[3] p_0_in[2] p_0_in[1] p_0_in[0] -autobundled
netbloc @p_0_in,result0_i__0_n_ 1 1 2 260 70 530
levelinfo -pg 1 0 110 370 620 740
pagesize -pg 1 -db -bbox -sgen -90 0 860 260
show
fullfit
#
# initialize ictrl to current module arithmetic_unit work:arithmetic_unit:NOFILE
ictrl init topinfo |
