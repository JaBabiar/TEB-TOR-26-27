<?php
$id_pol = mysqli_connect("127.0.0.1", "root","", "amor");

/*
CREATE DATABASE IF NOT EXISTS amor;
use amor; 

CREATE TABLE IF NOT EXISTS amory(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(64)
);

INSERT INTO amory(nazwa) VALUES('mi amor'), ('sentino'), ('lekcja temat')
"

*/
$zapytanie = "SELECT nazwa FROM amory";
$wynik = mysqli_query($id_pol, $zapytanie);

?>

<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
        while($row = mysqli_fetch_assoc($wynik)){
            echo "<p>";
            echo $row['nazwa'];
            echo "</p>";
        }    
    ?>
</body>
</html>

<?php
mysqli_close($id_pol);
?>