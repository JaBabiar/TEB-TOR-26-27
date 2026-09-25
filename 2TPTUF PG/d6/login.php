<?php
session_start();

if(isset($_SESSION["loggedin"])){
   header("Location: panel.php");
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
    <form action="./handleLoginForm.php" method="post">
        <label for="login">login</label>
        <input type="text" name="login">

        <label for="pwd">Password</label>
        <input type="password" name="pwd">
        <button>Loguj</button>
    </form>
</body>
</html>