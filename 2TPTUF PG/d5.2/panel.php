<?php
session_start();


if(!isset($_SESSION['user'])){
    header("Location: index.php");
    exit;
}

?>

<a href="./logout.php">Logout</a>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2> Witaj, <?php echo $_SESSION['user'] ?>

    
</body>
</html>