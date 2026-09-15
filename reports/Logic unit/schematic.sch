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
module new logic_unit work:logic_unit:NOFILE -nosplit
load symbol RTL_AND work AND pinBus I0 input [3:0] pinBus I1 input [3:0] pinBus O output [3:0] fillcolor 1
load symbol RTL_OR work OR pinBus I0 input [3:0] pinBus I1 input [3:0] pinBus O output [3:0] fillcolor 1
load symbol RTL_INV0 work INV pinBus I0 input [3:0] pinBus O output [3:0] fillcolor 1
load symbol RTL_XOR work XOR pinBus I0 input [3:0] pinBus I1 input [3:0] pinBus O output [3:0] fillcolor 1
load symbol RTL_MUX work MUX pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus I2 input.left [3:0] pinBus I3 input.left [3:0] pinBus I4 input.left [3:0] pinBus I5 input.left [3:0] pinBus I6 input.left [3:0] pinBus O output.right [3:0] pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_EQ work RTL(=) pin O output.right pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] fillcolor 1
load port zero output -pg 1 -lvl 5 -x 890 -y 160
load portBus a input [3:0] -attr @name a[3:0] -pg 1 -lvl 0 -x 0 -y 40
load portBus b input [3:0] -attr @name b[3:0] -pg 1 -lvl 0 -x 0 -y 70
load portBus result output [3:0] -attr @name result[3:0] -pg 1 -lvl 5 -x 890 -y 110
load portBus sel input [2:0] -attr @name sel[2:0] -pg 1 -lvl 0 -x 0 -y 260
load inst result0_i RTL_AND work -attr @cell(#1c1f28) RTL_AND -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 1 -x 110 -y 50
load inst result0_i__0 RTL_OR work -attr @cell(#1c1f28) RTL_OR -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 1 -x 110 -y 120
load inst result0_i__1 RTL_INV0 work -attr @cell(#1c1f28) RTL_INV -pinBusAttr I0 @name I0[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 2 -x 290 -y 40
load inst result0_i__2 RTL_INV0 work -attr @cell(#1c1f28) RTL_INV -pinBusAttr I0 @name I0[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 2 -x 290 -y 120
load inst result0_i__3 RTL_XOR work -attr @cell(#1c1f28) RTL_XOR -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 1 -x 110 -y 190
load inst result0_i__4 RTL_INV0 work -attr @cell(#1c1f28) RTL_INV -pinBusAttr I0 @name I0[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 2 -x 290 -y 220
load inst result_i RTL_MUX work -attr @cell(#1c1f28) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=3'b000 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=3'b001 -pinBusAttr I2 @name I2[3:0] -pinBusAttr I2 @attr S=3'b010 -pinBusAttr I3 @name I3[3:0] -pinBusAttr I3 @attr S=3'b011 -pinBusAttr I4 @name I4[3:0] -pinBusAttr I4 @attr S=3'b100 -pinBusAttr I5 @name I5[3:0] -pinBusAttr I5 @attr S=3'b101 -pinBusAttr I6 @name I6[3:0] -pinBusAttr I6 @attr S=default -pinBusAttr O @name O[3:0] -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 600 -y 150
load inst zero_i RTL_EQ work -attr @cell(#1c1f28) RTL_EQ -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pg 1 -lvl 4 -x 790 -y 160
load net <const0> -ground -pin result_i I6[3] -pin result_i I6[2] -pin result_i I6[1] -pin result_i I6[0] -pin zero_i I1[3] -pin zero_i I1[2] -pin zero_i I1[1] -pin zero_i I1[0]
load net a[0] -attr @rip a[0] -port a[0] -pin result0_i I0[0] -pin result0_i__0 I0[0] -pin result0_i__3 I0[0]
load net a[1] -attr @rip a[1] -port a[1] -pin result0_i I0[1] -pin result0_i__0 I0[1] -pin result0_i__3 I0[1]
load net a[2] -attr @rip a[2] -port a[2] -pin result0_i I0[2] -pin result0_i__0 I0[2] -pin result0_i__3 I0[2]
load net a[3] -attr @rip a[3] -port a[3] -pin result0_i I0[3] -pin result0_i__0 I0[3] -pin result0_i__3 I0[3]
load net b[0] -attr @rip b[0] -port b[0] -pin result0_i I1[0] -pin result0_i__0 I1[0] -pin result0_i__3 I1[0]
load net b[1] -attr @rip b[1] -port b[1] -pin result0_i I1[1] -pin result0_i__0 I1[1] -pin result0_i__3 I1[1]
load net b[2] -attr @rip b[2] -port b[2] -pin result0_i I1[2] -pin result0_i__0 I1[2] -pin result0_i__3 I1[2]
load net b[3] -attr @rip b[3] -port b[3] -pin result0_i I1[3] -pin result0_i__0 I1[3] -pin result0_i__3 I1[3]
load net result0[0] -attr @rip O[0] -pin result0_i O[0] -pin result0_i__1 I0[0] -pin result_i I0[0]
load net result0[1] -attr @rip O[1] -pin result0_i O[1] -pin result0_i__1 I0[1] -pin result_i I0[1]
load net result0[2] -attr @rip O[2] -pin result0_i O[2] -pin result0_i__1 I0[2] -pin result_i I0[2]
load net result0[3] -attr @rip O[3] -pin result0_i O[3] -pin result0_i__1 I0[3] -pin result_i I0[3]
load net result0_i__0_n_0 -attr @rip O[3] -pin result0_i__0 O[3] -pin result0_i__2 I0[3] -pin result_i I1[3]
load net result0_i__0_n_1 -attr @rip O[2] -pin result0_i__0 O[2] -pin result0_i__2 I0[2] -pin result_i I1[2]
load net result0_i__0_n_2 -attr @rip O[1] -pin result0_i__0 O[1] -pin result0_i__2 I0[1] -pin result_i I1[1]
load net result0_i__0_n_3 -attr @rip O[0] -pin result0_i__0 O[0] -pin result0_i__2 I0[0] -pin result_i I1[0]
load net result0_i__1_n_0 -attr @rip O[3] -pin result0_i__1 O[3] -pin result_i I2[3]
load net result0_i__1_n_1 -attr @rip O[2] -pin result0_i__1 O[2] -pin result_i I2[2]
load net result0_i__1_n_2 -attr @rip O[1] -pin result0_i__1 O[1] -pin result_i I2[1]
load net result0_i__1_n_3 -attr @rip O[0] -pin result0_i__1 O[0] -pin result_i I2[0]
load net result0_i__2_n_0 -attr @rip O[3] -pin result0_i__2 O[3] -pin result_i I3[3]
load net result0_i__2_n_1 -attr @rip O[2] -pin result0_i__2 O[2] -pin result_i I3[2]
load net result0_i__2_n_2 -attr @rip O[1] -pin result0_i__2 O[1] -pin result_i I3[1]
load net result0_i__2_n_3 -attr @rip O[0] -pin result0_i__2 O[0] -pin result_i I3[0]
load net result0_i__3_n_0 -attr @rip O[3] -pin result0_i__3 O[3] -pin result0_i__4 I0[3] -pin result_i I4[3]
load net result0_i__3_n_1 -attr @rip O[2] -pin result0_i__3 O[2] -pin result0_i__4 I0[2] -pin result_i I4[2]
load net result0_i__3_n_2 -attr @rip O[1] -pin result0_i__3 O[1] -pin result0_i__4 I0[1] -pin result_i I4[1]
load net result0_i__3_n_3 -attr @rip O[0] -pin result0_i__3 O[0] -pin result0_i__4 I0[0] -pin result_i I4[0]
load net result0_i__4_n_0 -attr @rip O[3] -pin result0_i__4 O[3] -pin result_i I5[3]
load net result0_i__4_n_1 -attr @rip O[2] -pin result0_i__4 O[2] -pin result_i I5[2]
load net result0_i__4_n_2 -attr @rip O[1] -pin result0_i__4 O[1] -pin result_i I5[1]
load net result0_i__4_n_3 -attr @rip O[0] -pin result0_i__4 O[0] -pin result_i I5[0]
load net result[0] -attr @rip O[0] -port result[0] -pin result_i O[0] -pin zero_i I0[0]
load net result[1] -attr @rip O[1] -port result[1] -pin result_i O[1] -pin zero_i I0[1]
load net result[2] -attr @rip O[2] -port result[2] -pin result_i O[2] -pin zero_i I0[2]
load net result[3] -attr @rip O[3] -port result[3] -pin result_i O[3] -pin zero_i I0[3]
load net sel[0] -attr @rip sel[0] -pin result_i S[0] -port sel[0]
load net sel[1] -attr @rip sel[1] -pin result_i S[1] -port sel[1]
load net sel[2] -attr @rip sel[2] -pin result_i S[2] -port sel[2]
load net zero -port zero -pin zero_i O
netloc zero 1 4 1 NJ 160
load netBundle @a 4 a[3] a[2] a[1] a[0] -autobundled
netbloc @a 1 0 1 20 40n
load netBundle @b 4 b[3] b[2] b[1] b[0] -autobundled
netbloc @b 1 0 1 40 60n
load netBundle @sel 3 sel[2] sel[1] sel[0] -autobundled
netbloc @sel 1 0 3 NJ 260 NJ 260 NJ
load netBundle @result 4 result[3] result[2] result[1] result[0] -autobundled
netbloc @result 1 3 2 720 110 NJ
load netBundle @result0 4 result0[3] result0[2] result0[1] result0[0] -autobundled
netbloc @result0 1 1 2 220 80 400
load netBundle @result0_i__0_n_ 4 result0_i__0_n_0 result0_i__0_n_1 result0_i__0_n_2 result0_i__0_n_3 -autobundled
netbloc @result0_i__0_n_ 1 1 2 220 160 420
load netBundle @result0_i__1_n_ 4 result0_i__1_n_0 result0_i__1_n_1 result0_i__1_n_2 result0_i__1_n_3 -autobundled
netbloc @result0_i__1_n_ 1 2 1 440 40n
load netBundle @result0_i__2_n_ 4 result0_i__2_n_0 result0_i__2_n_1 result0_i__2_n_2 result0_i__2_n_3 -autobundled
netbloc @result0_i__2_n_ 1 2 1 400 120n
load netBundle @result0_i__3_n_ 4 result0_i__3_n_0 result0_i__3_n_1 result0_i__3_n_2 result0_i__3_n_3 -autobundled
netbloc @result0_i__3_n_ 1 1 2 220 180 440
load netBundle @result0_i__4_n_ 4 result0_i__4_n_0 result0_i__4_n_1 result0_i__4_n_2 result0_i__4_n_3 -autobundled
netbloc @result0_i__4_n_ 1 2 1 460 190n
levelinfo -pg 1 0 110 290 600 790 890
pagesize -pg 1 -db -bbox -sgen -100 0 1010 290
show
zoom 0.994526
scrollpos -93 -99
#
# initialize ictrl to current module logic_unit work:logic_unit:NOFILE
ictrl init topinfo |
