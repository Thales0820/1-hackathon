<?php 
    session_start();
    require "../config.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca - UniAlfa</title>
    <base href="<?php echo "http://" . $_SERVER["HTTP_HOST"] . $_SERVER["SCRIPT_NAME"]; ?>">
    <link rel="shortcut icon" href="imagens/logo.png">

    <!-- Bootstrap core JavaScript-->
    

    <!-- Outros Javascript -->

    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="paginas/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="paginas/css/style.css">
    <link rel="stylesheet" type="text/css" href="paginas/css/lightbox.min.css">
    <link rel="stylesheet" type="text/css" href="paginas/css/search.css">
    <script src="paginas/js/sweetalert2.min.js"></script>
    

    <link rel="stylesheet" href="paginas/css/sweetalert2.min.css"></script>
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>

</head>
<body id="page-top">
    <?php
        require "funcoes.php";

        if (!isset($_SESSION["usuario"])) {
            require "paginas/login.php";
        }else {
            //print_r($_GET["param"]);

            if (isset($_GET["param"])) {
                $page = explode("/", $_GET["param"]);
                
                $pasta = $page[0] ?? NULL;
                $pagina = $page[1] ?? NULL;
                $id = $page[2] ?? NULL;

                $page = "{$pasta}/{$pagina}";
            }

            require "header.php";

            if(file_exists("{$page}.php")) {
                require "{$page}.php";
            }else {
                require "paginas/erro.php";
            }            

            require "footer.php";
        }
    ?>

</body>
<script src="script.js"></script>
</html>