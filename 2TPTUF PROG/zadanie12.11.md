**Zadanie: Obsługa formularzy metodą GET (PHP + MySQL)**
**Czas pracy:** 25 minut

---

### Część 1: Baza danych (do zaimportowania przed startem)

Uruchom poniższy kod SQL w phpMyAdmin, aby utworzyć bazę danych `sklep_kartkowka` oraz tabelę z produktami:

```sql
CREATE DATABASE IF NOT EXISTS sklep_kartkowka DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE sklep_kartkowka;

CREATE TABLE produkty (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(100) NOT NULL,
    kategoria VARCHAR(50) NOT NULL,
    cena DECIMAL(10, 2) NOT NULL
);

INSERT INTO produkty (nazwa, kategoria, cena) VALUES
('Klawiatura mechaniczna RGB', 'Peryferia', 249.99),
('Mysz bezprzewodowa Pro', 'Peryferia', 189.00),
('Monitor 24 cale 144Hz', 'Monitory', 699.00),
('Monitor 27 cali IPS', 'Monitory', 949.50),
('Słuchawki studyjne', 'Audio', 320.00),
('Mikrofon pojemnościowy USB', 'Audio', 210.00);

```

---

### Część 2: Treść zadania dla ucznia

Utwórz plik `index.php`, który zrealizuje prostą wyszukiwarkę produktów w sklepie internetowym.

#### 1. Warstwa HTML (Formularz)

Przygotuj formularz wysyłający dane metodą **GET** (do tego samego pliku), zawierający:

* **Pole wyboru (`<select>` o nazwie `kategoria`)** z opcjami:
* *Wszystkie* (wartość pusta `""`)
* *Peryferia* (wartość `"Peryferia"`)
* *Monitory* (wartość `"Monitory"`)
* *Audio* (wartość `"Audio"`)


* **Przycisk zatwierdzający** typu `submit` z napisem *"Filtruj"*.

#### 2. Warstwa PHP i MySQL (Logika i wyświetlanie)

Połącz się z bazą danych `sklep_kartkowka` (serwer `localhost`, użytkownik `root`, bez hasła) i zrealizuj następującą logikę:

1. Sprawdź, czy formularz został wysłany i czy pole `kategoria` nie jest puste (`!empty($_GET['kategoria'])`).
2. **Jeśli wybrano konkretną kategorię:** wykonaj zapytanie pobierające `nazwa` oraz `cena` wyłącznie dla produktów z wybranej kategorii.
3. **Jeśli nie wybrano kategorii (lub przy pierwszym wejściu na stronę):** wykonaj zapytanie pobierające `nazwa` oraz `cena` dla wszystkich produktów z tabeli.
4. Wyświetl pobrane produkty w formie listy wypunktowanej (`<ul><li>...</li></ul>`) według wzoru:
`Nazwa produktu - Cena zł` *(np. Monitor 24 cale 144Hz - 699.00 zł)*.
5. Zamknij połączenie z bazą danych.


Podeślij swój system oceniania (punktację i wymagania), gdy będziesz gotowy – dopasuję do niego arkusz oceny lub kryteria dla uczniów.
