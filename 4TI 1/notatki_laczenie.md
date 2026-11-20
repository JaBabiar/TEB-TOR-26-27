1. ### Łączenie z serwerem i bazą danych
```php
   <?php
   $id_pol = mysqli_connect("localhost", "root", "", "nazwa_bazy");
   // Funkcja zwraca identyfikator połączenia (obiekt) lub FALSE w przypadku błędu
?>
```

2. ### Tworzenie i wysyłanie zapytania SQL
```php
$zapytanie = "SELECT kolumna1, kolumna2 FROM tabela WHERE warunek;";
$wynik = mysqli_query($id_pol,$zapytanie);
```
3. ### Pobieranie i wypisywanie danych
Pętla `while` wykonuje się dopóki w wyniku zapytania znajdują się nieodczytane wiersze. Funkcja `mysqli_fetch_assoc()` pobiera pojedynczy rekord jako tablicę asocjacyjną, gdzie kluczami są nazwy kolumn z bazy danych.
```php
while ($row = mysqli_fetch_assoc($wynik)) {
    echo $row['kolumna1'] . " " . $row['kolumna2'] . "<br>";
}
```
4. ### Zamknięcie połączenia
Na samym końcu skryptu należy zamknąć połączenie z bazą danych:
```php
mysqli_close($id_pol);
?>
```
## Dodatkowe informacje – Struktura HTML w PHP
```php
<ul>
<?php
    while ($row = mysqli_fetch_assoc($wynik)) {
        echo "<li>" . $row['imie'] . " " . $row['nazwisko'] . "</li>";
    }
?>
</ul>
```
```php
<table>
    <tr>
        <th>Tytuł</th>
        <th>Cena</th>
    </tr>
    <?php
        while ($row = mysqli_fetch_assoc($wynik)) {
            echo "<tr>";
            echo "<td>" . $row['tytul'] . "</td>";
            echo "<td>" . $row['cena'] . " zł</td>";
            echo "</tr>";
        }
    ?>
</table>
```

```
