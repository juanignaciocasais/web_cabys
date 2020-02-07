<?php
	
	include("conexion_bd.php"); 


	$sql = "SELECT fecha_hora, estado FROM gas ORDER BY fecha_hora DESC LIMIT 10";

	$resultado = mysqli_query($conexion,$sql) or die (mysqli_error($conexion));

	$data = array();

	while($fila=mysqli_fetch_assoc($resultado)){

		$data[] = $fila;

	}

	mysqli_close($conexion);		

	$data_json = json_encode($data);

	echo $data_json;


?>