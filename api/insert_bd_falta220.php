<?php

include("conexion_bd.php"); 

$fecha_hora = $_POST['fecha_hora'];
$estado = $_POST['estado'];	


$sql = "INSERT INTO `falta220`(`estado`, `fecha_hora`) VALUES ('".$estado."', '".$fecha_hora."')";

mysqli_query($conexion,$sql);

$chequeo = mysqli_affected_rows($conexion);  

if ($chequeo > 0){
echo "Listo el pollo";
}
else {
	echo "Acá falta cocción...";
}

mysqli_close($conexion);

?>