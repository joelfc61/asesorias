<?

include "conecta.php";
include "debugger.php";
 
  $matr = $_POST['matricula'];
  $nom =  $_POST['nombre'];
  $ap = $_POST['appat'];
  $am = $_POST['apmat'];
  $mai = $_POST['email'];
   //echo "Se tienen los datos<br>";
  $carr = $_POST['carrera'];
  $cubic = $_POST['ubicacion'];
  $areas = $_POST['areasapoyo'];
  $tipo = $_POST['tipo'];

  if($_POST['prucheck']) 
    $checado="si";
  else
    $checado="no";

  $partes = explode("@", $mai);
  pDebug($partes[0]);

  $pwd = sha1($partes[0]."Pwd");
  pDebug($carr."  ".$tipo."  ".$pwd." ".$checado." ".$tipo);

//Mat.: $am Mail: $mai  Passwd: $pwd<br>";
  if($nom && $ap && $am && $mai) {
     if($tipo =='alumno'){
       $sInsAlu = "insert into tblalumnos(matricula,nombre,appat,apmat,email,password,status,cambiar_password,carrera,numcelular,fecharegistro) 
                                   values('$matr','$nom','$ap','$am','$mai','$pwd',1,1,'$carr','$cel',now())";
       $mysqli->query($sInsAlu);
       echo "<script language='javascript'>alert('Alumno Guardado con Exito!!!');</script>";
     }
    else {
     $sInsMtro = "insert into tblMaestros(nombre,appat,apmat,email,password,status,cambiopwd,ubicacion,areasapoyo,fechareg) 
                                       values('$nom','$ap','$am','$mai','$pwd',1,1,'$cubic','$areas',now())";  
     $mysqli->query($sInsMtro);      
     echo "<script language='javascript'>alert('Maestro Guardado con Exito!!!');</script>";
    }
    pDebug($sInsAlu);

    
  }
  echo '<script language="javascript">location.href=\'acceso.html\';</script>';   


?>