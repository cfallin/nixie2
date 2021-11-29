EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A0 46811 33110
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
L 74xx:74HC595 U2
U 1 1 61A4451C
P 2900 2250
F 0 "U2" H 2900 3031 50  0000 C CNN
F 1 "74HC595" H 2900 2940 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2900 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2900 2250 50  0001 C CNN
	1    2900 2250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U3
U 1 1 61A44A05
P 2900 3950
F 0 "U3" H 2900 4731 50  0000 C CNN
F 1 "74HC595" H 2900 4640 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2900 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2900 3950 50  0001 C CNN
	1    2900 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U4
U 1 1 61A4599B
P 2900 5650
F 0 "U4" H 2900 6431 50  0000 C CNN
F 1 "74HC595" H 2900 6340 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2900 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2900 5650 50  0001 C CNN
	1    2900 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74141 U5
U 1 1 61A4633B
P 5100 2300
F 0 "U5" H 5100 3041 50  0000 C CNN
F 1 "74141" H 5100 2950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5100 2300 50  0001 C CNN
F 3 "" H 5100 2300 50  0001 C CNN
	1    5100 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74141 U6
U 1 1 61A46F12
P 5100 3950
F 0 "U6" H 5100 4691 50  0000 C CNN
F 1 "74141" H 5100 4600 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5100 3950 50  0001 C CNN
F 3 "" H 5100 3950 50  0001 C CNN
	1    5100 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74141 U7
U 1 1 61A4A287
P 5100 5700
F 0 "U7" H 5100 6441 50  0000 C CNN
F 1 "74141" H 5100 6350 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5100 5700 50  0001 C CNN
F 3 "" H 5100 5700 50  0001 C CNN
	1    5100 5700
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74141 U8
U 1 1 61A4CB82
P 7000 2300
F 0 "U8" H 7000 3041 50  0000 C CNN
F 1 "74141" H 7000 2950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7000 2300 50  0001 C CNN
F 3 "" H 7000 2300 50  0001 C CNN
	1    7000 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74141 U9
U 1 1 61A4D87C
P 7050 3950
F 0 "U9" H 7050 4691 50  0000 C CNN
F 1 "74141" H 7050 4600 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7050 3950 50  0001 C CNN
F 3 "" H 7050 3950 50  0001 C CNN
	1    7050 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74141 U10
U 1 1 61A4DE4D
P 7050 5700
F 0 "U10" H 7050 6441 50  0000 C CNN
F 1 "74141" H 7050 6350 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7050 5700 50  0001 C CNN
F 3 "" H 7050 5700 50  0001 C CNN
	1    7050 5700
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega8-16PU U1
U 1 1 61A79E3B
P 2850 9550
F 0 "U1" H 2950 11150 50  0000 C CNN
F 1 "ATmega8-16PU" H 3200 11050 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 2850 9550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2486-8-bit-avr-microcontroller-atmega8_l_datasheet.pdf" H 2850 9550 50  0001 C CNN
	1    2850 9550
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X1
U 1 1 61A7B0B2
P 1350 8650
F 0 "X1" H 1694 8696 50  0000 L CNN
F 1 "CXO_DIP8" H 1694 8605 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 1800 8300 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 1250 8650 50  0001 C CNN
	1    1350 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 8650 2250 8650
$Comp
L power:GND #PWR0101
U 1 1 61A7C209
P 1350 9000
F 0 "#PWR0101" H 1350 8750 50  0001 C CNN
F 1 "GND" H 1355 8827 50  0000 C CNN
F 2 "" H 1350 9000 50  0001 C CNN
F 3 "" H 1350 9000 50  0001 C CNN
	1    1350 9000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61A7C67C
P 2850 11150
F 0 "#PWR0102" H 2850 10900 50  0001 C CNN
F 1 "GND" H 2855 10977 50  0000 C CNN
F 2 "" H 2850 11150 50  0001 C CNN
F 3 "" H 2850 11150 50  0001 C CNN
	1    2850 11150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 8950 1350 9000
Wire Wire Line
	2850 10950 2950 10950
Wire Wire Line
	2850 10950 2850 11150
Connection ~ 2850 10950
$Comp
L Device:R_US R1
U 1 1 61A7DF21
P 2050 8200
F 0 "R1" H 2118 8246 50  0000 L CNN
F 1 "10k" H 2118 8155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2090 8190 50  0001 C CNN
F 3 "~" H 2050 8200 50  0001 C CNN
	1    2050 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 8350 2050 8450
Wire Wire Line
	2050 8450 2250 8450
$Comp
L power:VDD #PWR0103
U 1 1 61A7E7DD
P 2850 7750
F 0 "#PWR0103" H 2850 7600 50  0001 C CNN
F 1 "VDD" H 2865 7923 50  0000 C CNN
F 2 "" H 2850 7750 50  0001 C CNN
F 3 "" H 2850 7750 50  0001 C CNN
	1    2850 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7750 2850 7850
