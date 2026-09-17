<?php
$host = "localhost";
$user = "root";
$pwd = "";
$db = "symulator_skrzynek";

$conn = mysqli_connect($host, $user, $pwd, $db);
$sql = "SELECT * FROM skrzynki";
$data = mysqli_query($conn, $sql);



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1> To jest lekcja z Baz Danych Pozdrawiam. Sprawdzasz właśnie skrzynke <?php var_dump($_GET) ?> </h1>
    <nav>
        <?php 
        while($row = mysqli_fetch_assoc($data)){
            echo "<a href='./?id=" . $row["id"]. "'>";
            echo($row['name']);
            echo " </a>";
        }
        ?>
    </nav>

    <section>
        <?php 
        if(!isset($_GET["id"])){
            echo "<h2> Nie wybrano skrzynki </h2>";
            exit;
        }
        $sql = "SELECT * FROM skiny WHERE id_skrzynki = " . $_GET['id'];

        $data2 = mysqli_query($conn, $sql)
        
        ?>



    </section>
</body>
</html>