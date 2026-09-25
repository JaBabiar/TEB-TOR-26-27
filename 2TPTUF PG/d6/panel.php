<?php
session_start();

if(!isset($_SESSION["loggedin"])){
    header("Location: login.php");
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
    <form action="./handleNewsForm.php" method="post">
    <label for="title">Tytuł</label>
    <input type="text" name="title">
    <label for="text">Tytuł</label>
    <textarea name="text"> </textarea>
    <button>Dodaj Post</button>
    </form>
</body>
</html>