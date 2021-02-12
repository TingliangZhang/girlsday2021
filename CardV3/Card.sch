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
L Device:LED D1
U 1 1 6016D192
P 5800 2950
F 0 "D1" H 5793 3167 50  0000 C CNN
F 1 "LED" H 5793 3076 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5800 2950 50  0001 C CNN
F 3 "~" H 5800 2950 50  0001 C CNN
	1    5800 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:Antenna_Loop AE1
U 1 1 601640C9
P 6350 3000
F 0 "AE1" H 6580 3014 50  0000 L CNN
F 1 "Antenna_Loop" H 6580 2923 50  0000 L CNN
F 2 "Card:NFC-Antenna_6_79.24x47.62_0.6x0.6mm" H 6350 3000 50  0001 C CNN
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
P 6000 2950
F 0 "#PWR0102" H 6000 2700 50  0001 C CNN
F 1 "GND" H 6005 2777 50  0000 C CNN
F 2 "" H 6000 2950 50  0001 C CNN
F 3 "" H 6000 2950 50  0001 C CNN
	1    6000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2800 6650 2800
$Comp
L power:+3.3V #PWR0103
U 1 1 602629EC
P 6550 2800
F 0 "#PWR0103" H 6550 2650 50  0001 C CNN
F 1 "+3.3V" H 6565 2973 50  0000 C CNN
F 2 "" H 6550 2800 50  0001 C CNN
F 3 "" H 6550 2800 50  0001 C CNN
	1    6550 2800
	1    0    0    -1  
$EndComp
NoConn ~ 7350 2800
NoConn ~ 7350 2900
NoConn ~ 7350 3000
NoConn ~ 7350 3100
$Comp
L Device:R R1
U 1 1 60268E56
P 5450 2950
F 0 "R1" V 5243 2950 50  0000 C CNN
F 1 "R" V 5334 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5380 2950 50  0001 C CNN
F 3 "~" H 5450 2950 50  0001 C CNN
	1    5450 2950
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 602649AE
P 5250 2950
F 0 "#PWR0104" H 5250 2800 50  0001 C CNN
F 1 "+3.3V" H 5265 3123 50  0000 C CNN
F 2 "" H 5250 2950 50  0001 C CNN
F 3 "" H 5250 2950 50  0001 C CNN
	1    5250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2950 5300 2950
Wire Wire Line
	5600 2950 5650 2950
Wire Wire Line
	5950 2950 6000 2950
$Comp
L MCU_Microchip_ATmega:ATmega2560-16AU U3
U 1 1 6026EFA2
P 1950 3800
F 0 "U3" H 1950 811 50  0000 C CNN
F 1 "P4080-BGA1295" H 1950 720 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 1950 3800 50  0001 C CIN
F 3 "https://www.nxp.com/jp/products/microcontrollers-and-processors/power-architecture-processors/qoriq-platforms/p-series/qoriq-p4080-p4040-p4081-multicore-communications-processors:P4080?&tab=Documentation_Tab&linkline=Data-Sheet" H 1950 3800 50  0001 C CNN
	1    1950 3800
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Xilinx:XC3S200AN-FT256 U2
U 1 1 60273413
P -2200 4050
F 0 "U2" H -2200 10131 50  0000 C CNN
F 1 "P4080-BGA1295" H -2200 10040 50  0000 C CNN
F 2 "Package_BGA:BGA-256_17.0x17.0mm_Layout16x16_P1.0mm_Ball0.5mm_Pad0.4mm_NSMD" H -2150 4200 50  0001 C CNN
F 3 "https://www.nxp.com/jp/products/microcontrollers-and-processors/power-architecture-processors/qoriq-platforms/p-series/qoriq-p4080-p4040-p4081-multicore-communications-processors:P4080?&tab=Documentation_Tab&linkline=Data-Sheet" H -2150 4200 50  0001 C CNN
	1    -2200 4050
	1    0    0    -1  
$EndComp
$Comp
L Card:M24LR04E-R U1
U 1 1 6016B11D
P 7000 2950
F 0 "U1" H 7000 3365 50  0000 C CNN
F 1 "M24LR04E-R" H 7000 3274 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 7000 2800 50  0001 C CNN
F 3 "" H 7000 2800 50  0001 C CNN
	1    7000 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
