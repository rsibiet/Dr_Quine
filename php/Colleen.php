#!/usr/bin/php
<?PHP
/*
	Comment0
*/

function f(){}

function main(){
/*
	Comment1
*/
	f();
	$c="#!/usr/bin/php%c<?PHP%c/*%c	Comment0%c*/%c%cfunction f(){}%c%cfunction main(){%c/*%c	Comment1%c*/%c	f();%c	%cc=%c%s%c;%c	printf(%cc, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 36, 34, %cc, 34, 10, 36, 36, 10, 10, 10);%c}%cmain();%c?>";
	printf($c, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 36, 34, $c, 34, 10, 36, 36, 10, 10, 10);
}
main();
?>