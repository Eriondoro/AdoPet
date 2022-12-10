<?php
    ini_set('error_reporting', E_ALL);
    ini_set('display_errors', 1);
    include('conect.php');

    $Nome  = isset($_POST['Nome']) ? $_POST['Nome'] : '';
    $Email = isset($_POST['Email']) ? $_POST['Email'] : '';
    $Senha = ($_POST['Senha']);

    $sql = "INSERT INTO usuarios (nome, email, senha) VALUES ('$Nome','$Email','$Senha')";

    //echo $sql;

    if(mysqli_query($con, $sql)){
        header("location: /index.html");
        mysqli_close($con);
    }
    else{
        header("Location: /forms/sign.php");
        mysqli_close($con);
    }
    


?>