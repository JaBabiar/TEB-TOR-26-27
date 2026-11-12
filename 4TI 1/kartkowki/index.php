<?php
$imie = "amor";
$stanowisko = "Noga kawa";
$wiek = 67;

$nazwa = "Ifon 18 PRO MAX DUO AIR";
$cena = 67.67;
$dost = TRUE;
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2> Zadanie 1</h2>
    <div>
        <h2>
            <?php echo $imie ?> Skibidi
        </h2>
        <p><b> <?php echo $stanowisko; ?></b></p>
        <p><?= $wiek; ?></p>
    </div>

        <h2> Zadanie 2</h2>
    <div>
        <h3>
            <?php echo $nazwa ?> Skibidi
        </h3>
        <p><b> <?php echo $cena; ?></b></p>
        <p><?= $dost ? "Dost" : "False"; ?></p>
    </div>
</body>
</html>