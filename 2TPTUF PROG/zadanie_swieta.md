# 🎄 Zadanie: Konkurs na najbrzydszy sweter świąteczny

**Cel:** Stworzenie formularza HTML (metoda `POST`) oraz przygotowanie zapytania SQL, które zapisze zgłoszenia konkursowe do bazy danych.

## 📖 Scenariusz
Szkoła organizuje coroczny konkurs na **najbrzydszy sweter świąteczny**. Uczniowie zgłaszają się przez formularz na stronie internetowej. Twoim zadaniem jest przygotowanie formularza oraz backendu, który bezpiecznie zapisze dane do bazy. Im brzydszy sweter — tym większa szansa na wygraną! 🎅

## 🗄️ Skrypt bazy danych (SQL)

```sql
CREATE TABLE sweater_contest (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sweater_size ENUM('S', 'M', 'L', 'XL') NOT NULL,
    knitting_hours INT NOT NULL,
    has_lights BOOLEAN DEFAULT FALSE,
    inspiration TEXT,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO sweater_contest (first_name, last_name, sweater_size, knitting_hours, has_lights, inspiration)
VALUES 
('Anna', 'Kowalska', 'M', 12, TRUE, 'Renifer z brokatem i migającymi lampkami'),
('Piotr', 'Nowak', 'XL', 3, FALSE, 'Bałwan z trzema głowami'),
('Kasia', 'Wiśniewska', 'S', 20, TRUE, 'Choinka, która wygląda jak brokuł');
```

## 📝 Wymagania (Formularz HTML)
Stwórz formularz wysyłający dane metodą `POST` na endpoint `/submit-sweater`. Formularz musi zawierać pola odpowiadające kolumnom z bazy danych:
1. **Imię** (wymagane, max 50 znaków).
2. **Nazwisko** (wymagane, max 50 znaków).
3. **Rozmiar swetra** (wybór jednej z opcji: *S, M, L, XL*).
4. **Ile godzin robiłaś/eś sweter?** (liczba całkowita, wymagane).
5. **Czy sweter ma lampki?** (tak/nie).
6. **Opis inspiracji** (opcjonalny, pole tekstowe).

## 🧪 Dane testowe
Użyj danych z `INSERT INTO` powyżej, aby przetestować poprawność działania formularza i zapytania SQL.

