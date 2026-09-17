<?php 
if (!isset($_POST["imie"]) || $_POST["imie"] == "") {
    header("Location: ./ " );
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>
        Witaj, <?php echo $_POST['imie']; ?>
    </h2>
</body>
</html>