<?php

include("conexion.php");

$nivel_1=$_POST['nivel_1'];
$nivel_2=$_POST['nivel_2'];
$nivel_3=$_POST['nivel_3'];
$documentacion=$_POST['documentacion'];
$clave=$_POST['clave'];

if($clave=="TG*2021e")
{
    $query="INSERT INTO `matriz`(`nivel_1`, `nivel_2`, `nivel_3`, `documentacion`) VALUES ('$nivel_1', '$nivel_2', '$nivel_3', '$documentacion');";
    $resultadoc=$conexion->query($query);
}



header("Location:editor.php");  

?>