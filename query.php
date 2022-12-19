<?php

require 'config.php';

$idalumno = mysqli_real_escape_string($conexion, $_POST['idalumno']);
$idgrupo = mysqli_real_escape_string($conexion, $_POST['idgrupo']);
$momento = mysqli_real_escape_string($conexion, $_POST['momento']);




$query =
    "SELECT
    a.nomalumno,
    g.nomgrupo,
    m.nomasignatura,
    aa.momento,
    aa.calificacion,
    aa.calificacion_base,
    aa.asistencia
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
            'nomasignatura' => $datos['nomasignatura'],
            'momento' => $datos['momento']
            , 'calificacion' => $datos['calificacion'],
            'calificacion_base' => $datos['calificacion_base'],
            'asistencia' => $datos['asistencia'],

        );
        array_push($calificacion, $fila);
    }
    print(json_encode($calificacion));
} else {
    echo '0';
} 
