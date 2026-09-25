<?php
session_start()



?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="./handleLogin.php" method="post">
        <label for="">Login</label>
        <input type="text" name="login">
        <label for="">Password</label>
        <input type="password" name="pwd">
        <button>Loguj</button>
    </form>

</body>
</html>


