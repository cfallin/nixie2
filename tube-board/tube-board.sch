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
L nixies-us:IN-14 N1
U 1 1 61AAE64D
P 3900 3300
F 0 "N1" H 3950 4045 45  0000 C CNN
F 1 "IN-14" H 3900 3300 45  0001 L BNN
F 2 "nixies-us:IN-14" H 3930 3450 20  0001 C CNN
F 3 "" H 3900 3300 50  0001 C CNN
	1    3900 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J1
U 1 1 61AB03D5
P 3400 3200
F 0 "J1" H 3508 3781 50  0000 C CNN
F 1 "Conn_01x10_Male" H 3508 3690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 3400 3200 50  0001 C CNN
F 3 "~" H 3400 3200 50  0001 C CNN
	1    3400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2800 3600 2450
Wire Wire Line
	3600 2450 3050 2450
Wire Wire Line
	3050 2450 3050 3800
Wire Wire Line
	3050 3800 3600 3800
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 61AB3C6F
P 4500 3400
F 0 "J2" H 4472 3332 50  0000 R CNN
F 1 "Conn_01x01_Male" H 4472 3423 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4500 3400 50  0001 C CNN
F 3 "~" H 4500 3400 50  0001 C CNN
	1    4500 3400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
