# Programowanie PHP

## Lekcja 1 - Zmienne 

```php  
$zmienna_tekstowa = "tekst";        // String (ciąg znaków) - w cudzysłowie!
$zmienna_liczbowa = 67;              // Integer (całkowita)
$zmienna_liczbowa = 21.37;           // Float (dziesiętna) - PHP pozwala na podmianę typu
$zmienna_bool = true;                // Boolean: true lub false

// Tablice w PHP
$tablica = ["tung", "tung", "tung", "sahur"];  
// Nie numerowane - tablica asocjacyjna (bez kluczy)

$tablica_asocjacyjna = [
    "imie" => "Jan",        // Klucz: wartość
    "nazwisko" => "Kowalski"
];
// Tablica asocjacyjna - każdy klucz ma swoją nazwę
```

## Lekcja 2 - Praca z bazą danych (MySQLi)

```php
$host = "localhost";      // Serwer lokalny (domyślnie 127.0.0.1)
$user = "root";           // Użytkownik bazy (domyślnie root)
$pwd = "";                // Hasło - często puste w MySQL
$dbname = "nazwa_bazy";   // Nazwa konkretnej bazy

// Połączenie z bazą danych
$id_pol = mysqli_connect($host, $user, $pwd, $dbname);

// Sprawdzanie błędów połączenia (WAŻNE!)
if (!$id_pol) {
    die("Błąd połączenia: " . mysqli_connect_error()); // Zatrzymaj i wyświetl błąd
}

// Tworzenie zapytania SQL
$zapytanie = "SELECT * FROM posts";

// Wysyłanie zapytania do bazy
$wynik_zapytania = mysqli_query($id_pol, $zapytanie);

// Wypisanie wyniku (iterowanie po wynikach)
while($row = mysqli_fetch_assoc($wynik_zapytania)){
    echo $row["nazwa_kolumny"];  // Dostęp do danych w wierszu
}
```

## Lekcja 3 - Ciasteczka (Cookies)

```php
// Ustawienie ciasteczka
setcookie("nazwa", "wartość", time()+3600);
// Parametry: nazwa, wartość, czas ważności (obecny czas + 3600 sekund = 1 godzina)

// Wyświetlenie ciasteczka po stronie klienta
echo $_COOKIE['nazwa'];  // Dostępne tylko na serwerze!

// Przykład z datą i godziną
setcookie("data_zalogowania", "2026-10-08 15:30", time() + 86400*7);
// Ciasteczko ważne przez 7 dni
```

## Lekcja 4 - Formularze GET i POST

### **Metoda GET** (adres URL zawiera dane)

```html
<!-- HTML formularza -->
<form action="pobierz_dane.php" method="GET">
    <input type="text" name="username" placeholder="Wpisz użytkownika">
    <button>Wyślij</button>
</form>

<!-- W adresie URL pojawi się: pobierz_dane.php?username=jarek&wiek=25 -->
```

**Korzystanie z danych GET w PHP:**
```php
// Pobranie wartości z query string ($_GET)
$imie = $_GET['username'] ?? "anonim";     // Operacja ?? - jeśli brak klucza, domyślna wartość
wiek = $_GET['wiek'] ?? 18;               // Domyślne wiek to 18

// Wyświetlenie
echo $imie;  // Wypisze: "jarek"
```

### **Metoda POST** (dane w ciele zapytania - bezpieczniej!)

```html
<!-- Formularz POST -->
<form action="pobierz_dane.php" method="POST">
    <input type="text" name="username" placeholder="Wpisz użytkownika">
    <button>Wyślij</button>
</form>
```

**Korzystanie z danych POST w PHP:**
```php
// Pobranie wartości ($_POST)
$imie = $_POST['username'] ?? "anonim";

// Wyświetlenie (uwaga! HTML tagi mogą być wyświetlane jako tekst!)
echo $imie;

// Użycie htmlspecialchars - ZAWSZE zabezpieczaj dane przed XSS!
echo htmlspecialchars($imie);  // Bezpieczny wydruk!
```

### **Porównanie GET vs POST:**

| Metoda | Adres URL | Będność | Typowe zastosowanie |
|--------|-----------|---------|---------------------|
| GET    | Tak (widoczne) | Niska | Odniesienia, filtrowanie |
| POST   | Nie     | Wysoka | Formularze logowania, formularze |

### **Przykład bezpiecznego przetwarzania:**
```php
// Pobranie i zabezpieczenie danych z formularza
$imie = htmlspecialchars($_POST['username'] ?? "anonim", ENT_QUOTES);

// Walidacja (sprawdzanie czy pole nie jest puste)
if (empty($imie)) {
    die("Pole 'username' musi być wypełnione!");
}

// Dodawanie danych do bazy danych
$zapytanie = "INSERT INTO users (username) VALUES ('$imie')";
mysqli_query($id_pol, $zapytanie);
```


