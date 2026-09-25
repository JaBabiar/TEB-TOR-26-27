<?php
session_start();

$valid_login = "Admin";
$valid_password = "Admin24";

if($_SERVER["REQUEST_METHOD"] == "POST"){
    $login = $_POST['login'];
    $pwd = $_POST['pwd'];

    if ($valid_login == $login && $valid_password == $pwd) {
        session_regenerate_id(true);
        
        $_SESSION['user'] = $login;
        header("Location: panel.php");
        exit;
    } else { 
        $_SESSION['error'] = "Błędne dane logowania";
        header("Location: index.php");
        exit;
    }
} else {
        header("Location: index.php");
        exit;
}