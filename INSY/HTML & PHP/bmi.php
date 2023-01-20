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

        Dein Alter ist <?php echo $alt?> und du hast einen BMI von <?php echo $bmi?>
    </body>
</html>