#!/usr/bin/php
<?PHP
/*
	Comment
*/

define('C', '#!/usr/bin/php%c<?PHP%c/%c%c	Comment%c%c/%c%cdefine(%cC%c, %c%s%c);%cdefine(%cA%c, %c10%c);%cdefine(%cB%c, %c34%c);%cfprintf(fopen(%cGrace_kid.php%c, %cw+%c), C, A, A, 42, A, A, 42, A, A, 39, 39, 39, C, 39, A, 39, 39, 39, 39, A, 39, 39, 39, 39, A, B, B, B, B, A);%c?>');
define('A', '10');
define('B', '34');
fprintf(fopen("Grace_kid.php", "w+"), C, A, A, 42, A, A, 42, A, A, 39, 39, 39, C, 39, A, 39, 39, 39, 39, A, 39, 39, 39, 39, A, B, B, B, B, A);
?>