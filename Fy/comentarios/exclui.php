<?php
    ini_set('error_reporting', E_ALL);
    ini_set('display_errors', 1);
    include_once('connection.php');

    $id  = isset($_POST['id']) ? $_POST['id'] : '';

    $sql = "DELETE FROM comentario WHERE id_coment = '$id'"; 
    	//A lógica do delete é a mesma que o de insert, só que aqui vamos excluir do banco o usuário referente ao nome digitado no input :)

    if(mysqli_query($con, $sql)){
        header("location: consulta.php");
        mysqli_close($con);
    }
    else{
        header("location: exclui.php"); 
        mysqli_close($con);
    }
    //Essa é uma simples aplicação do delete, mas ele pode ser utilizado por meio do id do usuário após ele clicar no botão de deletar o seu registro, por exemplo.

?>