Wire Wire Line
	2950 8150 2850 8150
Connection ~ 2850 8150
Wire Wire Line
	2050 8050 2050 7850
Wire Wire Line
	2050 7850 2850 7850
Connection ~ 2850 7850
Wire Wire Line
	2850 7850 2850 8150
Wire Wire Line
	1350 8350 1350 8200
Wire Wire Line
	1350 7850 2050 7850
Connection ~ 2050 7850
Wire Wire Line
	1050 8650 1050 8200
Wire Wire Line
	1050 8200 1350 8200
Connection ~ 1350 8200
Wire Wire Line
	1350 8200 1350 7850
$Comp
L power:GND #PWR0104
U 1 1 61A81FA1
P 4300 8600
F 0 "#PWR0104" H 4300 8350 50  0001 C CNN
F 1 "GND" H 4450 8550 50  0000 C CNN
F 2 "" H 4300 8600 50  0001 C CNN
F 3 "" H 4300 8600 50  0001 C CNN
	1    4300 8600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0105
U 1 1 61A82527
P 4300 7700
F 0 "#PWR0105" H 4300 7550 50  0001 C CNN
F 1 "VDD" H 4315 7873 50  0000 C CNN
F 2 "" H 4300 7700 50  0001 C CNN
F 3 "" H 4300 7700 50  0001 C CNN
	1    4300 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 8200 4950 8200
Wire Wire Line
	4950 8200 4950 8950
Wire Wire Line
	4950 8950 3450 8950
Wire Wire Line
	2050 8450 1700 8450
Wire Wire Line
	1700 8450 1700 7450
Wire Wire Line
	1700 7450 5350 7450
Wire Wire Line
	5350 7450 5350 8300
Wire Wire Line
	5350 8300 4800 8300
Connection ~ 2050 8450
Wire Wire Line
	3450 8750 5000 8750
Wire Wire Line
	5000 8750 5000 8100
Wire Wire Line
	5000 8100 4800 8100
Wire Wire Line
	4800 8000 5050 8000
Wire Wire Line
	5050 8000 5050 8850
Wire Wire Line
	5050 8850 3450 8850
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 61A8134D
P 4400 8200
F 0 "J1" H 4071 8296 50  0000 R CNN
F 1 "AVR-ISP-6" H 4071 8205 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 4150 8250 50  0001 C CNN
F 3 " ~" H 3125 7650 50  0001 C CNN
	1    4400 8200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 61A8AED3
P 1900 9000
F 0 "C1" H 2018 9046 50  0000 L CNN
F 1 "100nF" H 2018 8955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.5mm_P2.50mm" H 1938 8850 50  0001 C CNN
F 3 "~" H 1900 9000 50  0001 C CNN
	1    1900 9000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 61A8B79E
P 1900 9150
F 0 "#PWR0106" H 1900 8900 50  0001 C CNN
F 1 "GND" H 1905 8977 50  0000 C CNN
F 2 "" H 1900 9150 50  0001 C CNN
F 3 "" H 1900 9150 50  0001 C CNN
	1    1900 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 8850 2050 8850
Wire Wire Line
	2050 8850 2050 8450
Wire Wire Line
	1750 7100 1750 5250
Wire Wire Line
	1750 5250 2500 5250
Wire Wire Line
	3300 6150 3500 6150
Wire Wire Line
	3500 6150 3500 4800
Wire Wire Line
	3500 4800 2300 4800
Wire Wire Line
	2300 4800 2300 3550
Wire Wire Line
	2300 3550 2500 3550
Wire Wire Line
	3300 4450 3500 4450
Wire Wire Line
	3500 4450 3500 3100
Wire Wire Line
	3500 3100 2300 3100
Wire Wire Line
	2300 3100 2300 1850
Wire Wire Line
	2300 1850 2500 1850
Wire Wire Line
	2500 2050 2200 2050
Wire Wire Line
	2200 2050 2200 3750
Wire Wire Line
	2200 3750 2500 3750
Wire Wire Line
	2200 5450 2500 5450
Wire Wire Line
	2200 3750 2200 5450
Connection ~ 2200 3750
Connection ~ 2200 5450
Wire Wire Line
	2200 5450 2200 7150
Wire Wire Line
	2200 7150 3450 7150
Wire Wire Line
	3450 7150 3450 8450
Wire Wire Line
	3450 8550 3500 8550
Wire Wire Line
	3500 8550 3500 7100
Wire Wire Line
	3500 7100 1750 7100
Wire Wire Line
	2500 2350 2400 2350
Wire Wire Line
	2400 2350 2400 4050
Wire Wire Line
	2400 4050 2500 4050
Wire Wire Line
	2400 4050 2400 5750
Wire Wire Line
	2400 5750 2500 5750
Connection ~ 2400 4050
Wire Wire Line
	2400 5750 2400 7200
Wire Wire Line
	2400 7200 3550 7200
Wire Wire Line
	3550 7200 3550 8650
Wire Wire Line
	3550 8650 3450 8650
