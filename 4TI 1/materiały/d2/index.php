<?php

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body style="<?= $styl ?>"> 
<?php
// <?php echo $zmienna ?\> można zapisać jako <?= ?\>
while($row = mysqli_fetch_array($wynik_zapytania)) { ?>
   <p>
    <?php echo $row["imie"] ?> 
    <?php echo $row["nazwisko"] ?> otrzymał wynik <?php echo $row["wynik"] ?></p>
<?php } ?>
    
</body>
</html>