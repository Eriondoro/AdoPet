<?php
    include_once('../conect.php');

    $Nome  = isset($_POST['nome']) ? $_POST['nome'] : '';

    $sql = "DELETE FROM interesse WHERE nome = '$Nome'"; //A lógica do delete é a mesma que o de insert, só que aqui vamos excluir do banco o usuário referente ao nome digitado no input :)
    
    //echo $sql;
    
    if(mysqli_query($con, $sql)){
        header("location: read.php");
    }
    //Essa é uma simples aplicação do delete, mas ele pode ser utilizado por meio do id do usuário após ele clicar no botão de deletar o seu registro, por exemplo.
    ?>