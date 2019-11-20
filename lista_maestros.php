<?php	
    include "conecta.php";
    $qAlumnos = "select * from tblMaestros";
    $res  = $mysqli->query($qAlumnos);
    echo "Se recuperaron ". $res->num_rows ." Maestros<br>";
    echo "<table border =1><thead><tr>";
    echo "<td>Nombre</td><td>Ap.Pat.</td><td>Ap.Mat.</td><td>Correo</td></tr></thead>";
    while($row = $res->fetch_object())
    {
    	echo "<tr><td>$row->nombre </td> <td>  $row->appat </td><td>  $row->apmat </td><td>  $row->email </td></tr>";
    }
    echo "</table>";

?>