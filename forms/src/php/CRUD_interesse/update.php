<?php

if(isset($_GET['id'])){
    
    include_once('../conect.php');

    $id = $_GET['id'];

    $Select = 'SELECT * FROM interesse WHERE id_post = '.$id;

    $result = $con -> query($Select);

    if($result -> num_rows > 0){
        while($DataUser = mysqli_fetch_assoc($result)){
            $id_post = $DataUser['id_post'];
            $name = $DataUser['nome'];
            $email = $DataUser['email'];
            $texto = $DataUser['texto'];
        }
    }else{
       echo ('Errado');
    }
  }

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <title>Editar</title>
</head>
<body>
    <form action="SaveEdit.php" method="POST">
        <input type="hidden" name="id" value="<?php echo $id_post?>"></input>
        <input type="text" name="nome" value="<?php echo $name?>"></input>
        <input type="email" name="email" value="<?php echo $email?>"></input>
        <input type="text" name="texto" value="<?php echo $texto?>"></input>
        <input type="submit" name="Update"></input>
    </form>
</body>
</html>

