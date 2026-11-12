## Zmienne PHP

```php

$zminna = "string"
$tablice = ["", "", 2]
$tablice = ["json" => "tekst"]
var_dump($_POST) // Zminenne formularza POST
var_dump($_GET) // zmienne formularza GET
var_dump($_COOKIE) // Ciasteczja
var_dump($_SERVER) // Dane Serwera
var_dump($_SESSION) // Sesja
```

## Łączenie z bazą danych 

### Łączenie
```php
$host = "localhost";
$user = "root";
$pwd = "";
$dbname = "test";

$id_pol = mysqli_connect($host, $user, $pwd, $dbname);
```
### Zapytania

```php
$zapytanie "SELECT * FROM tabela
$wynik_zap = mysqli_query($id_pol, $zapytanie)
```

### Wypisanie danych z bazy Wersja 1
```php
while($row = mysqli_fetch_array($wynik_zapytania)) { ?>
   <p>
    <?php echo $row["imie"] ?> 
    <?php echo $row["nazwisko"] ?> otrzymał wynik <?php echo $row["wynik"] ?></p>
<?php } ?>
```
### Wypisanie danych z bazy Wersja 2 

```php
while($row = mysqli_fetch_array($wynik_zapytania)) {
    echo "<p>";
    echo $row["imie"]; 
    echo $row["nazwisko"] ;
    echo "otrzymał wynik " .  $row["wynik"];
    echo "</p>";
    } 

```
