<?php 
session_start(); // start sesji
$id_pol = mysqli_connect("localhost", "root", "", "panel_teb_cms");

if (!$id_pol) {
    exit;
}
// sprawdzamy czy wysłano formularz 
if(isset($_POST['login']) && isset($_POST['pwd'])){
    $login = $_POST['login'];
    $pwd = $_POST['pwd'];

    $zapytanie = "SELECT * FROM users WHERE login = '$login'";
    $data = mysqli_query($id_pol, $zapytanie);
    
    $row = mysqli_fetch_assoc($data);
    // weryfikacja hasła z uwzględnieniem hasha
    if(password_verify($pwd , $row['pass'])){
        session_regenerate_id(true); // regeneracja sesji by zapobiec wykradaniu ID sesji z ciasteczek
        // dodanie zalogowania w sesji
        $_SESSION["loggedin"] = true;
        header("Location: panel.php");
        exit;
    }
    else { 
        header("Location: login.php?msg=bledne_haslo");
        exit;
    }
    
    //var_dump( password_verify($pwd , $row['pass'])); sprawdzenie czy haslo jest poprawne i wypisanie na stronie


} else { 
    header("Location: login.php?msg=brak_danych");
    exit;
}

?>