<?php 
setcookie("ns_theme", "dark", time()+(60*60*24*365));


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="<?php 
    if(isset($_COOKIE['ns_theme']))
    { 
        echo $_COOKIE['ns_theme']; 
    }
    ?>"
>
    <h1>To Jest test ciastek</h1>
</body>
</html>