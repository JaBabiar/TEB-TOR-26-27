<?php 
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $host = "localhost";    
    $user = "root";
    $pwd = "";
    $db = "szkoly_torun";
    $id_pol = mysqli_connect($host, $user, $pwd, $db);

    $login = $_POST['login'];
    $password = $_POST['password'];
    $hashPassword = password_hash($password, PASSWORD_DEFAULT); //Koduje haslo by nie było jawne w bazie danych

    $zapytanie = "INSERT INTO users(nazwa, haslo) VALUE('$login','$hashPassword')";
    $wynik = mysqli_query($id_pol, $zapytanie); // zwraca 1 albo 0 zależne czy zapytanie zostało wykonane poprawnie
    header("Location: ./register.php");
    exit;
};


?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">
        <label for="login">Login</label>
        <input type="text" name="login" id="login">
        <label for="email">E-mail</label>
        <input type="email" name="email" id="email">
        <label for="password">Haslo</label>
        <input type="password" name="password" id="password">

        <button type="submit">Rejestracja</button>
    </form>
</body>
</html>