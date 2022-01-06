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

    UBRRL = 0x01;  // baud divisor 129 (0x0101) --> 9600 baud
    UBRRH = 0x01;
    UCSRB = 0x90;  // RX interrupt enable, RX enable
    UCSRC = 0x86;  // 8N1
}

ISR(USART_RXC_vect) {
    uint8_t byte = UDR;

    /*
    int hundreds = byte / 100;
    int tens = (byte - 100*hundreds) / 10;
    int ones = byte % 10;

    display_digits(0xff, 0xff, 0xff, hundreds, tens, ones);
    */
}

void enable_int0() {
    GICR |= 0x40;
}

int counter = 0;

void update_counter() {
    counter++;
    if (counter == 10) {
        counter = 0;
    }
    display_digits(counter, 0, 0, 0, 0, 0);
}

ISR(INT0_vect) {
    update_counter();
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

int main()
{
    init_display();
    //init_usart();
    //enable_int0();
    display_digits(1, 2, 3, 4, 5, 6);
    init_switches();
    sei();

    int state = 0;
    while (1) {
        delay();
        read_switches();
        if (state == 0 && !(switches & 1)) {
            update_counter();
            state = 1;
        } else if (state == 1 && (switches & 1)) {
            state = 0;
        }
    }
}
