eine Serverseitige, in HTML eingebundene, Scriptsprache

~~~php
<HTML>
<head>
....

<!--entweder-->
<?php
....  = liefert HTML-Code
?>

<!--oder (beser)-->
<script type="PHP">
....
</script>
</head>
...
</HTML>
~~~

## Datenbankverbindungen

mysqli:
~~~php
$h = "localhost";
$u = "root";
$pw = "";
$dbname = "...";

mysqli_connect($h, $u, $pw[, $dbname]);
mysqli_select_db($dbname);

$sql = "select * from person";
$erg = mysqli_query($sql);

$a = mysqli_fetch_assoc($erg);

~~~