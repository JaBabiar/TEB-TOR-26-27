# Zagadnienia na sprawdzian 

## Zagadnienie 1 - Łączenie z bazą 

```php
<?php 
    $host = "localhost"; // lub "127.0.0.1"
    $user = "root";
    $pwd = "";
    $db = "nazwa_bazy";

    $id_polaczenia = mysqli_connect($host, $user, $pwd, $db);

    /// Reszta Kodu HTML i PHP 

    </html>
    <?php mysqli_close($id_polaczenia) ?>


?>

```

## Zagadnienie 2 - Pobieranie danych z bazy

```php
    $zapytanie = "SELECT * FROM tabela WHERE cos = cos";
    $wynik_zapytania = mysqli_query($id_polaczenia, $zapytanie);
    $row = mysqli_fetch_assoc($wynik_zapytania);
```

## Zagadnienie 3 - Wypisanie danych na strone 

### Wersja Easy 
```php
    while($row = mysqli_fetch_assoc($wynik_zapytania)){
        echo "<tr class='table-cell_style'>";
        echo $row['cos'];
        echo "</tr>";
    }
```

### Wersja Hard 
```php
    <?php 
        while($row = mysqli_fetch_assoc($wynik_zapytania)){
    ?>
        <tr class='table-cell_style'> $row['cos'] </tr>;
    <?php } ?>

```
### Wersja Hard2
```php
    <?php 
        while($row = mysqli_fetch_assoc($wynik_zapytania)):
    ?>
        <tr class='table-cell_style'> $row['cos'] </tr>;
    <?php endwhile; ?>

```