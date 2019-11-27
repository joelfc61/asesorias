<?php
session_start();

$usuario = $_SESSION['usuario'];
$tipo = $_SESSION['tipo'];
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cambio_pwd</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
</head>

<body>
    <div class="container" style="margin-top: 40px;">
        <div class="row">
            <div class="col-md-5"><img class="img-responsive" src="assets/img/LogoLargoUniva.jpg"></div>
            <div class="col-md-4">
                <h2 class="text-center">Sistema de Asesorias</h2></div>
            <div class="col-md-3">
                <h3 class="text-center">  </h3></div>
            <div class="col-md-3">
                <header></header>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Cambio de Password</h1></div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <form method="post" enctype="multipart/form-data">
                    <label>Anterior </label>
                    <input class="form-control" type="password" placeholder="Password Actual">
                    <label>Nuevo </label>
                    <input class="form-control" type="password" placeholder="Password Nuevo">
                    <label>Confirmar </label>
                    <input class="form-control" type="password" placeholder="Confirmar">
                    <?php if ($tipo=="alumno") { ?>
                    <a class="btn btn-primary" role="button" href="menu_alu.php">Cambiar </a>
                    <a class="btn btn-info" role="button" href="menu_alu.php">Cancelar </a>
                    <?php } ?> 
                    <?php if ($tipo=="maestro") { ?>
                    <a class="btn btn-primary" role="button" href="menu_mtro.php">Cambiar </a>
                    <a class="btn btn-info" role="button" href="menu_mtro.php">Cancelar </a>
                    <?php } ?> 
                    
               </form>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>