<?php

require 'config.php';

$idalumno = mysqli_real_escape_string($conexion,$_POST['idalumno']);
$alumno = (int)$idalumno;



$queryOne =
    "SELECT DISTINCT momento FROM alumnoxasignatura WHERE idalumno = $alumno";




$get_query = mysqli_query($conexion, $queryOne);
$consulta = mysqli_num_rows($get_query);
$calificacion = array();

if ($consulta > 0) {
    while ($datos = mysqli_fetch_assoc($get_query)) {
        $fila = array(
            
            'momento' => $datos['momento'],

        );
        array_push($calificacion, $fila);
    }
    print(json_encode($calificacion));
} else {
    echo '0';
} 
