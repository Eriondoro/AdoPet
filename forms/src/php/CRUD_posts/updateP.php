<?php

if(!empty($_GET['id'])){
    
    include_once('../conect.php');

    $id = $_GET['id'];

    $Select = 'SELECT * FROM posts WHERE id_post = '.$id;

    $result = $con -> query($Select);

    if($result -> num_rows > 0){
        while($DataUser = mysqli_fetch_assoc($result)){
            $id = $DataUser['id_post'];
            $titulo = $DataUser['titulo'];
            $imagem = $DataUser['imagem'];
        }
    }else{
       echo 'Errado';
    }
    }

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar</title>
</head>
<body>
    <form action="saveEditP.php" method="POST">
        <input type="hidden" value="<?php echo $id ?>" name='id'>
        <input type="text" value="<?php echo $titulo?>" name="titulo">
        <input type="text" value="<?php echo $imagem?>" name="imagem">
        <input type="submit" name="Update">
    </form>
</body>
</html>