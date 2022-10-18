#include <stdio.h>

#include <kernel/tty.h>

void kernel_main(void) {
terminal_initialize();

printf("This is my Operating System :D");
// TODO: Get user input.
/*
int x;
scanf("%d", x);
printf("%d", x);
*/
}
