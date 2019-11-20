<?

include "conecta.php";
$sql = "select * from tblalumnos";

 
  $matr = $_POST['matricula'];
  $nom =  $_POST['nombre'];
  $ap = $_POST['appat'];
  $am = $_POST['apmat'];
  $mai = $_POST['email'];
  $carr = $_POST['carrera'];
  //echo "Se tienen los datos<br>";
  $pwd = sha1($mai);
//Mat.: $am Mail: $mai  Passwd: $pwd<br>";
  if($matr && $nom && $ap && $am && $mai) {
     $sInsAlu = "insert into tblalumnos(matricula,nombre,appat,apmat,email,password,status,cambiar_password,carrera) values('$matr','$nom','$ap','$am','$mai','$pwd',1,1,'$carr')";
     // echo "<br>$sInsAlu<br>";
     $res = $mysqli->query($sInsAlu);
     //echo "Resultado: $res";
    // echo $sInsAlu."<br>";
     echo "<script language='javascript'>alert('Alumno Guardado con Exito!!!'+$sInsAlu);</script>";
  }
  echo '<script language="javascript">location.href=\'acceso_alu.html\';</script>';   


?>