Connection ~ 2400 5750
Wire Wire Line
	2500 2450 2050 2450
Wire Wire Line
	2050 2450 2050 4150
Wire Wire Line
	2050 4150 2500 4150
Wire Wire Line
	2050 4150 2050 5850
Wire Wire Line
	2050 5850 2500 5850
Connection ~ 2050 4150
$Comp
L power:GND #PWR0107
U 1 1 61AAAA2A
P 2050 5850
F 0 "#PWR0107" H 2050 5600 50  0001 C CNN
F 1 "GND" H 2055 5677 50  0000 C CNN
F 2 "" H 2050 5850 50  0001 C CNN
F 3 "" H 2050 5850 50  0001 C CNN
	1    2050 5850
	1    0    0    -1  
$EndComp
Connection ~ 2050 5850
Wire Wire Line
	2500 5550 2100 5550
Wire Wire Line
	2100 5550 2100 3850
Wire Wire Line
	2100 3850 2500 3850
Wire Wire Line
	2100 3850 2100 2150
Wire Wire Line
	2100 2150 2500 2150
Connection ~ 2100 3850
Wire Wire Line
	2100 2150 1950 2150
Wire Wire Line
	1950 2150 1950 2100
Connection ~ 2100 2150
$Comp
L power:VDD #PWR0108
U 1 1 61AB0FA6
P 1950 2100
F 0 "#PWR0108" H 1950 1950 50  0001 C CNN
F 1 "VDD" H 1965 2273 50  0000 C CNN
F 2 "" H 1950 2100 50  0001 C CNN
F 3 "" H 1950 2100 50  0001 C CNN
	1    1950 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61AB169E
P 2900 2950
F 0 "#PWR0109" H 2900 2700 50  0001 C CNN
F 1 "GND" H 2905 2777 50  0000 C CNN
F 2 "" H 2900 2950 50  0001 C CNN
F 3 "" H 2900 2950 50  0001 C CNN
	1    2900 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 61AB3D68
P 2900 6350
F 0 "#PWR0110" H 2900 6100 50  0001 C CNN
F 1 "GND" H 2905 6177 50  0000 C CNN
F 2 "" H 2900 6350 50  0001 C CNN
F 3 "" H 2900 6350 50  0001 C CNN
	1    2900 6350
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0111
U 1 1 61AB425C
P 2900 5050
F 0 "#PWR0111" H 2900 4900 50  0001 C CNN
F 1 "VDD" H 2915 5223 50  0000 C CNN
F 2 "" H 2900 5050 50  0001 C CNN
F 3 "" H 2900 5050 50  0001 C CNN
	1    2900 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0112
U 1 1 61AB5208
P 2900 3350
F 0 "#PWR0112" H 2900 3200 50  0001 C CNN
F 1 "VDD" H 2915 3523 50  0000 C CNN
F 2 "" H 2900 3350 50  0001 C CNN
F 3 "" H 2900 3350 50  0001 C CNN
	1    2900 3350
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0113
U 1 1 61AB5B27
P 2900 1650
F 0 "#PWR0113" H 2900 1500 50  0001 C CNN
F 1 "VDD" H 2915 1823 50  0000 C CNN
F 2 "" H 2900 1650 50  0001 C CNN
F 3 "" H 2900 1650 50  0001 C CNN
	1    2900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1850 4500 1850
Wire Wire Line
	4500 1850 4500 2150
Wire Wire Line
	4500 2250 4450 2250
Wire Wire Line
	4450 2250 4450 1950
Wire Wire Line
	4450 1950 3300 1950
Wire Wire Line
	3300 2050 4400 2050
Wire Wire Line
	4400 2050 4400 2350
Wire Wire Line
	4400 2350 4500 2350
Wire Wire Line
	4500 2450 4350 2450
Wire Wire Line
	4350 2450 4350 2150
Wire Wire Line
	4350 2150 3300 2150
Wire Wire Line
	3300 2250 4300 2250
Wire Wire Line
	4300 2250 4300 3800
Wire Wire Line
	4300 3800 4500 3800
Wire Wire Line
	4500 3900 4250 3900
Wire Wire Line
	4250 3900 4250 2350
Wire Wire Line
	4250 2350 3300 2350
Wire Wire Line
	3300 2450 4200 2450
Wire Wire Line
	4200 2450 4200 4000
Wire Wire Line
	4200 4000 4500 4000
Wire Wire Line
	4500 4100 4150 4100
Wire Wire Line
	4150 4100 4150 2550
Wire Wire Line
	4150 2550 3300 2550
Wire Wire Line
	3300 3550 4100 3550
Wire Wire Line
	4100 3550 4100 5550
Wire Wire Line
	4100 5550 4500 5550
Wire Wire Line
	4500 5650 4050 5650
Wire Wire Line
	4050 5650 4050 3650
Wire Wire Line
	4050 3650 3300 3650
Wire Wire Line
	3300 3750 4000 3750
Wire Wire Line
	4000 3750 4000 5750
