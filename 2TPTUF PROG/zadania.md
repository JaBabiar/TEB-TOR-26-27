# lista zadań na lekcje

## 08.10 - Koszyk 

- Lista produktów wypisana z bazy danych 
- Po kliknięciu w przycisk na karcie produktu dodaje się do koszyka w sesji lub ciasteczku
- Strona koszyk.php wyświetla wszystkie dodane rzeczy z kosza 

### Baza Danych 

```sql
CREATE DATABASE IF NOT EXISTS sklep_internetowy;
USE sklep_internetowy;

CREATE TABLE IF NOT EXISTS produkty(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(255) NOT NULL,
    producent VARCHAR(255) NOT NULL,
    cena FLOAT NOT NULL
);

INSERT INTO produkty(nazwa,producent,cena) VALUES
('iPhone 15 Pro Max', 'Apple', 3999.00),
('iPhone 15', 'Apple', 899.00),
('iPhone 14', 'Apple', 799.00),
('MacBook Pro M2', 'Apple', 2499.00),
('MacBook Air M1', 'Apple', 1299.00),
('AirPods Pro', 'Apple', 329.00),
('iPad Pro', 'Apple', 1599.00),
('iWatch Series 8', 'Apple', 449.00),
('Samsung Galaxy S24 Ultra', 'Samsung', 4299.00),
('Samsung Galaxy S23', 'Samsung', 999.00),
('Galaxy Z Fold 5', 'Samsung', 3799.00),
('Galaxy Tab S9', 'Samsung', 1099.00),
('Samsung Galaxy Buds2', 'Samsung', 249.00),
('Samsung Smart TV 55"', 'Samsung', 1899.00),
('LG G4 ThinQ Smartphone', 'LG', 699.00),
('LG OLED C3 Series TV', 'LG', 2999.00),
('LG Monitor 27"', 'LG', 499.00),
('LG Refrigerator', 'LG', 2299.00),
('Sony Xperia 1 IV', 'Sony', 1899.00),
('PlayStation 5 Console', 'Sony', 3799.00),
('Xperia 5 IV', 'Sony', 1099.00),
('Sony WH-1000XM5 Headphones', 'Sony', 449.00),
('Notebook Dell XPS 13', 'Dell', 3299.00),
('Dell Latitude 7420', 'Dell', 1899.00),
('Dell Monitor UltraSharp', 'Dell', 699.00),
('Laptop HP Spectre x360', 'HP', 2599.00),
('HP Pavilion Gaming', 'HP', 2199.00),
('HP DeskJet Plus', 'HP', 199.00),
('ThinkPad Lenovo T14', 'Lenovo', 2399.00),
('Lenovo IdeaPad 5', 'Lenovo', 1599.00),
('ThinkPad X1 Carbon', 'Lenovo', 3199.00),
('Asus ROG Strix Gaming PC', 'Asus', 4599.00),
('Asus ZenBook 14', 'Asus', 1899.00),
('Asus TUF Gaming Laptop', 'Asus', 2799.00),
('Acer Predator Helios 300', 'Acer', 2899.00),
('Acer Aspire 5', 'Acer', 1499.00),
('Nike Air Max 90', 'Nike', 699.00),
('Nike Jordan 1', 'Nike', 899.00),
('Nike Pro Training Gear', 'Nike', 299.00),
('Adidas Ultraboost Run Shoes', 'Adidas', 349.00),
('Adidas Superstar', 'Adidas', 279.00),
('Adidas Terrex Hiking Boots', 'Adidas', 399.00),
('Puma RS-X Sneaker', 'Puma', 199.00),
('Puma Suede Classic', 'Puma', 179.00),
('Zara Basic Cotton Shirt', 'Zara', 89.00),
('Zara Denim Jacket', 'Zara', 159.00),
('H&M Denim Jacket', 'H&M', 129.00),
('H&M T-Shirt Basic', 'H&M', 49.00),
('Uniqlo Ultra Light Down Jacket', 'Uniqlo', 399.00),
('Uniqlo U Crewneck Hoodie', 'Uniqlo', 199.00),
('Intel Core i7-13700K', 'Intel', 549.00),
('Intel Core i9-13900K', 'Intel', 699.00),
('AMD Ryzen 5 7600X', 'AMD', 349.00),
('AMD Ryzen 7 7800X3D', 'AMD', 549.00),
('AMD Ryzen 9 7950X', 'AMD', 749.00),
('NVIDIA RTX 4090 Graphics Card', 'NVIDIA', 1999.00),
('NVIDIA RTX 4080', 'NVIDIA', 1399.00),
('GeForce GTX 1650', 'NVIDIA', 279.00),
('Corsair Vengeance RAM 32GB', 'Corsair', 159.00),
('Corsair K95 Mechanical Keyboard', 'Corsair', 249.00),
('MSI GeForce RTX 4080', 'MSI', 1599.00),
('MSI MPG Gaming Monitor', 'MSI', 799.00),
('Philips Hue Smart Bulb', 'Philips', 79.00),
('Philips 27 4K Monitor', 'Philips', 599.00),
('Bosch WSK28560EU Dishwasher', 'Bosch', 1099.00),
('Bosch GSH Compact Blender', 'Bosch', 89.00),
('Siemens KG39LMA2E Refrigerator', 'Siemens', 2899.00),
('Siemens iQ70 Induction Cooktop', 'Siemens', 1599.00),
('Whirlpool WTW7100DW Top Load Washer', 'Whirlpool', 999.00),
('Whirlpool Microwave', 'Whirlpool', 299.00)
```