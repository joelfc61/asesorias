<?

  include "conecta.php";
  $mat = $_POST['materia'];
   
  $sInsMat = "insert into tblmaterias(nombre_materia) values('$mat')";
  $res = $mysqli->query($sInsMat);
  echo "Resultado: $res";

    echo "<script language='javascript'>alert('Materia Guardada Exitosamente!!!');</script>";
    echo '<script language="javascript">location.href=\'menu_admin.html\';</script>';   

?>