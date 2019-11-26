<?

include "conecta.php";
include "debugger.php";
$sql = "select * from tblalumnos";

 
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


  $pwd = sha1($mai);
  pDebug($carr."  ".$tipo."  ".$pwd." ".$checado." ".$tipo);

//Mat.: $am Mail: $mai  Passwd: $pwd<br>";
  if($nom && $ap && $am && $mai) {
    if($tipo =='alumno'){
     $sInsAlu = "insert into tblalumnos(matricula,nombre,appat,apmat,email,password,status,cambiar_password,carrera,numcelular,fecharegistro) 
                                   values('$matr','$nom','$ap','$am','$mai','$pwd',1,1,'$carr','$cel',now())";
   }
    else {
     $sInsAlu = "insert into tblMaestros(nombre,appat,apmat,email,password,status,cambiopwd,ubicacion,areasapoyo,fechareg) 
                                       values('$nom','$ap','$am','$mai','$pwd',1,1,'$cubic','$areas',now())";  
   }
   pDebug($sInsAlu);


  
     // echo "<br>$sInsAlu<br>";
  //   $res = $mysqli->query($sInsAlu);
     //echo "Resultado: $res";
    // echo $sInsAlu."<br>";
     echo "<script language='javascript'>alert('Alumno Guardado con Exito!!!'+$sInsAlu);</script>";
  }
  echo '<script language="javascript">location.href=\'acceso_alu.html\';</script>';   


?>