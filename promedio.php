<?php

require 'config.php';

$idalumno = mysqli_real_escape_string($conexion, $_POST['idalumno']);
$idgrupo = mysqli_real_escape_string($conexion, $_POST['idgrupo']);
$momento = mysqli_real_escape_string($conexion, $_POST['momento']);




$query =
    "SELECT
    a.nomalumno,
    g.nomgrupo,
    aa.momento,
    AVG( aa.calificacion_base) AS promedio_base,
    AVG( aa.calificacion) AS promedio
FROM
    alumnoxasignatura AS aa
INNER JOIN alumno AS a ON
    aa.idalumno=a.idalumno
INNER JOIN asignatura AS m ON
    m.idasignatura=aa.idasignatura
INNER JOIN grupo AS g ON
    g.idgrupo=aa.idgrupo
WHERE
    aa.idalumno=$idalumno and
    aa.idgrupo=$idgrupo and
    momento=$momento"
;

$get_query = mysqli_query($conexion, $query);
$consulta = mysqli_num_rows($get_query);
$calificacion = array();

if ($consulta > 0) {
    while ($datos = mysqli_fetch_assoc($get_query)) {
        $fila = array(
            'nomalumno' => $datos['nomalumno'],
            'nomgrupo' => $datos['nomgrupo'],
            'momento' => $datos['momento']
            , 'promedio_base' => $datos['promedio_base'],
            'promedio' => $datos['promedio'],

        );
        array_push($calificacion, $fila);
    }
    print(json_encode($calificacion));
} else {
    echo '0';
} 
