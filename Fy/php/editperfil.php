<?php

if(isset($_GET['id'])){
    
  include('../../forms/src/php/conect.php');
  
    $id = $_GET['id'];

    $Select = 'SELECT * FROM usuarios WHERE id = '.$id;

    $result = $con -> query($Select);

        while($DataUser = mysqli_fetch_assoc($result)){
            $id = $DataUser['id']; 
            $nick = $DataUser['nickname'];
            $img = $DataUser['picture'];
            $bio = $DataUser['bio'];
        }
      }

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar perfil</title>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Merriweather:wght@300&family=Roboto:ital,wght@0,300;1,100&display=swap');

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  text-decoration: none;
}

body,
hmtl {
  height: 100vh;
  font-family: 'Roboto', sans-serif;
  background-size: cover;
  background-image: linear-gradient(to right, rgb(37, 62, 200), rgb(74, 199, 215));
  margin: 0px;
  padding: 0px;
  width: 100%;
display: flex;
}

.container {
  display: flex;
  height: 85vh;
  width: 60%;
  background-color: aliceblue;
  border-radius: 20px;
  margin: auto;
}

.container h1 {
  font-size: 22px;
  margin-bottom: 3%;
}

.container .col {
  width: 100%;
}

.container .col2 .form {
  width: 40%;
}

.container .col2 form {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
}

.container .col2 {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.container .col .form input {
  width: 100%;
  border-radius: 20px;
  border: none;
  background-color: #bfb6b668;
  width: 100%;
  height: 35px;
  padding: 10px;
  margin: 5px;
}


.container .col2 .form form .controls {
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: baseline;
  margin-top: 2%;
}

.container .col2 .form form .controls a {
  text-decoration: none;
  color: black;
  padding: 8.5px 14.5%;
  margin: 10px;
  background-color: #bfb6b668;
  border-radius: 20px;
  font-size: 14px;

}

.container .col2 .form form .controls input {
  cursor: pointer;
  font-family: 'Roboto', sans-serif;
  font-size: 14px;
}

.container .col2 .form form .controls {
  width: 100%;
}
    </style>
</head>
<body>
        <div class="container">
        <div class="col col2">
            <h1>Editar perfil</h1>
            <div class="form">
            <form action="save.php" method="POST">
       <input type="hidden" name="id" value="<?php echo $id?>"></input>
        <p>Link da imagem de perfil:</p>
        <input type="text" name="img" value="<?php echo $img?>"></input>
        <p>Nickname:</p>
        <input type="text" name="nick" value="<?php echo $nick?>"></input>
        <p>Biografia:</p>
        <input type="text" name="bio" value="<?php echo $bio?>"></input>
        <div class="controls">
        <input type="submit" name="Update"></input>
         <?php  echo "<a href='/Fy/profile.php?id=$id'>Cancelar</a>";?>
        </div>
            </form>
          </div>
        </div>
    </div>
        </div>
      </div>
</body>
</html>