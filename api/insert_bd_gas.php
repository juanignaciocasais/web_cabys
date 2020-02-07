<?php

$fecha_hora = $_POST['fecha_hora'];
$estado = $_POST['estado'];

//conectar a BD//

const SERVER = "localhost";
const USUARIO = "root";
const CLAVE = "";
const BASE = "cabys";

$conexion = mysqli_connect(SERVER,USUARIO,CLAVE,BASE);

mysqli_set_charset($conexion,"utf8");	


$sql = "INSERT INTO `gas`(`estado`, `fecha_hora`) VALUES ('".$estado."', '".$fecha_hora."')";

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