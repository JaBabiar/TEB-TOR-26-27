<?php
$host = "127.0.0.1";//to samo co localhost
$name = "root";
$pwd = "";
$db = "sklep_internetowy";
$conn = mysqli_connect($host, $name, $pwd, $db);

if(!$conn){
    echo "Bład laczenia z baza danych";
    exit;
}

$sql = "SELECT * FROM games";
$data = mysqli_query($conn, $sql);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sklep z Grami Tebownik</title>
    <link rel="stylesheet" href="./styles.css">
</head>
<body>
    <section>
        <article class="card">
            <div class="img-wrapper">
                <img src="https://cdn2.steamgriddb.com/thumb/4904f82c12cecf6ec070fe77d7e913ce.jpg" alt="">
            </div>
            <div class="card-content">
                <h3>Wiedźmin 3: Dziki Gon</h3>
                <p>Epicka gra RPG z otwartym światem.</p>
                <button>KUP za 99.99</button>
            </div>
        </article>
    </section>

</body>
</html>