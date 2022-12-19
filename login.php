<?php

require 'config.php';
$idalumno = mysqli_real_escape_string($conexion,$_POST['idalumno']);
$matricula = mysqli_real_escape_string($conexion,$_POST['matricula']);

$alumno = (int)$idalumno;
$matricula = (int)$matricula;



if ($idalumno != '' or $matricula != '' ) {
	$consulta = mysqli_query($conexion, "SELECT * FROM alumno WHERE idalumno ='$alumno' AND matricula = '$matricula'");
	$ver = mysqli_num_rows($consulta);

	if ($ver>0) {
		echo "true";

	}else{
		echo "id alumno o id matricula incorrectos";
	}
	
}else{
	
	echo "Debes de llenar todos los datos";
}



?>