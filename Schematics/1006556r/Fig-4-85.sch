EESchema Schematic File Version 4
LIBS:module-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 24
Title "BLOCK I LOGIC FLOW S, MODULE A21, DRAWING 1006556"
Date "2018-11-25"
Rev "Draft"
Comp ""
Comment1 "Modules A21"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1725 7150 0    140  Input ~ 28
+3VDC
Text HLabel 1725 7425 0    140  Input ~ 28
0VDC
$Comp
L D3NOR-+3VDC-0VDC-nd1021041:D3NOR-+3VDC-0VDC-nd1021041-ABC-___ U1302
U 1 1 5BFB3F8E
P 6050 1975
F 0 "U1302" H 6050 2300 140 0001 C CNB
F 1 "D3NOR-+3VDC-0VDC-nd1021041-ABC-___" H 6050 2400 140 0001 C CNN
F 2 "" H 6050 2450 140 0001 C CNN
F 3 "" H 6050 2450 140 0001 C CNN
F 4 "60063" H 6050 1975 140 0000 C CNB "Location"
	1    6050 1975
	1    0    0    -1  
$EndComp
$Comp
L AGC_DSKY:ConnectorGeneric J1
U 128 1 5BFB3F8F
P 1925 1975
F 0 "J1" H 1925 2300 140 0001 C CNN
F 1 "ConnectorGeneric" H 1925 2400 140 0001 C CNN
F 2 "" H 1925 2450 140 0001 C CNN
F 3 "" H 1925 2450 140 0001 C CNN
F 4 "CDUADR/" H 1125 1900 140 0000 C BNB "Caption"
	128  1925 1975
	1    0    0    -1  
$EndComp
$Comp
L AGC_DSKY:ConnectorGeneric J1
U 138 1 5BFB3F91
P 4700 2325
F 0 "J1" H 4700 2650 140 0001 C CNN
F 1 "ConnectorGeneric" H 4700 2750 140 0001 C CNN
F 2 "" H 4700 2800 140 0001 C CNN
F 3 "" H 4700 2800 140 0001 C CNN
F 4 "PINC/" H 4075 2250 140 0000 C BNB "Caption"
	138  4700 2325
	1    0    0    -1  
$EndComp
$Comp
L D3NOR-+3VDC-0VDC-nd1021041:D3NOR-+3VDC-0VDC-nd1021041-_B_-___ U1301
U 1 1 5BFB3F93
P 3150 1975
F 0 "U1301" H 3150 2300 140 0001 C CNB
F 1 "D3NOR-+3VDC-0VDC-nd1021041-_B_-___" H 3150 2400 140 0001 C CNN
F 2 "" H 3150 2450 140 0001 C CNN
F 3 "" H 3150 2450 140 0001 C CNN
F 4 "60064" H 3150 1975 140 0000 C CNB "Location"
	1    3150 1975
	1    0    0    1   
$EndComp
$Comp
L AGC_DSKY:ConnectorGeneric J1
U 134 1 5BFB3F96
P 10075 3150
F 0 "J1" H 10075 3475 140 0001 C CNN
F 1 "ConnectorGeneric" H 10075 3575 140 0001 C CNN
F 2 "" H 10075 3625 140 0001 C CNN
F 3 "" H 10075 3625 140 0001 C CNN
F 4 "A21_134_A24_90" H 10075 3375 140 0000 C BNB "Caption"
	134  10075 3150
	-1   0    0    1   
$EndComp
$Comp
L AGC_DSKY:ConnectorGeneric J1
U 124 1 5BFB3F99
P 5550 5425
F 0 "J1" H 5550 5750 140 0001 C CNN
F 1 "ConnectorGeneric" H 5550 5850 140 0001 C CNN
F 2 "" H 5550 5900 140 0001 C CNN
F 3 "" H 5550 5900 140 0001 C CNN
F 4 "A21_123_A22_129" H 4250 5350 140 0000 C BNB "Caption"
	124  5550 5425
	-1   0    0    1   
$EndComp
$Comp
L D3NOR-NC-0VDC-expander-nd1021041:D3NOR-NC-0VDC-expander-nd1021041-ABC-___ U1303
U 1 1 5BFB3F9D
P 8650 3150
F 0 "U1303" H 8650 3475 140 0001 C CNB
F 1 "D3NOR-NC-0VDC-expander-nd1021041-ABC-___" H 8650 3575 140 0001 C CNN
F 2 "" H 8650 3625 140 0001 C CNN
F 3 "" H 8650 3625 140 0001 C CNN
F 4 "60417" H 8575 3150 130 0000 C CNB "Location"
	1    8650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3150 8050 3150
Wire Wire Line
	9450 3150 9800 3150
Wire Wire Line
	4050 1975 5450 1975
Wire Wire Line
	6950 1975 7475 1975
Wire Wire Line
	7475 1975 7475 2800
Wire Wire Line
	7475 2800 8025 2800
Wire Wire Line
	8025 3500 7475 3500
Wire Wire Line
	7475 3500 7475 4325
Wire Wire Line
	7475 4325 6975 4325
Wire Wire Line
	2550 1975 2200 1975
Wire Wire Line
	5425 2325 4975 2325
Wire Wire Line
	4800 5425 5275 5425
Text HLabel 6950 3150 0    140  Input ~ 28
g60068
Text HLabel 6975 4325 0    140  Input ~ 28
g60073
Text HLabel 4800 5425 0    140  Input ~ 28
g60074
Text HLabel 5050 1625 0    140  Input ~ 28
T04_
Wire Wire Line
	5425 1625 5050 1625
$EndSCHEMATC