<?php

    include_once('src/php/conect.php');

    $idUser = $_POST['iduser'];
    $email = $_POST['email'];
    $nome = $_POST['nome'];
    $texto = $_POST['texto'];

    $result = mysqli_query($con, "INSERT INTO interesse(email, nome, texto) VALUES ('$email', '$nome', '$texto')");

    header("Location: ../Fy/index.php?id=".$idUser);


?>