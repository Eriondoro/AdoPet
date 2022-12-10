<?php
    ini_set('error_reporting', E_ALL);
    ini_set('display_errors', 1);
    include_once('../forms/src/php/conect.php');

    $id = $_POST['id'];
    $titulo = $_POST['titulo'];
    $image = $_POST['img'];

    $sql= "INSERT INTO posts (id_user, titulo, imagem) VALUES ('$id', '$titulo', '$image')";

    if(mysqli_query($con, $sql)){
        echo 'Post inserido';
    }else{
         echo 'Post não inserido';
    }

?>