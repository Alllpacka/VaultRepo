<!DOCTYPE html>
<html>
    <head>
        <title>Bodymass-Index</title>
    </head>
    <body>
        <?php
        $alt = 16;
        $gro = 170;
        $gew = 75;

        $bmi = ($alt+$gew)/exp($gro);
        
        echo "<h1>Bodymass-Index</h1>";
        echo "<br><br>";
        echo "Alter: $alt<br>";
        echo "Größe: $gro cm<br>";
        echo "Gewicht: $gew kg<br>";
        echo "BMI: $bmi"
        ?>
    </body>
</html>