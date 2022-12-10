<?php
    include_once('../conect.php');

    $titulo  = isset($_POST['titulo']) ? $_POST['titulo'] : '';

    $sql = "DELETE FROM posts WHERE titulo = '$titulo'"; 
    
    echo $sql;
    
    if(mysqli_query($con, $sql)){
        header("location: readP.php");
    }
?>