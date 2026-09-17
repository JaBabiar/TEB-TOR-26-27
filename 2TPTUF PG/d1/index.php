<?php 
$imie = "PashaBiceps";
$stan_konta = 0.94;
$dlug = true;
$konta_w_banku = ["wydatki" => 0.24, "oszczednosci" => 0.70];
$rodzina = ["mama", "siostra", "pies", "Ryba"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
        echo "<h2> To jest test Echo </h2>";
    ?>
    <!-- Metoda Template-->
    
    <?= "<h2> To jest test Template </h2>" ?>

    <h2>Informacje o <?php echo $imie ?> </h2>
    <ul>
        <li>Stan Konta <?php echo $stan_konta ?> zł</li>
        <li>Dług: <?php echo $dlug ?></li>
        <li>Konta: <?php echo $konta_w_banku["wydatki"] ?></li>
    </ul>

    <h2>Pętle</h2>
    <h3> For </h3>
    <ol> 
        <?php
            for ($i=1; $i <= 10; $i++) { 
                echo "<li>" . $i . "</li>";
            }
        ?>
    </ol>
    <h4> Wersja Expert </h4>
    <ol>
        <?php 
            for ($i=1; $i <= 10; $i++):
        ?>
            <li> <?= $i ?> </li>
        <?php endfor ?>
    </ol>

    <h3> Foreach </h3>
    <?php 
    echo "<h4> Witaj, ". $imie ."</h4>";
    foreach ($konta_w_banku as $key => $value) {
        echo $key;
    }
    ?>
</body>
</html>