Wire Wire Line
	4000 5750 4500 5750
Wire Wire Line
	4500 5850 3950 5850
Wire Wire Line
	3950 5850 3950 3850
Wire Wire Line
	3950 3850 3300 3850
Wire Wire Line
	3300 3950 3350 3950
Wire Wire Line
	3350 3950 3350 1000
Wire Wire Line
	3350 1000 6400 1000
Wire Wire Line
	6400 1000 6400 2150
Wire Wire Line
	6400 2250 6350 2250
Wire Wire Line
	6350 2250 6350 1050
Wire Wire Line
	6350 1050 3400 1050
Wire Wire Line
	3400 1050 3400 4050
Wire Wire Line
	3400 4050 3300 4050
Wire Wire Line
	3300 4150 3450 4150
Wire Wire Line
	3450 4150 3450 1100
Wire Wire Line
	3450 1100 6300 1100
Wire Wire Line
	6300 1100 6300 2350
Wire Wire Line
	6300 2350 6400 2350
Wire Wire Line
	6400 2450 6250 2450
Wire Wire Line
	6250 2450 6250 1150
Wire Wire Line
	6250 1150 3550 1150
Wire Wire Line
	3550 1150 3550 4250
Wire Wire Line
	3550 4250 3300 4250
Wire Wire Line
	3300 5250 3300 4700
Wire Wire Line
	3300 4700 6100 4700
Wire Wire Line
	6100 4700 6100 3800
Wire Wire Line
	6100 3800 6450 3800
Wire Wire Line
	6450 3900 6150 3900
Wire Wire Line
	6150 3900 6150 4750
Wire Wire Line
	6150 4750 3350 4750
Wire Wire Line
	3350 4750 3350 5350
Wire Wire Line
	3350 5350 3300 5350
Wire Wire Line
	3300 5450 3400 5450
Wire Wire Line
	3400 5450 3400 4850
Wire Wire Line
	3400 4850 3550 4850
Wire Wire Line
	3550 4850 3550 4800
Wire Wire Line
	3550 4800 6200 4800
Wire Wire Line
	6200 4800 6200 4000
Wire Wire Line
	6200 4000 6450 4000
Wire Wire Line
	6450 4100 6250 4100
Wire Wire Line
	6250 4100 6250 4850
Wire Wire Line
	6250 4850 3600 4850
Wire Wire Line
	3600 4850 3600 4900
Wire Wire Line
	3600 4900 3450 4900
Wire Wire Line
	3450 4900 3450 5550
Wire Wire Line
	3450 5550 3300 5550
Wire Wire Line
	3300 5650 3900 5650
Wire Wire Line
	3900 5650 3900 6450
Wire Wire Line
	3900 6450 6100 6450
Wire Wire Line
	6100 6450 6100 5550
Wire Wire Line
	6100 5550 6450 5550
Wire Wire Line
	6450 5650 6150 5650
Wire Wire Line
	6150 5650 6150 6500
Wire Wire Line
	6150 6500 3850 6500
Wire Wire Line
	3850 6500 3850 5750
Wire Wire Line
	3850 5750 3300 5750
Wire Wire Line
	3300 5850 3800 5850
Wire Wire Line
	3800 5850 3800 6550
Wire Wire Line
	3800 6550 6200 6550
Wire Wire Line
	6200 6550 6200 5750
Wire Wire Line
	6200 5750 6450 5750
Wire Wire Line
	6450 5850 6250 5850
Wire Wire Line
	6250 5850 6250 6600
Wire Wire Line
	3750 6600 3750 5950
Wire Wire Line
	3750 5950 3300 5950
Wire Wire Line
	3750 6600 6250 6600
$Comp
L power:GND #PWR0114
U 1 1 61B2E59A
P 5100 6250
F 0 "#PWR0114" H 5100 6000 50  0001 C CNN
F 1 "GND" H 5105 6077 50  0000 C CNN
F 2 "" H 5100 6250 50  0001 C CNN
F 3 "" H 5100 6250 50  0001 C CNN
	1    5100 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 61B2EA70
P 5100 4500
F 0 "#PWR0115" H 5100 4250 50  0001 C CNN
F 1 "GND" H 5105 4327 50  0000 C CNN
F 2 "" H 5100 4500 50  0001 C CNN
F 3 "" H 5100 4500 50  0001 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 61B2EF5D
P 7050 6250
F 0 "#PWR0116" H 7050 6000 50  0001 C CNN
F 1 "GND" H 7055 6077 50  0000 C CNN
F 2 "" H 7050 6250 50  0001 C CNN
F 3 "" H 7050 6250 50  0001 C CNN
	1    7050 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 61B308F5
P 7050 4500
F 0 "#PWR0117" H 7050 4250 50  0001 C CNN
F 1 "GND" H 7055 4327 50  0000 C CNN
F 2 "" H 7050 4500 50  0001 C CNN
F 3 "" H 7050 4500 50  0001 C CNN
	1    7050 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61B30FD2
