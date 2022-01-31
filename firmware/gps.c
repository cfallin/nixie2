#include <avr/io.h>
#include <avr/interrupt.h>
#include <ctype.h>

#include "nixie.h"

void init_usart() {
    DDRD = 0;
    PORTD = 0;

    UBRRL = 0x81;  // baud divisor 129 (0x0081) --> 9600 baud
    UBRRH = 0x00;
    UCSRB = 0x90;  // RX interrupt enable, RX enable
    UCSRC = 0x86;  // 8N1
}

unsigned char nmea_buf[80];
int nmea_pos = 0;

int h2 = 0, h1 = 0, m2 = 0, m1 = 0, s2 = 0, s1 = 0;

void nmea_parse(unsigned char* buf, int len) {
    if (len < 13) {
        return;
    }
    if (isdigit(buf[7]) && isdigit(buf[8]) && isdigit(buf[9]) && isdigit(buf[10]) && isdigit(buf[11]) && isdigit(buf[12])) {
        do_gps_time(buf[7] - '0',
                    buf[8] - '0',
                    buf[9] - '0',
                    buf[10] - '0',
                    buf[11] - '0',
                    buf[12] - '0');
        nmea_pos = 80;
    }
}

void nmea_char(char c) {
    if (c == '$') {
        nmea_pos = 0;
    }
    if (nmea_pos >= 80) {
        return;
    }
    nmea_buf[nmea_pos++] = c;
    nmea_parse(nmea_buf, nmea_pos);
}

ISR(USART_RXC_vect) {
    uint8_t status = UCSRA;
    if (status & 0x10) {
        return;
    }
    if (!(status & 0x80)) {
        return;
    }
    char c = UDR;
    nmea_char(c);
}

void enable_int0() {
    MCUCR |= 0x03;  // rising edge on INT0 pin triggers INT0
    GICR |= 0x40;   // enable INT0
}

ISR(INT0_vect) {
    // PPS input from GPS receiver.
    do_pps();
}
