/*
 * Nixie Clock v2.0
 *
 * Copyright (c) 2022 Chris Fallin <chris@cfallin.org>
 * Placed under the Apache-2.0 license.
 */

/* 
 * Assume an ATmega8.
 *
 * IO connections (manufactured board version):
 *
 * PB0 is shift register clock (active high to shift).
 * PB1 is shift register data.
 * PB2 is shift register latch (active high to latch).
 *
 * Shift register output is nixie 2, 1; 4, 3; 6, 5. MSB first of BCD digits.
 *
 * PC0..PC5 are switches 0..5 (to ground; need internal pullups).
 *
 * PD0..PD7 are expansion port.
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <string.h>
#include <ctype.h>

void delay() {
    for (int i = 0; i < 1000; i++) {
        asm volatile("nop");
    }
}

void delay_1s_ish() {
    for (int i = 0; i < 1000; i++) {
        delay();
    }
}

void init_display() {
    PORTB = 0;
    DDRB = 7;
}

void output_digit(int d) {
    if (d == 0) {
        d = 1;
    } else if (d == 1) {
        d = 0;
    } else if (d == 0xff) {
        d = 15;
    } else {
        d = 11 - d;
    }
    for (int i = 0; i < 4; i++) {
        PORTB = (d & 8) ? 2 : 0;
        delay();
        PORTB |= 1;
        delay();
        d <<= 1;
    }
    PORTB = 0;
}

void latch_display() {
    PORTB = 4;
    delay();
    delay();
    PORTB = 0;
    delay();
    delay();
}

void display_digits(int h1, int h2, int m1, int m2, int s1, int s2) {
    output_digit(h2);
    output_digit(h1);
    output_digit(m2);
    output_digit(m1);
    output_digit(s2);
    output_digit(s1);
    latch_display();
}

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
        h1 = buf[7] - '0';
        h2 = buf[8] - '0';
        m1 = buf[9] - '0';
        m2 = buf[10] - '0';
        s1 = buf[11] - '0';
        s2 = buf[12] - '0';
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
    GICR |= 0x40;
}

ISR(INT0_vect) {
    // PPS interrupt.
}

void init_switches() {
    DDRC = 0;
    PORTC = 0x3f;
}

int switch_debounce0 = 0;
int switch_debounce1 = 0;
int switch_debounce2 = 0;
// Active-low (zero bit) for pressed button/flipped switch.
int switches = 0;

void read_switches() {
    switch_debounce2 = switch_debounce1;
    switch_debounce1 = switch_debounce0;
    switch_debounce0 = PINC;
    switches = switch_debounce2 | switch_debounce1 | switch_debounce0;
}

void enable_timer_interrupt() {
    TIMSK |= (1 << TOIE0);
    TCCR0 |= (1 << CS02) | (1 << CS00);  // prescale by 1024; overflow after 256 counts; 76.29Hz interrupt at 20MHz xtal
}

ISR(TIMER0_OVF_vect) {
    // TODO
}

int main()
{
    init_display();
    init_usart();
    enable_int0();
    init_switches();
    enable_timer_interrupt();
    sei();

    int pos = 0;
    int state = 0;
    while (1) {
        delay();
        read_switches();
        display_digits(h1, h2, m1, m2, s1, s2);
    }
}
