<?php 
$pyk1_nazwa = "zielek";
$pyk1_cena = "3zl";

$pyk2_nazwa = "Amor";
$pyk2_cena = "1zl";

$pyk3_nazwa = "tsvl";
$pyk3_cena = "10zl";

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    </style>
</head>
<body>
    <main>
        <div>
            <?php echo $pyk1_nazwa . " - " . $pyk1_cena; ?>
        </div>
        <div>
            <?php echo $pyk2_nazwa . " - " . $pyk2_cena; ?>
        </div>
        <div>
            <?= $pyk3_nazwa . " - " . $pyk3_cena; ?>
        </div>
    </main>
</body>
</html>
