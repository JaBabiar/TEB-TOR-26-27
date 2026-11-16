# Kartkówka (Grupa B): Formularze GET i POST oraz integracja z bazą danych

**Cel zadania:** 
Sprawdzenie umiejętności tworzenia formularzy HTML z wykorzystaniem metod GET oraz POST, a także obsługi zapytań do bazy danych w środowisku PHP.

## Etap 1: Przygotowanie bazy danych (Książki)
```sql
CREATE DATABASE IF NOT EXISTS biblioteka CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE biblioteka;

CREATE TABLE IF NOT EXISTS ksiazki (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tytul VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    gatunek VARCHAR(60) NOT NULL
);

INSERT INTO ksiazki (tytul, autor, gatunek) VALUES
('Wiedźmin: Ostatnie życzenie', 'Andrzej Sapkowski', 'Fantasy'),
('Wiedźmin: Miecz przeznaczenia', 'Andrzej Sapkowski', 'Fantasy'),
('Lalka', 'Bolesław Prus', 'Powieść realistyczna'),
('Zbrodnia i kara', 'Fiodor Dostojewski', 'Powieść psychologiczna'),
('Mistrz i Małgorzata', 'Michaił Bułhakow', 'Realizm magiczny'),
('Rok 1984', 'George Orwell', 'Dystopia'),
('Folwark zwierzęcy', 'George Orwell', 'Satyra polityczna'),
('Diuna', 'Frank Herbert', 'Science fiction'),
('Solaris', 'Stanisław Lem', 'Science fiction'),
('Cyberiada', 'Stanisław Lem', 'Science fiction'),
('Hobbit, czyli tam i z powrotem', 'J.R.R. Tolkien', 'Fantasy'),
('Gra o tron', 'George R.R. Martin', 'Fantasy'),
('Harry Potter i Kamień Filozoficzny', 'J.K. Rowling', 'Fantasy'),
('Pan Lodowego Ogrodu. Tom 1', 'Jarosław Grzędowicz', 'Science fantasy'),
('Metro 2033', 'Dmitrij Głuchowski', 'Postapokalipsa'),
('Lśnienie', 'Stephen King', 'Horror'),
('Zielona mila', 'Stephen King', 'Dramat'),
('Kod Leonarda da Vinci', 'Dan Brown', 'Thriller'),
('Kasacja', 'Remigiusz Mróz', 'Thriller prawniczy'),
('Imię róży', 'Umberto Eco', 'Kryminał historyczny');
```

## Etap 2: Wyszukiwarka książek (Metoda GET)
1. Stwórz formularz HTML, który wykorzystuje **metodę GET**.
2. Formularz ma przesyłać wpisane dane do nowego pliku o nazwie `szukaj_ksiazki.php`.
3. W pliku `szukaj_ksiazki.php` napisz skrypt PHP, który pobierze dane z adresu URL i wyśle zapytanie do bazy danych. 
  - Przykład zapytania SQL: `SELECT * FROM ksiazki WHERE tytul LIKE 'zmienna_z_formularza'` (możesz dodać dodatkowe warunki, np. wyszukiwanie po autorze).
4. Wyświetl pobrane z bazy dane w czytelnej formie. Może to być lista, tabela lub kafelki. Każda książka musi być wizualnie oddzielona od pozostałych.
