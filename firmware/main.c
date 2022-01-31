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

#include <avr/interrupt.h>

#include "nixie.h"

#define EXPECTED_TIMER_TICKS_PER_SEC 78125 // 20MHz / 256

#define DEFAULT_TZ -8  // PST (UTC-8)

int tzoff = DEFAULT_TZ;
long timer_ticks = 0;
long hz = EXPECTED_TIMER_TICKS_PER_SEC;
long hz_staged = 0;

#define DISPLAY_TIME 0
#define DISPLAY_TZOFF 1
int display_mode = 0;

#define UI_TIME 0
#define UI_TO_SET_TZ 1
#define UI_SET_TZ 2
#define UI_FROM_SET_TZ 3
#define UI_SET_TZ_HPLUS 4
#define UI_SET_TZ_HMINUS 5
int ui_state = 0;

void do_ui() {
    switch (ui_state) {
    case UI_TIME:
        display_mode = DISPLAY_TIME;
        if (switches & 8) {
            ui_state = UI_TO_SET_TZ;
        }
        break;
    case UI_TO_SET_TZ:
        display_mode = DISPLAY_TIME;
        if (!(switches & 8)) {
            ui_state = UI_SET_TZ;
        }
        break;
    case UI_SET_TZ:
        display_mode = DISPLAY_TZOFF;
        if (switches & 2) {
            tzoff++;
            if (tzoff == 24) {
                tzoff = 23;
            }
            ui_state = UI_SET_TZ_HPLUS;
        }
        if (switches & 1) {
            tzoff--;
            if (tzoff == -24) {
                tzoff = -23;
            }
            ui_state = UI_SET_TZ_HMINUS;
        }
        if (switches & 8) {
            ui_state = UI_FROM_SET_TZ;
        }
        break;
    case UI_FROM_SET_TZ:
        display_mode = DISPLAY_TZOFF;
        if (!(switches & 8)) {
            ui_state = UI_TIME;
        }
        break;
    case UI_SET_TZ_HPLUS:
        display_mode = DISPLAY_TZOFF;
        if (!(switches & 2)) {
            ui_state = UI_SET_TZ;
        }
        break;
    case UI_SET_TZ_HMINUS:
        display_mode = DISPLAY_TZOFF;
        if (!(switches & 1)) {
            ui_state = UI_SET_TZ;
        }        
        break;
    }
}

void update_display() {
    switch (display_mode) {
    case DISPLAY_TIME: {
        int h = h1*10 + h2;
        h += tzoff;
        if (h < 0) {
            h += 24;
        }
        if (h >= 24) {
            h -= 24;
        }
        int display_h1 = h / 10;
        int display_h2 = h % 10;
        display_digits(display_h1, display_h2, m1, m2, s1, s2);
        break;
    }
    case DISPLAY_TZOFF:
        if (tzoff < 0) {
            int t = -tzoff;
            int tens = t / 10;
            int ones = t % 10;
            display_digits(15, 15, 15, 15, tens, ones);
        } else {
            int t = tzoff;
            int tens = t / 10;
            int ones = t % 10;
            display_digits(tens, ones, 15, 15, 15, 15);
        }
        break;
    }
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
        do_ui();
        update_display();
    }
}

void do_pps() {
}

void do_timer_int() {
}

void do_gps_time(int _h1, int _h2, int _m1, int _m2, int _s1, int _s2) {
    h1 = _h1;
    h2 = _h2;
    m1 = _m1;
    m2 = _m2;
    s1 = _s1;
    s2 = _s2;
}
