<?php
    ini_set('error_reporting', E_ALL);
    ini_set('display_errors', 1);
    include_once('../conect.php');

    $titulo  = isset($_POST['titulo']) ? $_POST['titulo'] : '';
    $imagem = isset($_POST['imagem']) ? $_POST['imagem'] : '';

    $sql = "INSERT INTO posts (titulo, imagem) VALUES ('$titulo','$imagem')";

    echo $sql;

    if(mysqli_query($con, $sql)){
        header("location: /index.html");
        mysqli_close($con); 
    }
    else{
        header("location: sign.php");
        mysqli_close($con);
    }

?>