P 7000 2850
F 0 "#PWR0118" H 7000 2600 50  0001 C CNN
F 1 "GND" H 7005 2677 50  0000 C CNN
F 2 "" H 7000 2850 50  0001 C CNN
F 3 "" H 7000 2850 50  0001 C CNN
	1    7000 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 61B32415
P 5100 2850
F 0 "#PWR0119" H 5100 2600 50  0001 C CNN
F 1 "GND" H 5105 2677 50  0000 C CNN
F 2 "" H 5100 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0120
U 1 1 61B3375E
P 7050 3400
F 0 "#PWR0120" H 7050 3250 50  0001 C CNN
F 1 "VDD" H 7065 3573 50  0000 C CNN
F 2 "" H 7050 3400 50  0001 C CNN
F 3 "" H 7050 3400 50  0001 C CNN
	1    7050 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0121
U 1 1 61B33EC2
P 5100 3400
F 0 "#PWR0121" H 5100 3250 50  0001 C CNN
F 1 "VDD" H 5115 3573 50  0000 C CNN
F 2 "" H 5100 3400 50  0001 C CNN
F 3 "" H 5100 3400 50  0001 C CNN
	1    5100 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0122
U 1 1 61B3444C
P 5100 1750
F 0 "#PWR0122" H 5100 1600 50  0001 C CNN
F 1 "VDD" H 5115 1923 50  0000 C CNN
F 2 "" H 5100 1750 50  0001 C CNN
F 3 "" H 5100 1750 50  0001 C CNN
	1    5100 1750
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0123
U 1 1 61B35FAB
P 7000 1750
F 0 "#PWR0123" H 7000 1600 50  0001 C CNN
F 1 "VDD" H 7015 1923 50  0000 C CNN
F 2 "" H 7000 1750 50  0001 C CNN
F 3 "" H 7000 1750 50  0001 C CNN
	1    7000 1750
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0124
U 1 1 61B3663C
P 7050 5150
F 0 "#PWR0124" H 7050 5000 50  0001 C CNN
F 1 "VDD" H 7065 5323 50  0000 C CNN
F 2 "" H 7050 5150 50  0001 C CNN
F 3 "" H 7050 5150 50  0001 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0125
U 1 1 61B39799
P 5100 5150
F 0 "#PWR0125" H 5100 5000 50  0001 C CNN
F 1 "VDD" H 5115 5323 50  0000 C CNN
F 2 "" H 5100 5150 50  0001 C CNN
F 3 "" H 5100 5150 50  0001 C CNN
	1    5100 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female NIX3
U 1 1 61B3A82C
P 5900 5650
F 0 "NIX3" H 5928 5626 50  0000 L CNN
F 1 "Conn_01x10_Female" H 5928 5535 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 5900 5650 50  0001 C CNN
F 3 "~" H 5900 5650 50  0001 C CNN
	1    5900 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female NIX6
U 1 1 61B3BFFF
P 7850 5650
F 0 "NIX6" H 7878 5626 50  0000 L CNN
F 1 "Conn_01x10_Female" H 7878 5535 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7850 5650 50  0001 C CNN
F 3 "~" H 7850 5650 50  0001 C CNN
	1    7850 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female NIX5
U 1 1 61B3C83D
P 7850 3900
F 0 "NIX5" H 7878 3876 50  0000 L CNN
F 1 "Conn_01x10_Female" H 7878 3785 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7850 3900 50  0001 C CNN
F 3 "~" H 7850 3900 50  0001 C CNN
	1    7850 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female NIX2
U 1 1 61B3F166
P 5900 3900
F 0 "NIX2" H 5928 3876 50  0000 L CNN
F 1 "Conn_01x10_Female" H 5928 3785 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 5900 3900 50  0001 C CNN
F 3 "~" H 5900 3900 50  0001 C CNN
	1    5900 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female NIX1
U 1 1 61B4035E
P 5900 2250
F 0 "NIX1" H 5928 2226 50  0000 L CNN
F 1 "Conn_01x10_Female" H 5928 2135 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 5900 2250 50  0001 C CNN
F 3 "~" H 5900 2250 50  0001 C CNN
	1    5900 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female NIX4
U 1 1 61B43633
P 7800 2250
F 0 "NIX4" H 7828 2226 50  0000 L CNN
F 1 "Conn_01x10_Female" H 7828 2135 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7800 2250 50  0001 C CNN
F 3 "~" H 7800 2250 50  0001 C CNN
	1    7800 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male SW1
U 1 1 61B48144
P 5550 9200
F 0 "SW1" H 5658 9381 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5658 9290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5550 9200 50  0001 C CNN
F 3 "~" H 5550 9200 50  0001 C CNN
	1    5550 9200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male SW2
U 1 1 61B48B7E
P 5550 9550
F 0 "SW2" H 5658 9731 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5658 9640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5550 9550 50  0001 C CNN
F 3 "~" H 5550 9550 50  0001 C CNN
	1    5550 9550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male SW3
