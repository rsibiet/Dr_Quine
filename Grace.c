#include <stdio.h>

/*
	Comment
*/

#define C "#include <stdio.h>%1$c%1$c/%2$c%1$c	Comment%1$c%2$c/%1$c%1$c#define C %3$c%4$s%3$c%1$c#define PRINT C, 10, 42, 34, C%1$c#define F int main(void){fprintf(fopen(%3$cGrace_kid.c%3$c, %3$cw+%3$c), PRINT);}%1$cF"
#define PRINT C, 10, 42, 34, C
#define F int main(void){fprintf(fopen("Grace_kid.c", "w+"), PRINT);}
F