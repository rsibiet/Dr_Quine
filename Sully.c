#include <stdio.h>
#include <stdlib.h>
#define C "#include <stdio.h>%1$c#include <stdlib.h>%1$c#define C %2$c%3$s%2$c%1$c%1$cint	main(int ac, char %4$c%4$cav){%1$c	int i = %5$d;%1$c	char n[49];%1$c	FILE%4$c f = NULL;%1$c%1$c	if (ac && av[0][7] != %6$c%7$c0%6$c)%1$c		i--;%1$c	sprintf(n, %2$cSully_%%d.c%2$c, i);%1$c	f = fopen(n, %2$cw+%2$c);%1$c	fprintf(f, C, 10, 34, C, 42, i, 39, 92);%1$c	fclose(f);%1$c	sprintf(n, %2$cgcc -Wall -Wextra -Werror -o Sully_%%1$d Sully_%%1$d.c%2$c, i);%1$c	system(n);%1$c	sprintf(n, %2$c./Sully_%%d%2$c, i);%1$c	if (i > 0)%1$c		system(n);%1$c}"

int	main(int ac, char **av){
	int i = 5;
	char n[49];
	FILE* f = NULL;

	if (ac && av[0][7] != '\0')
		i--;
	sprintf(n, "Sully_%d.c", i);
	f = fopen(n, "w+");
	fprintf(f, C, 10, 34, C, 42, i, 39, 92);
	fclose(f);
	sprintf(n, "gcc -Wall -Wextra -Werror -o Sully_%1$d Sully_%1$d.c", i);
	system(n);
	sprintf(n, "./Sully_%d", i);
	if (i > 0)
		system(n);
}