U 1 1 61B494B8
P 5550 9850
F 0 "SW3" H 5658 10031 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5658 9940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5550 9850 50  0001 C CNN
F 3 "~" H 5550 9850 50  0001 C CNN
	1    5550 9850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male SW4
U 1 1 61B49A08
P 5550 10150
F 0 "SW4" H 5658 10331 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5658 10240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5550 10150 50  0001 C CNN
F 3 "~" H 5550 10150 50  0001 C CNN
	1    5550 10150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male SW5
U 1 1 61B4A17B
P 5550 10450
F 0 "SW5" H 5658 10631 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5658 10540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5550 10450 50  0001 C CNN
F 3 "~" H 5550 10450 50  0001 C CNN
	1    5550 10450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male SW6
U 1 1 61B4A95C
P 5550 10750
F 0 "SW6" H 5658 10931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5658 10840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5550 10750 50  0001 C CNN
F 3 "~" H 5550 10750 50  0001 C CNN
	1    5550 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 9300 6100 9300
Wire Wire Line
	6100 9300 6100 9650
$Comp
L power:GND #PWR0126
U 1 1 61B9BC24
P 6100 11100
F 0 "#PWR0126" H 6100 10850 50  0001 C CNN
F 1 "GND" H 6105 10927 50  0000 C CNN
F 2 "" H 6100 11100 50  0001 C CNN
F 3 "" H 6100 11100 50  0001 C CNN
	1    6100 11100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 10850 6100 10850
Connection ~ 6100 10850
Wire Wire Line
	6100 10850 6100 11100
Wire Wire Line
	5750 10550 6100 10550
Connection ~ 6100 10550
Wire Wire Line
	6100 10550 6100 10850
Wire Wire Line
	5750 10250 6100 10250
Connection ~ 6100 10250
Wire Wire Line
	6100 10250 6100 10550
Wire Wire Line
	5750 9950 6100 9950
Connection ~ 6100 9950
Wire Wire Line
	6100 9950 6100 10250
Wire Wire Line
	5750 9650 6100 9650
Connection ~ 6100 9650
Wire Wire Line
	6100 9650 6100 9950
Wire Wire Line
	5750 9200 6200 9200
Wire Wire Line
	5750 9550 6250 9550
Wire Wire Line
	6200 9200 6200 8700
Wire Wire Line
	6200 8700 5100 8700
Wire Wire Line
	5100 8700 5100 9150
Wire Wire Line
	5100 9150 3450 9150
Wire Wire Line
	6250 9550 6250 8750
Wire Wire Line
	6250 8750 5150 8750
Wire Wire Line
	5150 8750 5150 9250
Wire Wire Line
	5150 9250 3450 9250
Wire Wire Line
	3450 9350 5200 9350
Wire Wire Line
	5200 9350 5200 8800
Wire Wire Line
	5200 8800 6350 8800
Wire Wire Line
	6350 8800 6350 9850
Wire Wire Line
	5750 9850 6350 9850
Wire Wire Line
	6400 10150 6400 8850
Wire Wire Line
	6400 8850 5250 8850
Wire Wire Line
	5250 8850 5250 9450
Wire Wire Line
	5250 9450 3450 9450
Wire Wire Line
	5750 10150 6400 10150
Wire Wire Line
	3450 9550 5300 9550
Wire Wire Line
	5300 9550 5300 8900
Wire Wire Line
	5300 8900 6450 8900
Wire Wire Line
	6450 8900 6450 10450
Wire Wire Line
	5750 10450 6450 10450
Wire Wire Line
	6500 10750 6500 8950
Wire Wire Line
	6500 8950 5350 8950
Wire Wire Line
	5350 8950 5350 9650
Wire Wire Line
	5350 9650 3450 9650
Wire Wire Line
	5750 10750 6500 10750
$Comp
L Connector:Conn_01x10_Female J14
U 1 1 61A5669D
P 3950 10250
F 0 "J14" H 3978 10226 50  0000 L CNN
F 1 "Conn_01x10_Female" H 3978 10135 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 3950 10250 50  0001 C CNN
F 3 "~" H 3950 10250 50  0001 C CNN
	1    3950 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 9850 3750 9850
Wire Wire Line
	3450 9950 3750 9950
Wire Wire Line
	3750 10050 3450 10050
Wire Wire Line
	3450 10150 3750 10150
Wire Wire Line
	3750 10250 3450 10250
Wire Wire Line
	3450 10350 3750 10350
Wire Wire Line
	3750 10450 3450 10450
Wire Wire Line
	3450 10550 3750 10550
$Comp
L power:GND #PWR0127
U 1 1 61AC38E4
P 3500 10650
F 0 "#PWR0127" H 3500 10400 50  0001 C CNN
F 1 "GND" H 3505 10477 50  0000 C CNN
F 2 "" H 3500 10650 50  0001 C CNN
F 3 "" H 3500 10650 50  0001 C CNN
	1    3500 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 10650 3750 10650
