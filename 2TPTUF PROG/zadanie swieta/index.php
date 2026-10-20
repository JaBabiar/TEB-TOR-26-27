<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="./submit-sweater.php" method="post">
        <label for="imie">Imie</label>
        <input type="text" name="imie" id="imie" required>

        <label for="nazwisko">Nazwisko</label>
        <input type="text" name="nazwisko" id="nazwisko" required>

        <select name="rozmiar" id="rozmiar" required>
            <option value="s">S</option>
            <option value="m">M</option>
            <option value="l">L</option>
            <option value="xl">XL</option>
        </select>

        <label for="czas">Ile godzin robiłeś/aś sweter?</label>
        <input type="number" name="czas" id="czas" required>\
        
        <input type="checkbox" name="lampki" id="lampki">
        <label for="lampki">Czy ma lampki</label>

        <label for="inspiracja">Opis Inspiracji</label>
        <textarea name="inspiracja" id="inspiracja"></textarea>

        <button type="submit">Zgłoszenie</button>
    </form>
</body>
</html>