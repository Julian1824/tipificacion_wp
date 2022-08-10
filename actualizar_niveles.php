<?php

include("conexion.php");

$id_matriz=$_POST['id_matriz'];
$nivel_1=$_POST['nivel_1'];
$nivel_2=$_POST['nivel_2'];
$nivel_3=$_POST['nivel_3'];
$documentacion=$_POST['documentacion'];
$clave=$_POST['clave'];

if($clave=="TG*2021e")
{
$query="UPDATE `matriz` SET `nivel_1`='$nivel_1', `nivel_2`='$nivel_2', `nivel_3`='$nivel_3', `documentacion`='$documentacion'  where id_matriz='$id_matriz';";
$resultadoc=$conexion->query($query);

//echo $query;
header("Location:editor.php");  
}
else
{
header("Location:editor.php");    
 
}



?>