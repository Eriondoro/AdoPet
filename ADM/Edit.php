<?php

    include_once('connection.php');

        $Nome = $_POST['nome'];
        $Email = $_POST['email'];
        $Senha = md5( $_POST['senha']);

        $sql = "UPDATE usuarios SET nome='$Nome', email='$Email', senha='$Senha' WHERE nome = '$Nome'";

        $result = $con -> query($sql);


       if($result){
        header('location: Read.php');
       }else{
        header("location: Read.php?msg='Algo deu errado'");
       }
?><?php

    include_once('connection.php');

        $Nome = $_POST['nome'];
        $Email = $_POST['email'];
        $Senha = md5( $_POST['senha']);

        $sql = "UPDATE usuarios SET nome='$Nome', email='$Email', senha='$Senha' WHERE nome = '$Nome'";

        $result = $con -> query($sql);


       if($result){
        header('location: Read.php');
       }else{
        header("location: Read.php?msg='Algo deu errado'");
       }
?><?php

    include_once('connection.php');

        $Nome = $_POST['nome'];
        $Email = $_POST['email'];
        $Senha = md5( $_POST['senha']);

        $sql = "UPDATE usuarios SET nome='$Nome', email='$Email', senha='$Senha' WHERE nome = '$Nome'";

        $result = $con -> query($sql);


       if($result){
        header('location: Read.php');
       }else{
        header("location: Read.php?msg='Algo deu errado'");
       }
?>