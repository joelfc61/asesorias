<?php
$datos= parse_ini_file("config.ini",TRUE);
//echo "Se va a conectar a: ".$datos[BD][SERVER].",".$datos[BD][USER].",".$datos[BD][PASS].",".$datos[BD][DBNAME]."<BR>";
$mysqli = new mysqli($datos['BD']['SERVER'],$datos['BD']['USER'],$datos['BD']['PASS'],$datos['BD']['DBNAME']);
 if($mysqli->error){
     echo "No se pudo  crear la conexion";
 }else{
    $mysqli->query("SET NAMES 'utf8'");
    //echo "Conexion exitosa!";
 }



?>