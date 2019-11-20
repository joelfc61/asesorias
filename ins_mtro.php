<?

include "conecta.php";
  //$nomina = $_POST[nomina];
  $nom =  $_POST['nombre'];
  $ap = $_POST['appat'];
  $am = $_POST['apmat'];
  $mai = $_POST['email'];
  
  $pwd = sha1($mai);
  // echo "Matricula: $matr<br>Nombre: $nom Ap. Pat.: $ap Ap. Mat.: $am Mail: $mai  Passwd: $pwd<br>";
   
  $sInsMtro = "insert into tblmaestros(nombre,appat,apmat,email,password,status) values('$nom','$ap','$am','$mai','$pwd',1)";
//  echo "<br>$sInsMtro<br>";
  $res = $mysqli->query($sInsMtro);
  //echo "Resultado: $res";

    echo "<script language='javascript'>alert('Maestro Guardado con Exito!!!');</script>";
    echo '<script language="javascript">location.href=\'menu_admin.html\';</script>';   

?>