<?php
session_start();

include "conecta.php";
 
  $mail = $_POST['email'];
  $passwd = $_POST['password'];

  //$passwd = $_POST['password'];
  //echo "Se tienen los datos<br>";
  $pwd = sha1($mail."pwd");
//Mat.: $am Mail: $mai  Passwd: $pwd<br>";
   
  $sBuscarAlu = "select * from tblalumnos where email='$mail'";

  //echo "<br>$sBuscarAlu<br>";
  $res = $mysqli->query($sBuscarAlu);
  //echo "Resultado: $res->num_rows";
  

  //  echo "<script language='javascript'>alert('Alumno Guardado con Exito!!!');</script>";
  if($res->num_rows==1){
    $tipo ="alumno";
    $row = $res->fetch_object();
    $_SESSION['usuario'] = $row->nombre;
    $_SESSION['tipo'] = $tipo;
    $dato = $_SESSION['usuario'];
    // echo "<script> alert('dato');</script>";
     echo '<script language="javascript">location.href=\'menu_alu.php\';</script>';
     
   }
  else{
        $sBuscarMtro = "select * from tblmaestros where email='$mail'";
         // NO SE ENCONTRO LA CUENTA EN ALUMNOS, BUSCAR EN MAESTROS
         $res = $mysqli->query($sBuscarMtro);
         if($res->num_rows==1){
            $tipo ="maestro";
            $row = $res->fetch_object();
            $_SESSION['usuario'] = $row->nombre;
            $_SESSION['tipo'] = $tipo;
            $dato = $_SESSION['usuario'];
    // echo "<script> alert('dato');</script>";
     echo '<script language="javascript">location.href=\'menu_mtro.php\';</script>';
     
   }

         //Si lo encuentra, $Tipo="Maestro";
         // y atributo ="M" si es solo maestro  o atributo = "A" maestro-admininstrador
          echo '<script language="javascript">location.href=\'menu_mtro.php\';</script>';

       //Si no se encuentra ni alumno ni maestro
       echo "<script>alert('Datos incorrectos!!');</script>";
       echo '<script language="javascript">location.href=\'index.html\';</script>';   
      }
    
?>
