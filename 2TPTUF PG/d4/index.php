<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<h2> Ta strona została wygenerowana przez <?php var_dump($_REQUEST) ?>

<main>
    <section>
        <h3>Formularz POST</h3>
        <form action="./user_page.php" method="post">
            <input type="text" name="imie" id="imie">
            <button type="submit">POST</button>
        </form>
    </section>
    <section>
        <h3>Formularz GET</h3>
        <form action="" method="get">
            <input type="text" name="imie" id="imie">
            <button type="submit">GET</button>
        </form>
    </section>

    <section>
        <h3>Formularz Wyszukaj</h3>
        <form action="./browser.php" method="post">
            <input type="text" name="query" id="query">
            <select name="engine" id="engine">
                <option value="ddg">DuckDuckGo</option>
                <option value="qwant">Qwant</option>
                <option value="eco">Ecosia</option>
            </select>
            <button type="submit">POST</button>
        </form>
    </section>
</main>
</body>
</html>