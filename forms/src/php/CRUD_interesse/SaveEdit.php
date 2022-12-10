<?php

    include_once('../conect.php');

    if(isset($_POST['Update'])){
        $id_post = $_POST['id'];
        $nome = $_POST['nome'];
        $email = $_POST['email'];
        $texto = ($_POST['texto']);


        $sql = "UPDATE interesse SET id_post='$id_post', nome='$nome', email='$email', texto='$texto' WHERE id_post = $id_post";

        $result = $con -> query($sql);

    
    }

     header("Location: read.php");


?>