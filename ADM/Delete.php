<?php
    ini_set('error_reporting', E_ALL);
    ini_set('display_errors', 1);
    include_once('connection.php');

    $Nome  = $_POST['nome'];
    $sql = "DELETE FROM usuarios WHERE nome = '$Nome'"; 
    
    //echo $sql;
    
    if(mysqli_query($con, $sql)){
        header("location: Read.php");
        mysqli_close($con);
    }
    else{
        echo 'Errado';
        mysqli_close($con);
    }
    ?><?php
    ini_set('error_reporting', E_ALL);
    ini_set('display_errors', 1);
    include_once('connection.php');

    $Nome  = $_POST['nome'];
    $sql = "DELETE FROM usuarios WHERE nome = '$Nome'"; 
    
    //echo $sql;
    
    if(mysqli_query($con, $sql)){
        header("location: Read.php");
        mysqli_close($con);
    }
    else{
        echo 'Errado';
        mysqli_close($con);
    }
    ?>