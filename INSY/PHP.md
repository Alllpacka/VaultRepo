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
$h = 'localhost';
$u = 'root';
$pw = '';

mysqli_connect($h, $u, $pw);
~~~