Wire Wire Line
	3750 10750 3750 10900
Wire Wire Line
	3750 10900 4150 10900
$Comp
L power:VDD #PWR0128
U 1 1 61ADD9FE
P 4150 10900
F 0 "#PWR0128" H 4150 10750 50  0001 C CNN
F 1 "VDD" H 4165 11073 50  0000 C CNN
F 2 "" H 4150 10900 50  0001 C CNN
F 3 "" H 4150 10900 50  0001 C CNN
	1    4150 10900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male PWR_IN1
U 1 1 61ADEB40
P 1050 11850
F 0 "PWR_IN1" H 1158 12031 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1158 11940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1050 11850 50  0001 C CNN
F 3 "~" H 1050 11850 50  0001 C CNN
	1    1050 11850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 61ADFEA7
P 1400 12000
F 0 "#PWR0129" H 1400 11750 50  0001 C CNN
F 1 "GND" H 1405 11827 50  0000 C CNN
F 2 "" H 1400 12000 50  0001 C CNN
F 3 "" H 1400 12000 50  0001 C CNN
	1    1400 12000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 11950 1400 11950
Wire Wire Line
	1400 11950 1400 12000
$Comp
L Regulator_Linear:L7805 U11
U 1 1 61AEDD3D
P 2150 11850
F 0 "U11" H 2150 12092 50  0000 C CNN
F 1 "L7805" H 2150 12001 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2175 11700 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2150 11800 50  0001 C CNN
	1    2150 11850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 61AEED6C
P 1700 12000
F 0 "C2" H 1818 12046 50  0000 L CNN
F 1 "CP" H 1818 11955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 1738 11850 50  0001 C CNN
F 3 "~" H 1700 12000 50  0001 C CNN
	1    1700 12000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 61AEF611
P 2650 12000
F 0 "C3" H 2768 12046 50  0000 L CNN
F 1 "CP" H 2768 11955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 2688 11850 50  0001 C CNN
F 3 "~" H 2650 12000 50  0001 C CNN
	1    2650 12000
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0130
U 1 1 61AF0002
P 2700 11650
F 0 "#PWR0130" H 2700 11500 50  0001 C CNN
F 1 "VDD" H 2715 11823 50  0000 C CNN
F 2 "" H 2700 11650 50  0001 C CNN
F 3 "" H 2700 11650 50  0001 C CNN
	1    2700 11650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 11850 2650 11850
Wire Wire Line
	2650 11850 2650 11700
Wire Wire Line
	2650 11700 2700 11700
Wire Wire Line
	2700 11700 2700 11650
Connection ~ 2650 11850
Wire Wire Line
	1850 11850 1700 11850
Wire Wire Line
	1700 11850 1500 11850
Connection ~ 1700 11850
Wire Wire Line
	1700 12150 2150 12150
Connection ~ 2150 12150
Wire Wire Line
	2150 12150 2650 12150
$Comp
L power:GND #PWR0131
U 1 1 61B456FE
P 2150 12200
F 0 "#PWR0131" H 2150 11950 50  0001 C CNN
F 1 "GND" H 2155 12027 50  0000 C CNN
F 2 "" H 2150 12200 50  0001 C CNN
F 3 "" H 2150 12200 50  0001 C CNN
	1    2150 12200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 12150 2150 12200
$Comp
L Device:CP C4
U 1 1 61C0F7D9
P 1100 9900
F 0 "C4" H 1218 9946 50  0000 L CNN
F 1 "1uF" H 1218 9855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 1138 9750 50  0001 C CNN
F 3 "~" H 1100 9900 50  0001 C CNN
	1    1100 9900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 61C10270
P 1100 10050
F 0 "#PWR0132" H 1100 9800 50  0001 C CNN
F 1 "GND" H 1105 9877 50  0000 C CNN
F 2 "" H 1100 10050 50  0001 C CNN
F 3 "" H 1100 10050 50  0001 C CNN
	1    1100 10050
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0133
U 1 1 61C10CD6
P 1100 9750
F 0 "#PWR0133" H 1100 9600 50  0001 C CNN
F 1 "VDD" H 1115 9923 50  0000 C CNN
F 2 "" H 1100 9750 50  0001 C CNN
F 3 "" H 1100 9750 50  0001 C CNN
	1    1100 9750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female HVSUP_OUT1
U 1 1 61C25B1C
P 1200 13200
F 0 "HVSUP_OUT1" H 1228 13226 50  0000 L CNN
F 1 "Conn_01x03_Female" H 1228 13135 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1200 13200 50  0001 C CNN
F 3 "~" H 1200 13200 50  0001 C CNN
	1    1200 13200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 13200 1000 13300
Connection ~ 1000 13300
Wire Wire Line
	1000 13300 1000 13400
