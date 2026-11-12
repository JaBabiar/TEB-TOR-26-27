Poniżej zaktualizowana wersja kartkówki – baza została rozszerzona o prostą tabelę `zamowienia` (bez relacji/kluczy obcych, żeby uczniowie mogli zrobić zwykły `INSERT`, dokładnie jak na egzaminie INF.03), a do zadania doszedł drugi, uproszczony formularz `POST`.

**Kartkówka: Formularze GET i POST (PHP + MySQL)**
**Czas pracy:** 35 minut

---

### Część 1: Baza danych (do zaimportowania przed startem)

```sql
CREATE DATABASE IF NOT EXISTS sklep_kartkowka DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE sklep_kartkowka;

CREATE TABLE produkty (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(100) NOT NULL,
    kategoria VARCHAR(50) NOT NULL,
    cena DECIMAL(10, 2) NOT NULL
);

CREATE TABLE zamowienia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_produktu VARCHAR(100) NOT NULL,
    ilosc INT NOT NULL,
    imie_klienta VARCHAR(50) NOT NULL
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

Utwórz plik `index.php`, który obsługuje filtrowanie produktów (GET) oraz składanie prostego zamówienia (POST).

#### 1. Formularz filtrowania (Metoda GET)

Przygotuj formularz wysyłający dane metodą **GET** (do tego samego pliku), zawierający:

* **Pole wyboru (`<select>` o nazwie `kategoria`)** z opcjami:
* *Wszystkie* (wartość pusta `""`)
* *Peryferia* (wartość `"Peryferia"`)
* *Monitory* (wartość `"Monitory"`)
* *Audio* (wartość `"Audio"`)


* **Przycisk zatwierdzający** typu `submit` z napisem *"Filtruj"*.

#### 2. Wyświetlanie listy produktów (PHP + MySQL)

Połącz się z bazą danych `sklep_kartkowka` (`localhost`, `root`, bez hasła):

* Jeśli wybrano konkretną kategorię (`!empty($_GET['kategoria'])`), pobierz `nazwa` oraz `cena` tylko z tej kategorii.
* W przeciwnym razie pobierz `nazwa` oraz `cena` wszystkich produktów.
* Wyświetl wyniki jako listę wypunktowaną (`<ul><li>...</li></ul>`) według wzoru: `Nazwa produktu - Cena zł`.

#### 3. Formularz zamówienia (Metoda POST)

Poniżej listy produktów utwórz drugi formularz wysyłający dane metodą **POST** (do tego samego pliku), zawierający:

* Pole tekstowe `nazwa_produktu` (np. z etykietą *"Nazwa produktu"*).
* Pole liczbowe `ilosc` (`type="number"`, z etykietą *"Ilość"*).
* Pole tekstowe `imie_klienta` (z etykietą *"Twoje imię"*).
* Przycisk `submit` z napisem *"Zamów"*.

#### 4. Obsługa zamówienia w bazie danych (PHP + MySQL)

* Sprawdź, czy formularz POST został wysłany oraz czy wszystkie trzy pola nie są puste (`!empty(...)`).
* Zapisz dane do tabeli `zamowienia` za pomocą zapytania `INSERT INTO`.
* Wyświetl pod formularzem krótki komunikat potwierdzający, np.: *"Zamówienie zostało przyjęte!"*.
* Zamknij połączenie z bazą danych.
