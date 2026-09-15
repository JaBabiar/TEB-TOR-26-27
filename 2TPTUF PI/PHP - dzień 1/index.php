<?php
$host = "localhost";
$user = "root";
$pwd = "";
$db = "pc_szkola";

$id_polaczenia = mysqli_connect($host, $user, $pwd, $db);

//Dodanie komputera po wysłaniu formlarza
//Sprawdzamy czy istnieje POST nazwa i POST model 
if(
    isset($_POST['nazwa']) && 
    isset($_POST['model'])
    ){
    $nazwa = $_POST['nazwa'];
    $model = $_POST['model'];
    $sala = $_POST['sala'];
    $sql = "INSERT INTO komputery(nazwa,model,sala) 
    VALUES('$nazwa', '$model', '$sala')";
    echo $sql;
    mysqli_query($id_polaczenia, $sql);
    header("Location: ". $_SERVER['REQUEST_URI"']);
    exit();
}







$zapytanie = "SELECT * FROM komputery "; // trzeba pamietac o spacji
if(isset($_GET["sala"])){
    $sala = $_GET['sala'];
    $zapytanie .= "WHERE sala LIKE '%$sala%'"; // 

    // .= Wykona operacje $zapytanie = $zapytanie . "Where sala = '$sala'"
    // Doda nam to do siebie stringi
    // W like można wykorzystać % oraz * 
    // % - Jakaś liczba znaków lub brak znaku
    // _ jeden znak
}

echo $zapytanie;
$wynik_zapytania = mysqli_query($id_polaczenia, $zapytanie);

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
        <label for="nazwa">Nazwa</label>
        <input type="text" id="nazwa" name="nazwa">
        <label for="model">Model</label>
        <input type="text" id="model" name="model">
        <label for="sala">Sala</label>
        <input type="text" id="sala" name="sala">
        <button type="submit">Dodaj Komputer</button>
    </form>

    <!--Do linku trzeba wpisać np. ?sala=26 lub ?sala=27 -->
    <h1> Komputery w sali <?= $_GET["sala"] ?> </h1>
    <table>
        <tr>
            <th>id</th>
            <th>nazwa</th>
            <th>model</th>
            <th>sala</th>
        </tr> 
    <?php
        var_dump($wynik_zapytania);
        // zwraca ['num_rows'] 
        // ilość wierszy zwroconych przez
        // zapytanie

        while ($row = mysqli_fetch_assoc($wynik_zapytania)) {
    ?>
        <tr>
            <td><?= $row["id"] ?></td>
            <td><?= $row["nazwa"] ?></td>
            <td><?= $row["model"] ?></td>
            <td><?= $row["sala"] ?></td>
        </tr>
    <?php } ?>
  </table>

</body>
</html>