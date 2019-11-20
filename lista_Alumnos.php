<?php	
    include "conecta.php";
    $qAlumnos = "select * from tblalumnos";
    $res  = $mysqli->query($qAlumnos);
    echo "Se recuperaron ". $res->num_rows ." Filas<br>";
    echo "<table border =1><thead><tr>";
    echo "<td>Matricula</td><td>Carrera</td><td>Nombre</td><td>Ap.Pat.</td><td>Ap.Mat.</td><td>Correo</td></tr></thead>";
    while($row = $res->fetch_object())
    {
    	echo "<tr><td>$row->matricula </td> <td>  $row->carrera </td><td>  $row->nombre </td><td>  $row->appat </td><td>  $row->apmat </td><td>  $row->email </td></tr>";
    }
    echo "</table>";

?>