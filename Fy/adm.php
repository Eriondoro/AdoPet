<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <style> 

    *{
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
}

body{
    font-family: 'Raleway', sans-serif;
    font-weight: 600;
    color: black;
    background-image: linear-gradient(to right, rgb(37, 62, 200), rgb(74, 199, 215));
    width: 100%;
    height: 100vh;
    font-size: 20px;
}
    .tudo{
    width: 100%;
    height: 80%;
    display: flex;
    justify-content: space-around;
    align-items: center;
   }

   .card{
    width: 40%;
    background-color: white;
    padding: 10px;
    display: flex;
    align-items: center;
    border-radius: 20px;
    flex-direction: column;
    justify-content: center;
   }
   .cruds{
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }

  .cruds a{
    text-decoration: none;
    color: white;
    background-color: grey;
    font-weight: bold;
    border-radius: 20px;
    padding: 10px 35px 10px 35px;
    text-transform: uppercase;
    font-size: 15px;
    margin: 30px 0px 0px 0px;
  }
    
    </style>

    <?php

    $id = $_GET['id'];
    ?>

</head>
<body>

    <div class="tudo">
    <div class="card">
    <div class="cruds">
        <h2>Controle de dados</h2>
        <?php  echo "<a href='../ADM/Read.php'>Usuarios</a>"; ?>
        <?php  echo "<a href='../forms/src/php/CRUD_posts/readP.php'>Postagens</a>"; ?>
        <?php  echo "<a href='comentarios/consulta.php'>Comentarios</a>"; ?>
        <?php  echo "<a href='../forms/src/php/CRUD_interesse/read.php'>Formulários de interesse</a>"; ?>
        <?php  echo "<a href='../forms/src/php/User_logs/readLogger.php'>Logs de usuário</a>"; ?>
        <?php  echo "<a href='index.php?id=$id'>Acessar sistema</a>";?>
        </div>
    </div>

        </div>
        </div>
    </div>
    </div>
</body>
</html>