<?php
    include_once('../conect.php');

    if(isset($_POST['Update'])){
        $id = $_POST['id'];
        $titulo = $_POST['titulo'];
        $imagem = $_POST['imagem'];

        echo $id;

        $sql = "UPDATE posts SET titulo='$titulo', imagem='$imagem' WHERE id_post = '$id'";

        $result = $con -> query($sql);
    
    }
        header('location: readP.php');
?>