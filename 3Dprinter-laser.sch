EESchema Schematic File Version 4
LIBS:3Dprinter-laser-cache
EELAYER 26 0
EELAYER END
$Descr User 8268 5827
encoding utf-8
Sheet 1 1
Title "3D Printer 5V PWM/TTL Laser Adapter"
Date "2019-02-16"
Rev "1.0"
Comp "Pasquale 'sid' Fiorillo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C6F3111
P 1600 900
F 0 "J1" H 1520 575 50  0000 C CNN
F 1 "12/24V from 3D printer" H 2200 900 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_2-G_1x02_P5.00mm_Horizontal" H 1600 900 50  0001 C CNN
F 3 "~" H 1600 900 50  0001 C CNN
	1    1600 900 
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5C6F3182
P 2200 1050
F 0 "C1" H 2318 1096 50  0000 L CNN
F 1 "100uF" H 2318 1005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2238 900 50  0001 C CNN
F 3 "~" H 2200 1050 50  0001 C CNN
	1    2200 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5C6F31F0
P 3250 1050
F 0 "C2" H 3368 1096 50  0000 L CNN
F 1 "0.1uF" H 3368 1005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3288 900 50  0001 C CNN
F 3 "~" H 3250 1050 50  0001 C CNN
	1    3250 1050
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5C6F3313
P 2800 900
F 0 "U1" H 2800 1142 50  0000 C CNN
F 1 "L7805" H 2800 1051 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2825 750 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2800 850 50  0001 C CNN
	1    2800 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C6F35F1
P 2800 1350
F 0 "#PWR01" H 2800 1100 50  0001 C CNN
F 1 "GND" H 2805 1177 50  0000 C CNN
F 2 "" H 2800 1350 50  0001 C CNN
F 3 "" H 2800 1350 50  0001 C CNN
	1    2800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 900  3450 900 
Connection ~ 3250 900 
Text Label 3450 900  0    50   ~ 0
+5V
$Comp
L Device:R R1
U 1 1 5C6F3931
P 2850 2100
F 0 "R1" V 2643 2100 50  0000 C CNN
F 1 "2K2*" V 2734 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2780 2100 50  0001 C CNN
F 3 "~" H 2850 2100 50  0001 C CNN
	1    2850 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 1850 2300 1850
Wire Wire Line
	2300 2350 1850 2350
$Comp
L Isolator:4N35 U2
U 1 1 5C6F4BA6
P 3550 2200
F 0 "U2" H 3550 2525 50  0000 C CNN
F 1 "4N35" H 3550 2434 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 3350 2000 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 3550 2200 50  0001 L CNN
	1    3550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2450 1900 2450
Text Label 3950 1850 0    50   ~ 0
+5V
$Comp
L power:GND #PWR02
U 1 1 5C6F5C2D
P 3900 2750
F 0 "#PWR02" H 3900 2500 50  0001 C CNN
F 1 "GND" H 3905 2577 50  0000 C CNN
F 2 "" H 3900 2750 50  0001 C CNN
F 3 "" H 3900 2750 50  0001 C CNN
	1    3900 2750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5C6F6046
P 2300 2100
F 0 "JP1" V 2346 2166 50  0000 L CNN
F 1 "Laser/Fan SW" H 2400 2000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2300 2100 50  0001 C CNN
F 3 "~" H 2300 2100 50  0001 C CNN
	1    2300 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 2100 2700 2100
Wire Wire Line
	3250 2450 3250 2300
Wire Wire Line
	3000 2100 3250 2100
Wire Wire Line
	3850 2200 3950 2200
Wire Wire Line
	3950 2200 3950 1850
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5C6F8B5D
P 1650 1850
F 0 "J2" H 1570 1525 50  0000 C CNN
F 1 "FAN from 3D printer" H 2250 1850 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 1650 1850 50  0001 C CNN
F 3 "~" H 1650 1850 50  0001 C CNN
	1    1650 1850
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5C6F930E
P 1650 2350
F 0 "J3" H 1570 2025 50  0000 C CNN
F 1 "To FAN" H 1950 2350 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 1650 2350 50  0001 C CNN
F 3 "~" H 1650 2350 50  0001 C CNN
	1    1650 2350
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5C6F98BC
P 4400 2400
F 0 "J4" H 4319 2075 50  0000 C CNN
F 1 "To LASER PWM/TTL" H 4319 2166 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 4400 2400 50  0001 C CNN
F 3 "~" H 4400 2400 50  0001 C CNN
	1    4400 2400
	1    0    0    1   
$EndComp
$Comp
L Device:D D1
U 1 1 5C6FA6A5
P 2000 900
F 0 "D1" H 2000 684 50  0000 C CNN
F 1 "1N4148" H 2000 775 50  0000 C CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 2000 900 50  0001 C CNN
F 3 "~" H 2000 900 50  0001 C CNN
	1    2000 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 900  2500 900 
Connection ~ 2200 1200
Wire Wire Line
	1800 1200 2200 1200
Wire Wire Line
	1800 900  1850 900 
Wire Wire Line
	2150 900  2200 900 
Connection ~ 2200 900 
Connection ~ 2800 1200
Wire Wire Line
	2800 1200 3250 1200
Wire Wire Line
	3100 900  3250 900 
Wire Wire Line
	2200 1200 2800 1200
Wire Wire Line
	2800 1200 2800 1350
$Comp
L Device:R R2
U 1 1 5C6FD0A5
P 3900 2500
F 0 "R2" H 3830 2454 50  0000 R CNN
F 1 "470" H 3830 2545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3830 2500 50  0001 C CNN
F 3 "~" H 3900 2500 50  0001 C CNN
	1    3900 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 2300 3900 2300
Wire Wire Line
	3900 2300 3900 2350
Wire Wire Line
	3900 2300 4200 2300
Connection ~ 3900 2300
Wire Wire Line
	3900 2650 3900 2700
Wire Wire Line
	4200 2400 4200 2700
Wire Wire Line
	4200 2700 3900 2700
Connection ~ 3900 2700
Wire Wire Line
	3900 2700 3900 2750
Wire Wire Line
	1850 1950 1900 1950
Wire Wire Line
	1900 1950 1900 2450
Connection ~ 1900 2450
Wire Wire Line
	1900 2450 3250 2450
Wire Wire Line
	1800 1000 1800 1200
Text Notes 2750 2900 0    50   ~ 0
*R1 values:\n- 2.2KOhm at 24V\n- 1KOhm at 12V
Text Notes 1550 850  0    50   ~ 0
+
Text Notes 1550 1100 0    50   ~ 0
-
Text Notes 1600 1800 0    50   ~ 0
+
Text Notes 1600 2050 0    50   ~ 0
-
Text Notes 1600 2300 0    50   ~ 0
+
Text Notes 1600 2550 0    50   ~ 0
-
Text Notes 4350 2250 0    50   ~ 0
+
Text Notes 4350 2500 0    50   ~ 0
-
$EndSCHEMATC
