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

$con = mysqli_connect($h, $u, $pw[, $dbname]);
mysqli_select_db($dbname);

$sql = "select * from person";
$erg = mysqli_query($sql);

$a = mysqli_fetch_assoc($erg);

echo $a["NA"];

//oder

echo $a[2];

mysqli_close($con);
~~~