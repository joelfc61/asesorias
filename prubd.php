<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	

<?
$inidat = parse_ini_file("config.ini");
// print_r($inidat);

$mysqli = new mysqli('localhost', $inidat['USER'], $inidat['PASS'],$inidat['DBNAME']);
if(!$mysqli){
	echo " Hubo un error: ".$mysqli->error;
}	

/*
$enlace =  mysqli_connect('localhost', $inidat['USER'], $inidat['PASS']);
if (!$enlace) {
    die('No pudo conectarse: ' . mysql_error());

}
*/

// echo 'Conectado satisfactoriamente'."<br>";

//mysqli_select_db($enlace,$inidat['DBNAME'] );
	
$mysqli->set_charset("utf8");
	
$sql =   "select * from tblmaterias";
 
//$res = mysqli_query($enlace,$sql);
$res = $mysqli->query($sql);
echo "Los campos son: " .$mysqli->field_count."<br>";
print_r($mysqli->get_charset());
/*	
if(!$res){
	echo "Hubo un error: ".mysqli_error($enlace);
}
*/
	
//$numfilas = mysqli_num_rows($res);
$numfilas = $res->num_rows;

if($numfilas>0){
   echo "Se tienen $numfilas registros"."<br>";
}
else
{
   echo "No filas reconocidas"."<br>";
}
 $num=1;
echo "<table border= 2>";
echo "<tr><td>Num.</td><td>Materia</td></tr>";
	
//while($row = mysqli_fetch_assoc($res)){
while($row = $res->fetch_object()){	

    echo "<tr><td width='30' align='center'>$num</td><td>".$row->nombre_materia."</td></tr>";
  $num++;
}
 echo "</table>";

?>


</body>
</html>