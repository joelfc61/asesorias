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
    <title>menu_alu</title>
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
                <h3 class="text-center">Bienvenido  <?php echo $usuario; ?> </h3></div>
            <div class="col-md-3">
                <header></header>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Menú ALumno 
                    <div class="btn-group" role="group">
                        <a class="btn btn-primary btn-lg" role="button" href="soli_cita.php">Solicitud Cita</a>
                        <a class="btn btn-info btn-lg" role="button" href="cambio_alu.html">Revisión Datos</a>
                        <a class="btn btn-primary btn-lg" role="button" href="cali_cita.html">Calificar Cita</a>
                        <a class="btn btn-info btn-lg" role="button" href="cambio_pwd.php">Cambio Pwd</a>
                        <a class="btn btn-danger btn-lg" role="button" href="index.html">Salir</a>
                    </div>
                </h2>
                <div class="row">
                    <div class="col-md-2 col-md-offset-1"></div>
                    <div class="col-md-6"><img src="assets/img/maestra1.jpg"></div>
                </div>
            </div>
        </div>
    </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>