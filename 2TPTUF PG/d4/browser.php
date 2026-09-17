<?php 
    echo $_POST['query'];
    echo $_POST['engine'];
    switch ($_POST['engine']) {
        case 'eco':
            $redirect = "https://www.ecosia.org/search?method=index&q=";
            break;
    }
    $redirect .= $_POST['query'];
    header('Location: '. $redirect);


?>
