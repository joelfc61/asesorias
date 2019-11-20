<?php
session_start();

include "conecta.php";
 
  $mail = $_POST['email'];
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
    $row = $res->fetch_object();
    $_SESSION['alumno'] = $row->nombre;
    $dato = $_SESSION['alumno'];
    // echo "<script> alert('dato');</script>";
     echo '<script language="javascript">location.href=\'menu_alu.php\';</script>';   

   }
  else{
       echo "<script>alert('Datos incorrectos!!');</script>";
       echo '<script language="javascript">location.href=\'index.html\';</script>';   
      }
    
?>