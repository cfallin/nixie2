#pragma once

/* util.c */
void delay();

/* gps.c */
void init_usart();
void enable_int0();
extern int h1, h2, m1, m2, s1, s2;

/* display.c */
void init_display();
void display_digits(int h1, int h2, int m1, int m2, int s1, int s2);

/* switches.c */
void init_switches();
void read_switches();
extern int switches;

/* timer.c */
void enable_timer_interrupt();

/* main.c */
void do_pps();
void do_timer_int();
void do_gps_time(int h1, int h2, int m1, int m2, int s1, int s2);
