
u
Command: %s
53*	vivadotcl2D
0synth_design -top top -part xcvu9p-fsgd2104-2L-e2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xcvu9p2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xcvu9p2default:defaultZ17-349h px� 
[
Loading part %s157*device2(
xcvu9p-fsgd2104-2L-e2default:defaultZ21-403h px� 
�
,redeclaration of ansi port %s is not allowed2611*oasys2
out2default:default2E
//home/centos/Documents/CWM-ECAD/Ex9/Multiplex.v2default:default2
322default:default8@Z8-2611h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 2560.480 ; gain = 177.652 ; free physical = 9661 ; free virtual = 33304
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUFDS2default:default2
 2default:default2M
7/opt/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
329522default:default8@Z8-6157h px� 
g
%s
*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter DIFF_TERM bound to: FALSE - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter DQS_BIAS bound to: FALSE - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter IFD_DELAY_VALUE bound to: AUTO - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFDS2default:default2
 2default:default2
12default:default2
12default:default2M
7/opt/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
329522default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2M
7/opt/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
10752default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
22default:default2
12default:default2M
7/opt/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
10752default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LowerTop2default:default2
 2default:default2D
./home/centos/Documents/CWM-ECAD/Ex9/LowerTop.v2default:default2
272default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
heaterControl2default:default2
 2default:default2K
5/home/centos/Documents/CWM-ECAD/Ex9/AirConditioning.v2default:default2
182default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter CoolOn bound to: 22 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter HeatOn bound to: 18 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter AimingFor bound to: 20 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
heaterControl2default:default2
 2default:default2
32default:default2
12default:default2K
5/home/centos/Documents/CWM-ECAD/Ex9/AirConditioning.v2default:default2
182default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
lightsSelector2default:default2
 2default:default2H
2/home/centos/Documents/CWM-ECAD/Ex9/lightsSystem.v2default:default2
212default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2#
dynamicLighting2default:default2
 2default:default2D
./home/centos/Documents/CWM-ECAD/Ex9/LEDState.v2default:default2
242default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
dynamicLighting2default:default2
 2default:default2
42default:default2
12default:default2D
./home/centos/Documents/CWM-ECAD/Ex9/LEDState.v2default:default2
242default:default8@Z8-6155h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
LEDState2default:default2#
dynamicLighting2default:default2
62default:default2
52default:default2H
2/home/centos/Documents/CWM-ECAD/Ex9/lightsSystem.v2default:default2
382default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2#
colourConverter2default:default2
 2default:default2E
//home/centos/Documents/CWM-ECAD/Ex9/ColSelect.v2default:default2
412default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
ColourLookUp2default:default2
 2default:default2�
�/home/centos/Documents/CWM-ECAD/Ex9/Ex8.runs/synth_1/.Xil/Vivado-17183-ip-172-31-12-209.eu-west-2.compute.internal/realtime/ColourLookUp_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
ColourLookUp2default:default2
 2default:default2
52default:default2
12default:default2�
�/home/centos/Documents/CWM-ECAD/Ex9/Ex8.runs/synth_1/.Xil/Vivado-17183-ip-172-31-12-209.eu-west-2.compute.internal/realtime/ColourLookUp_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
colourConverter2default:default2
 2default:default2
62default:default2
12default:default2E
//home/centos/Documents/CWM-ECAD/Ex9/ColSelect.v2default:default2
412default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
multiplexer2default:default2
 2default:default2E
//home/centos/Documents/CWM-ECAD/Ex9/Multiplex.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
multiplexer2default:default2
 2default:default2
72default:default2
12default:default2E
//home/centos/Documents/CWM-ECAD/Ex9/Multiplex.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
lightsSelector2default:default2
 2default:default2
82default:default2
12default:default2H
2/home/centos/Documents/CWM-ECAD/Ex9/lightsSystem.v2default:default2
212default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LowerTop2default:default2
 2default:default2
92default:default2
12default:default2D
./home/centos/Documents/CWM-ECAD/Ex9/LowerTop.v2default:default2
272default:default8@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_R02default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
292default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_R12default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
292default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_R22default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
292default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_R32default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
292default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_R42default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
302default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_R52default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
302default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_R62default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
302default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_R72default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
302default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_G02default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
322default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_G12default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
322default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_G22default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
322default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_G32default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
322default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_G42default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
332default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_G52default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
332default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_G62default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
332default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_G72default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
332default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_B02default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
352default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_B12default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
352default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_B22default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
352default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_B32default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
352default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_B42default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
362default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_B52default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
362default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_B62default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
362default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
lightsOut_B72default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
362default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
rst2default:default2
top2default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
622default:default8@Z8-3848h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
102default:default2
12default:default2?
)/home/centos/Documents/CWM-ECAD/Ex9/top.v2default:default2
32default:default8@Z8-6155h px� 
�
!design %s has unconnected port %s3331*oasys2#
dynamicLighting2default:default2
sysOn2default:defaultZ8-3331h px� 
w
!design %s has unconnected port %s3331*oasys2
top2default:default2
rst_n2default:defaultZ8-3331h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:12 . Memory (MB): peak = 2598.359 ; gain = 215.531 ; free physical = 9698 ; free virtual = 33341
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:13 . Memory (MB): peak = 2613.199 ; gain = 230.371 ; free physical = 9692 ; free virtual = 33335
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:13 . Memory (MB): peak = 2613.199 ; gain = 230.371 ; free physical = 9692 ; free virtual = 33335
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2624.1052default:default2
0.0002default:default2
96882default:default2
333312default:defaultZ17-722h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
22default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
o/home/centos/Documents/CWM-ECAD/Ex9/Ex8.srcs/sources_1/ip/ColourLookUp/ColourLookUp/ColourLookUp_in_context.xdc2default:default2H
2LowerTop/lightsSystem/ColSelect/your_instance_name	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
o/home/centos/Documents/CWM-ECAD/Ex9/Ex8.srcs/sources_1/ip/ColourLookUp/ColourLookUp/ColourLookUp_in_context.xdc2default:default2H
2LowerTop/lightsSystem/ColSelect/your_instance_name	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2I
3/home/centos/Documents/CWM-ECAD/Ex9/constraints.xdc2default:default8Z20-179h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
create_clock: 2default:default2
00:00:042default:default2
00:00:052default:default2
2752.7462default:default2
2.9652default:default2
95332default:default2
331762default:defaultZ17-722h px� 
�
Finished Parsing XDC File [%s]
178*designutils2I
3/home/centos/Documents/CWM-ECAD/Ex9/constraints.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2G
3/home/centos/Documents/CWM-ECAD/Ex9/constraints.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2752.7462default:default2
0.0002default:default2
95332default:default2
331762default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
  A total of 2 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUFDS => IBUFDS (DIFFINBUF, IBUFCTRL): 1 instance 
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2752.7462default:default2
0.0002default:default2
95332default:default2
331762default:defaultZ17-722h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2F
2LowerTop/lightsSystem/ColSelect/your_instance_name2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:42 . Memory (MB): peak = 2752.746 ; gain = 369.918 ; free physical = 9672 ; free virtual = 33315
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Loading part: xcvu9p-fsgd2104-2L-e
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:42 . Memory (MB): peak = 2752.746 ; gain = 369.918 ; free physical = 9672 ; free virtual = 33315
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:42 . Memory (MB): peak = 2752.746 ; gain = 369.918 ; free physical = 9672 ; free virtual = 33315
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2

colour_reg2default:default2#
dynamicLighting2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
colour2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                              000 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                              001 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                              010 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                              011 |                              100
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE3 |                              100 |                              101
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE4 |                              101 |                              110
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

colour_reg2default:default2

sequential2default:default2#
dynamicLighting2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:43 . Memory (MB): peak = 2752.750 ; gain = 369.922 ; free physical = 9664 ; free virtual = 33307
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
B
%s
*synth2*
Module heaterControl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
D
%s
*synth2,
Module dynamicLighting 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
D
%s
*synth2,
Module colourConverter 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
@
%s
*synth2(
Module multiplexer 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2p
\Part Resources:
DSPs: 6840 (col length:120)
BRAMs: 4320 (col length: RAMB18 360 RAMB36 180)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
w
!design %s has unconnected port %s3331*oasys2
top2default:default2
rst_n2default:defaultZ8-3331h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:44 . Memory (MB): peak = 2752.750 ; gain = 369.922 ; free physical = 9653 ; free virtual = 33300
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:03 ; elapsed = 00:02:54 . Memory (MB): peak = 3101.051 ; gain = 718.223 ; free physical = 9140 ; free virtual = 32786
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:01:03 ; elapsed = 00:02:55 . Memory (MB): peak = 3121.078 ; gain = 738.250 ; free physical = 9136 ; free virtual = 32783
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:01:03 ; elapsed = 00:02:55 . Memory (MB): peak = 3129.086 ; gain = 746.258 ; free physical = 9136 ; free virtual = 32783
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:01:07 ; elapsed = 00:02:58 . Memory (MB): peak = 3129.090 ; gain = 746.262 ; free physical = 9136 ; free virtual = 32782
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:07 ; elapsed = 00:02:58 . Memory (MB): peak = 3129.090 ; gain = 746.262 ; free physical = 9136 ; free virtual = 32782
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:07 ; elapsed = 00:02:58 . Memory (MB): peak = 3129.090 ; gain = 746.262 ; free physical = 9136 ; free virtual = 32782
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:07 ; elapsed = 00:02:58 . Memory (MB): peak = 3129.090 ; gain = 746.262 ; free physical = 9136 ; free virtual = 32782
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:07 ; elapsed = 00:02:58 . Memory (MB): peak = 3129.090 ; gain = 746.262 ; free physical = 9136 ; free virtual = 32782
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:07 ; elapsed = 00:02:58 . Memory (MB): peak = 3129.090 ; gain = 746.262 ; free physical = 9136 ; free virtual = 32782
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |ColourLookUp  |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
J
%s*synth22
+------+-------------+------+
2default:defaulth px� 
J
%s*synth22
|      |Cell         |Count |
2default:defaulth px� 
J
%s*synth22
+------+-------------+------+
2default:defaulth px� 
J
%s*synth22
|1     |ColourLookUp |     1|
2default:defaulth px� 
J
%s*synth22
|2     |BUFG         |     1|
2default:defaulth px� 
J
%s*synth22
|3     |LUT1         |     1|
2default:defaulth px� 
J
%s*synth22
|4     |LUT2         |     2|
2default:defaulth px� 
J
%s*synth22
|5     |LUT3         |     8|
2default:defaulth px� 
J
%s*synth22
|6     |LUT4         |    34|
2default:defaulth px� 
J
%s*synth22
|7     |LUT5         |     2|
2default:defaulth px� 
J
%s*synth22
|8     |LUT6         |    15|
2default:defaulth px� 
J
%s*synth22
|9     |FDRE         |    35|
2default:defaulth px� 
J
%s*synth22
|10    |IBUF         |    16|
2default:defaulth px� 
J
%s*synth22
|11    |IBUFDS       |     1|
2default:defaulth px� 
J
%s*synth22
|12    |OBUF         |    26|
2default:defaulth px� 
J
%s*synth22
+------+-------------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+--------------------+----------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|      |Instance            |Module          |Cells |
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+--------------------+----------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|1     |top                 |                |   165|
2default:defaulth p
x
� 
b
%s
*synth2J
6|2     |  LowerTop          |LowerTop        |   121|
2default:defaulth p
x
� 
b
%s
*synth2J
6|3     |    AirConditioning |heaterControl   |     8|
2default:defaulth p
x
� 
b
%s
*synth2J
6|4     |    lightsSystem    |lightsSelector  |   113|
2default:defaulth p
x
� 
b
%s
*synth2J
6|5     |      ColSelect     |colourConverter |    57|
2default:defaulth p
x
� 
b
%s
*synth2J
6|6     |      LEDState      |dynamicLighting |    32|
2default:defaulth p
x
� 
b
%s
*synth2J
6|7     |      Multiplex     |multiplexer     |    24|
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+--------------------+----------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:07 ; elapsed = 00:02:58 . Memory (MB): peak = 3129.090 ; gain = 746.262 ; free physical = 9136 ; free virtual = 32782
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:57 ; elapsed = 00:02:38 . Memory (MB): peak = 3129.090 ; gain = 606.715 ; free physical = 9163 ; free virtual = 32810
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:07 ; elapsed = 00:02:58 . Memory (MB): peak = 3129.094 ; gain = 746.262 ; free physical = 9163 ; free virtual = 32810
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3135.0272default:default2
0.0002default:default2
91582default:default2
328052default:defaultZ17-722h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
182default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3196.7232default:default2
0.0002default:default2
91432default:default2
327902default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 18 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUF => IBUF (IBUFCTRL, INBUF): 16 instances
  IBUFDS => IBUFDS (DIFFINBUF, IBUFCTRL): 1 instance 
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
382default:default2
312default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:01:332default:default2
00:04:002default:default2
3196.7232default:default2
1644.5472default:default2
92762default:default2
329222default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3196.7232default:default2
0.0002default:default2
92762default:default2
329222default:defaultZ17-722h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2P
</home/centos/Documents/CWM-ECAD/Ex9/Ex8.runs/synth_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jun 11 14:37:40 20212default:defaultZ17-206h px� 


End Record