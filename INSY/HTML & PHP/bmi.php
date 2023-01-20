<!DOCTYPE html>
<html>
    <head>
        <title>BMI Calculated</title>
    </head>
    <body>
        <?php
        $alt = $_POST["falter"];
        $gro = $_POST["fgroese"];
        $gew = $_POST["fgewicht"];

        $bmi = $gew/pow(($gro/100), 2);

        $bmi = round($bmi);

        
        ?>
    </body>
</html>