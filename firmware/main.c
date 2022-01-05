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
    wdt_reset();
}

void delay_1s_ish() {
    for (int i = 0; i < 1000; i++) {
        delay();
    }
}

void init() {
    PORTB = 0;
    DDRB = 7;
}

void output_digit(int d) {
    if (d == 0) {
        d = 1;
    } else if (d == 1) {
        d = 0;
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

int main()
{
    init();

    int d = 0;
    while (1) {
        int d1 = d;
        int d2 = (d + 1) % 10;
        int d3 = (d + 2) % 10;
        int d4 = (d + 3) % 10;
        int d5 = (d + 4) % 10;
        int d6 = (d + 5) % 10;
        display_digits(d1, d2, d3, d4, d5, d6);
        d++;
        if (d == 10) {
            d = 0;
        }
        delay_1s_ish();
    }
}
