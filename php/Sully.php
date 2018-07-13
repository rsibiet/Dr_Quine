#!/usr/bin/php
<?PHP
define('C', '#!/usr/bin/php%c<?PHP%cdefine(%cC%c, %c%s%c);%c%c%ci = %d;%cif (%cargv[0][5] != %c.%c)%c	%ci--;%c%cn = sprintf(%cSully_%%d.php%c, %ci);%c%cf = fopen(%cn, %cw+%c);%cfprintf(%cf, C, 10, 10, 39, 39, 39, C, 39, 10, 10, 36, %ci, 10, 36, 39, 39, 10, 36, 10, 36, 34, 34, 36, 10, 36, 36, 34, 34, 10, 36, 36, 10, 36, 10, 36, 34, 34, 36, 10, 36, 10, 36, 10);%cfclose(%cf);%c%cn = sprintf(%cphp Sully_%%d.php%c, %ci);%cif (%ci > 0)%c	system(%cn);%c?>');

$i = 5;
if ($argv[0][5] != '.')
	$i--;
$n = sprintf("Sully_%d.php", $i);
$f = fopen($n, "w+");
fprintf($f, C, 10, 10, 39, 39, 39, C, 39, 10, 10, 36, $i, 10, 36, 39, 39, 10, 36, 10, 36, 34, 34, 36, 10, 36, 36, 34, 34, 10, 36, 36, 10, 36, 10, 36, 34, 34, 36, 10, 36, 10, 36, 10);
fclose($f);
$n = sprintf("php Sully_%d.php", $i);
if ($i > 0)
	system($n);
?>