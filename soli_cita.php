<?php
  session_start();
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>soli_cita</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
</head>

<body>
    <?
       include "conecta.php";
    ?>
    <div class="container" style="margin-top: 40px;">
        <div class="row">
            <div class="col-md-5"><img class="img-responsive" src="assets/img/LogoLargoUniva.jpg"></div>
            <div class="col-md-4">
                <h2 class="text-center">Sistema de Asesorias</h2>
            </div>
            
            <div class="col-md-3">
                <header></header>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Solicitud de Asesoría</h1>
                <div class="row">
                    <div class="col-md-2 col-md-offset-1"></div>
                    <div class="col-md-6">
                        <form class="form-horizontal" action="menu_alu.html" method="post" enctype="multipart/form-data">
                            <label>Elegir Profesor</label>
                            <select class="form-control">
                                    <?
                                  $qMtros = "select * from tblmaestros";
                                  $res = $mysqli->query($qMtros);
                                  while($row = $res->fetch_assoc()){
                                       $nombre = $row[nombre]." ".$row[appat]." ".$row[apmat];
                                    echo "<option value='$row[idMaestro]'>$nombre</option>";
                                  }
                                    
                                ?>
                                 <!--
                                    <option value="12" selected="">Joel Flores Cervantes</option>
                                    <option value="13">Martín Rodriguez Robles</option>
                                    <option value="14">Jorge Macías Garza</option>
                                -->
                            </select>
                            <label>Elegir Materia</label>
                            <select class="form-control">
                                <?
                                  $qMat = "select * from tblmaterias";
                                  $res = $mysqli->query($qMat);
                                  while($row = $res->fetch_assoc()){

                                    echo "<option value='$row[idmateria]'>$row[nombre_materia]</option>";
                                  }
                                    
                                ?>
                              <!--
                                    <option value="12" selected="">Programación Orientada a Objetos</option>
                                    <option value="13">Graficación por Computadora</option>
                                    <option value="14">Estructura de Datos y Algoritmos</option>
                                -->
                            
                            </select>
                            <label>Horario </label>
                            <select class="form-control">
                            
                                    <option value="12" selected="">Lunes 23 Nov 2019 12:00</option>
                                    <option value="13">Miércoles 25 Nov 2019 18:00</option>
                                    <option value="14">Viernes 27 Nov 2019 11:30</option>
                            
                            </select>
                            <label>Descripción Motivo</label>
                            <textarea class="form-control"></textarea>
                            <a class="btn btn-primary" role="button" href="menu_alu.php">Enviar </a></form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>