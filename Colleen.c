#include <stdio.h>

/*
	Comment0
*/

void f(void){}

int main(void){
/*
	Comment1
*/
	f();
	char *c="#include <stdio.h>%c%1$c/*%1$c	Comment0%1$c*/%1$c%1$cvoid f(void){}%1$c%1$cint main(void){%1$c/*%1$c	Comment1%1$c*/%1$c	f();%1$c	char *c=%2$c%3$s%2$c;%1$c	printf(c, 10, 34, c);%1$c}";
	printf(c, 10, 34, c);
}