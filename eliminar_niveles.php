<?php

include("conexion.php");

$clave=$_POST['clave'];

$id_matriz=$_POST['id_matriz'];

if($clave=="TG*2021e")
{
    $query="DELETE FROM `matriz` where id_matriz='$id_matriz';";
    $resultadoc=$conexion->query($query);

}else{
    echo '<div  class="alert alert-success alert-dismissible fade show" role="alert">
    Eliminado Corretamente
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>'; 
}

?>