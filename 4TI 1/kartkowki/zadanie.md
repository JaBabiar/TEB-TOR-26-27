# Zadanie z łączenia z bazą danych 


## Tworzenie bazy danych 
```sql 
CREATE DATABASE IF NOT EXISTS SklepInternetowy;

USE SklepInternetowy;

CREATE TABLE IF NOT EXISTS produkty (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(128) NOT NULL,
    producent VARCHAR(64) NOT NULL,
    cena DECIMAL(10, 2) NOT NULL
);

INSERT INTO produkty (nazwa, producent, cena)
VALUES
    ('Mysz Komputerowa', 'MSI', 20.50),
    ('Mysz Komputerowa', 'MSI', 20.50),
    ('Klawiatura', 'Logitech', 89.99),
    ('Monitor', 'Samsung', 799.99),
    ('Laptop', 'Lenovo', 3499.99),
    ('Słuchawki', 'Sony', 149.99),
    ('Podkładka pod mysz', 'Genesis', 29.99),
    ('Mikrofon', 'Trust', 119.99),
    ('Kamera internetowa', 'Logitech', 159.99),
    ('Głośniki', 'Creative', 99.99);
```

## Zadanie 
- Połącz się z bazą danych Sklep Internetowy
- Wypisz wszystkie produkty 
- do wypisania produktu skorzystaj z znaczników 
    - h3 - dla nazwy
    - p - dla producenta
    - span - dla ceny 
