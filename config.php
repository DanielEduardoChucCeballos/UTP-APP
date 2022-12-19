<?php

$username = "root";
$password = "mariadb";
$servername = "localhost";
$database = "calificaciones";



$conexion = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conexion) {
    die("Connection failed: " . mysqli_connect_error());
}


?>
