<?php


function getEvento($dispositivo) {
	include("conexion_bd.php"); 

	$sql = "SELECT * FROM eventos WHERE dispositivo = '".$dispositivo."' ORDER BY fecha_hora DESC LIMIT 1";

	$resultado = mysqli_query($conexion,$sql) or die (mysqli_error($conexion));

	$data = array();

	while($fila=mysqli_fetch_assoc($resultado)){

		// $fila['datos'] = json_decode($fila['datos']);
		$data[] = $fila;

	}

	mysqli_close($conexion);		
	return count($data) ? $data[0] : Array();
};

$status = Array();
$status["bomba1"] = getEvento("bomba1");
$status["bomba2"] = getEvento("bomba2");
$status["sensorGas"] = getEvento("sensorGas");
$status["sensorHumo"] = getEvento("sensorHumo");
$status["sensorInundacion"] = getEvento("sensorInundacion");
$status["falta220"] = getEvento("falta220");

$data_json = json_encode($status);

echo $data_json;

?>