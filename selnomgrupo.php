<?php

require 'config.php';

$idalumno = mysqli_real_escape_string($conexion,$_POST['idalumno']);
$alumno = (int)$idalumno;



$queryOne =
    "SELECT DISTINCT grupo.nomgrupo , grupo.idgrupo
FROM grupo   
INNER JOIN alumnoxasignatura   
ON grupo.idgrupo = alumnoxasignatura.idgrupo 
WHERE idalumno  = $alumno AND alumnoxasignatura.momento = 1";




$get_query = mysqli_query($conexion, $queryOne);
$consulta = mysqli_num_rows($get_query);
$calificacion = array();

if ($consulta > 0) {
    while ($datos = mysqli_fetch_assoc($get_query)) {
        $fila = array(
            
            'nomgrupo' => $datos['nomgrupo'],
            'idgrupo' => $datos['idgrupo'],
            

        );
        array_push($calificacion, $fila);
    }
    print(json_encode($calificacion));
} else {
    echo '0';
} 