$Comp
L power:GND #PWR0134
U 1 1 61C35BE3
P 1000 13400
F 0 "#PWR0134" H 1000 13150 50  0001 C CNN
F 1 "GND" H 1005 13227 50  0000 C CNN
F 2 "" H 1000 13400 50  0001 C CNN
F 3 "" H 1000 13400 50  0001 C CNN
	1    1000 13400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 13100 1000 12250
Wire Wire Line
	1000 12250 1500 12250
Wire Wire Line
	1500 12250 1500 11850
Connection ~ 1500 11850
Wire Wire Line
	1500 11850 1250 11850
$Comp
L Connector:Conn_01x02_Female HV_IN1
U 1 1 61C47BE1
P 3050 13150
F 0 "HV_IN1" H 3078 13126 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3078 13035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3050 13150 50  0001 C CNN
F 3 "~" H 3050 13150 50  0001 C CNN
	1    3050 13150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 13350 2800 13250
Wire Wire Line
	2800 13250 2850 13250
$Comp
L power:GND #PWR0135
U 1 1 61C5834C
P 2800 13350
F 0 "#PWR0135" H 2800 13100 50  0001 C CNN
F 1 "GND" H 2805 13177 50  0000 C CNN
F 2 "" H 2800 13350 50  0001 C CNN
F 3 "" H 2800 13350 50  0001 C CNN
	1    2800 13350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 61C59575
P 3800 12450
F 0 "R5" V 3595 12450 50  0000 C CNN
F 1 "10k" V 3686 12450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3840 12440 50  0001 C CNN
F 3 "~" H 3800 12450 50  0001 C CNN
	1    3800 12450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 61C59B1F
P 3800 12750
F 0 "R6" V 3595 12750 50  0000 C CNN
F 1 "10k" V 3686 12750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3840 12740 50  0001 C CNN
F 3 "~" H 3800 12750 50  0001 C CNN
	1    3800 12750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 61C5A8A9
P 3800 12150
F 0 "R4" V 3595 12150 50  0000 C CNN
F 1 "10k" V 3686 12150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3840 12140 50  0001 C CNN
F 3 "~" H 3800 12150 50  0001 C CNN
	1    3800 12150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 61C5B660
P 3800 11900
F 0 "R3" V 3595 11900 50  0000 C CNN
F 1 "10k" V 3686 11900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3840 11890 50  0001 C CNN
F 3 "~" H 3800 11900 50  0001 C CNN
	1    3800 11900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R7
U 1 1 61C5C18B
P 3800 13000
F 0 "R7" V 3595 13000 50  0000 C CNN
F 1 "10k" V 3686 13000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3840 12990 50  0001 C CNN
F 3 "~" H 3800 13000 50  0001 C CNN
	1    3800 13000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 61C5CB7C
P 3800 11650
F 0 "R2" V 3595 11650 50  0000 C CNN
F 1 "10k" V 3686 11650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3840 11640 50  0001 C CNN
F 3 "~" H 3800 11650 50  0001 C CNN
	1    3800 11650
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 13150 2850 13000
Wire Wire Line
	2850 13000 3650 13000
Wire Wire Line
	3650 13000 3650 12750
Connection ~ 3650 13000
Connection ~ 3650 11900
Wire Wire Line
	3650 11900 3650 11650
Connection ~ 3650 12150
Wire Wire Line
	3650 12150 3650 11900
Connection ~ 3650 12450
Wire Wire Line
	3650 12450 3650 12150
Connection ~ 3650 12750
Wire Wire Line
	3650 12750 3650 12450
$Comp
L Connector:Conn_01x01_Female ANODE1
U 1 1 61C934C5
P 4150 11650
F 0 "ANODE1" H 4178 11676 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4178 11585 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4150 11650 50  0001 C CNN
F 3 "~" H 4150 11650 50  0001 C CNN
	1    4150 11650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female ANODE2
U 1 1 61C94005
P 4150 11900
F 0 "ANODE2" H 4178 11926 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4178 11835 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4150 11900 50  0001 C CNN
F 3 "~" H 4150 11900 50  0001 C CNN
	1    4150 11900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female ANODE3
U 1 1 61C94757
P 4150 12150
F 0 "ANODE3" H 4178 12176 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4178 12085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4150 12150 50  0001 C CNN
F 3 "~" H 4150 12150 50  0001 C CNN
	1    4150 12150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female ANODE4
U 1 1 61C9502F
P 4150 12450
F 0 "ANODE4" H 4178 12476 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4178 12385 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4150 12450 50  0001 C CNN
F 3 "~" H 4150 12450 50  0001 C CNN
	1    4150 12450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female ANODE5
U 1 1 61C958C8
P 4150 12750
F 0 "ANODE5" H 4178 12776 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4178 12685 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4150 12750 50  0001 C CNN
F 3 "~" H 4150 12750 50  0001 C CNN
	1    4150 12750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female ANODE6
U 1 1 61C96344
P 4150 13000
F 0 "ANODE6" H 4178 13026 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4178 12935 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4150 13000 50  0001 C CNN
F 3 "~" H 4150 13000 50  0001 C CNN
	1    4150 13000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
