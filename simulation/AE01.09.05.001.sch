EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PS2501A optocoupling output BJT transistor"
Date "2020-03-20"
Rev "1"
Comp "astroelectronic@"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AE01.17.05.000:PS2501A U1
U 1 1 5E753167
P 5800 3900
F 0 "U1" H 5800 4225 50  0000 C CNN
F 1 "PS2501A" H 5800 4134 50  0000 C CNN
F 2 "" H 5600 3700 50  0001 L BIN
F 3 "" H 5600 4100 50  0001 L BNN
F 4 "X" H 5800 3900 50  0001 C CNN "Spice_Primitive"
F 5 "PS2501A" H 5800 3900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5800 3900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "models/ps2501a.lib" H 5800 3900 50  0001 C CNN "Spice_Lib_File"
	1    5800 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E753766
P 5300 4350
F 0 "R2" H 5370 4396 50  0000 L CNN
F 1 "{Rk}" H 5370 4305 50  0000 L CNN
F 2 "" V 5230 4350 50  0001 C CNN
F 3 "~" H 5300 4350 50  0001 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4000 5300 4000
Wire Wire Line
	5300 4000 5300 4200
Wire Wire Line
	5300 4500 5300 4700
$Comp
L pspice:0 #GND03
U 1 1 5E755AE7
P 5300 4700
F 0 "#GND03" H 5300 4600 50  0001 C CNN
F 1 "0" H 5300 4577 50  0000 C CNN
F 2 "" H 5300 4700 50  0001 C CNN
F 3 "~" H 5300 4700 50  0001 C CNN
	1    5300 4700
	1    0    0    -1  
$EndComp
Text Label 5350 4000 0    50   ~ 0
K
$Comp
L Simulation_SPICE:VPULSE V1
U 1 1 5E755EEF
P 3000 4200
F 0 "V1" H 3130 4246 50  0000 L CNN
F 1 "PULSE(0 {VPUL} {delay} {tr} {tf} {duty} {cycle})" H 3130 4155 50  0000 L CNN
F 2 "" H 3000 4200 50  0001 C CNN
F 3 "~" H 3000 4200 50  0001 C CNN
F 4 "Y" H 3000 4200 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3000 4200 50  0001 L CNN "Spice_Primitive"
	1    3000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3800 3000 3800
Wire Wire Line
	3000 3800 3000 4000
Wire Wire Line
	3000 4400 3000 4600
$Comp
L pspice:0 #GND02
U 1 1 5E75755B
P 3000 4600
F 0 "#GND02" H 3000 4500 50  0001 C CNN
F 1 "0" H 3000 4477 50  0000 C CNN
F 2 "" H 3000 4600 50  0001 C CNN
F 3 "~" H 3000 4600 50  0001 C CNN
	1    3000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4000 6300 4000
Wire Wire Line
	6300 4000 6300 4200
$Comp
L pspice:0 #GND01
U 1 1 5E757905
P 6300 4200
F 0 "#GND01" H 6300 4100 50  0001 C CNN
F 1 "0" H 6300 4077 50  0000 C CNN
F 2 "" H 6300 4200 50  0001 C CNN
F 3 "~" H 6300 4200 50  0001 C CNN
	1    6300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3800 6300 3800
Wire Wire Line
	6300 3800 6300 3600
Connection ~ 6300 3800
Wire Wire Line
	6300 3800 6700 3800
$Comp
L Device:R R1
U 1 1 5E757CA1
P 6300 3450
F 0 "R1" H 6370 3496 50  0000 L CNN
F 1 "{Rc}" H 6370 3405 50  0000 L CNN
F 2 "" V 6230 3450 50  0001 C CNN
F 3 "~" H 6300 3450 50  0001 C CNN
	1    6300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3300 6300 3100
Text Label 6400 3800 0    50   ~ 0
OUT
Text Label 5000 3800 0    50   ~ 0
IN
$Comp
L power:VDD #PWR01
U 1 1 5E75A675
P 6300 3100
F 0 "#PWR01" H 6300 2950 50  0001 C CNN
F 1 "VDD" H 6317 3273 50  0000 C CNN
F 2 "" H 6300 3100 50  0001 C CNN
F 3 "" H 6300 3100 50  0001 C CNN
	1    6300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3800 3000 3600
Connection ~ 3000 3800
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E75C5DF
P 3000 3600
F 0 "#FLG01" H 3000 3675 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 3773 50  0000 C CNN
F 2 "" H 3000 3600 50  0001 C CNN
F 3 "~" H 3000 3600 50  0001 C CNN
	1    3000 3600
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VDC V2
U 1 1 5E75CD51
P 4500 6750
F 0 "V2" H 4630 6796 50  0000 L CNN
F 1 "{VISO}" H 4630 6705 50  0000 L CNN
F 2 "" H 4500 6750 50  0001 C CNN
F 3 "~" H 4500 6750 50  0001 C CNN
F 4 "Y" H 4500 6750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 4500 6750 50  0001 L CNN "Spice_Primitive"
	1    4500 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6950 4500 7150
Wire Wire Line
	4500 6550 4500 6350
$Comp
L pspice:0 #GND05
U 1 1 5E75E063
P 4500 7150
F 0 "#GND05" H 4500 7050 50  0001 C CNN
F 1 "0" H 4500 7027 50  0000 C CNN
F 2 "" H 4500 7150 50  0001 C CNN
F 3 "~" H 4500 7150 50  0001 C CNN
	1    4500 7150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02
U 1 1 5E75E77D
P 4500 6350
F 0 "#PWR02" H 4500 6200 50  0001 C CNN
F 1 "VDD" H 4517 6523 50  0000 C CNN
F 2 "" H 4500 6350 50  0001 C CNN
F 3 "" H 4500 6350 50  0001 C CNN
	1    4500 6350
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR03
U 1 1 5E75F26E
P 5400 6750
F 0 "#PWR03" H 5400 6600 50  0001 C CNN
F 1 "VDD" H 5417 6923 50  0000 C CNN
F 2 "" H 5400 6750 50  0001 C CNN
F 3 "" H 5400 6750 50  0001 C CNN
	1    5400 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6750 5400 6950
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5E75FCFB
P 5400 6950
F 0 "#FLG03" H 5400 7025 50  0001 C CNN
F 1 "PWR_FLAG" H 5400 7123 50  0000 C CNN
F 2 "" H 5400 6950 50  0001 C CNN
F 3 "~" H 5400 6950 50  0001 C CNN
	1    5400 6950
	-1   0    0    1   
$EndComp
$Comp
L pspice:0 #GND04
U 1 1 5E760B87
P 5850 6950
F 0 "#GND04" H 5850 6850 50  0001 C CNN
F 1 "0" H 5850 6827 50  0000 C CNN
F 2 "" H 5850 6950 50  0001 C CNN
F 3 "~" H 5850 6950 50  0001 C CNN
	1    5850 6950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5E7613F6
P 5850 6750
F 0 "#FLG02" H 5850 6825 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 6923 50  0000 C CNN
F 2 "" H 5850 6750 50  0001 C CNN
F 3 "~" H 5850 6750 50  0001 C CNN
	1    5850 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6750 5850 6950
$EndSCHEMATC
