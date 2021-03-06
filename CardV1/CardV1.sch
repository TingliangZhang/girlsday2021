EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CardV1:M24LR04E-R U1
U 1 1 6016B11D
P 7000 2950
F 0 "U1" H 7000 3365 50  0000 C CNN
F 1 "M24LR04E-R" H 7000 3274 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 7000 2800 50  0001 C CNN
F 3 "" H 7000 2800 50  0001 C CNN
	1    7000 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6016D192
P 6600 2500
F 0 "D1" H 6593 2717 50  0000 C CNN
F 1 "LED" H 6593 2626 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6600 2500 50  0001 C CNN
F 3 "~" H 6600 2500 50  0001 C CNN
	1    6600 2500
	0    1    1    0   
$EndComp
$Comp
L Device:Antenna_Loop AE1
U 1 1 601640C9
P 6350 3000
F 0 "AE1" H 6580 3014 50  0000 L CNN
F 1 "Antenna_Loop" H 6580 2923 50  0000 L CNN
F 2 "CardV1:NFC-Antenna_6_79.24x47.62_0.6x0.6mm" H 6350 3000 50  0001 C CNN
F 3 "~" H 6350 3000 50  0001 C CNN
	1    6350 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 2900 6650 2900
Wire Wire Line
	6550 3000 6650 3000
$Comp
L power:GND #PWR0101
U 1 1 6018EAAB
P 6650 3200
F 0 "#PWR0101" H 6650 2950 50  0001 C CNN
F 1 "GND" H 6655 3027 50  0000 C CNN
F 2 "" H 6650 3200 50  0001 C CNN
F 3 "" H 6650 3200 50  0001 C CNN
	1    6650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3200 6650 3100
$Comp
L power:GND #PWR0102
U 1 1 60194FEC
P 6600 2350
F 0 "#PWR0102" H 6600 2100 50  0001 C CNN
F 1 "GND" H 6605 2177 50  0000 C CNN
F 2 "" H 6600 2350 50  0001 C CNN
F 3 "" H 6600 2350 50  0001 C CNN
	1    6600 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 2650 6600 2800
Wire Wire Line
	6600 2800 6650 2800
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 60197C6B
P 7700 2900
F 0 "J1" H 7672 2782 50  0000 R CNN
F 1 "Conn_01x06_Male" H 7672 2873 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7700 2900 50  0001 C CNN
F 3 "~" H 7700 2900 50  0001 C CNN
	1    7700 2900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6019C567
P 7450 2550
F 0 "#PWR0104" H 7450 2300 50  0001 C CNN
F 1 "GND" H 7455 2377 50  0000 C CNN
F 2 "" H 7450 2550 50  0001 C CNN
F 3 "" H 7450 2550 50  0001 C CNN
	1    7450 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 2550 7450 2600
Wire Wire Line
	7450 2600 7500 2600
$Comp
L power:+5V #PWR0105
U 1 1 6019D8A9
P 6550 2800
F 0 "#PWR0105" H 6550 2650 50  0001 C CNN
F 1 "+5V" H 6565 2973 50  0000 C CNN
F 2 "" H 6550 2800 50  0001 C CNN
F 3 "" H 6550 2800 50  0001 C CNN
	1    6550 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2800 6600 2800
Connection ~ 6600 2800
$Comp
L power:+5V #PWR0106
U 1 1 6019F474
P 7500 2700
F 0 "#PWR0106" H 7500 2550 50  0001 C CNN
F 1 "+5V" V 7515 2828 50  0000 L CNN
F 2 "" H 7500 2700 50  0001 C CNN
F 3 "" H 7500 2700 50  0001 C CNN
	1    7500 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 2800 7500 2800
Wire Wire Line
	7350 2900 7500 2900
Wire Wire Line
	7350 3000 7500 3000
Wire Wire Line
	7350 3100 7500 3100
$Comp
L Mechanical:MountingHole H1
U 1 1 601A7CF7
P 5550 3150
F 0 "H1" H 5650 3196 50  0000 L CNN
F 1 "GithubQRCode" H 5650 3105 50  0000 L CNN
F 2 "CardV1:tingliangzhang-github-io" H 5550 3150 50  0001 C CNN
F 3 "~" H 5550 3150 50  0001 C CNN
	1    5550 3150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
