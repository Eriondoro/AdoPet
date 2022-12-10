<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='index.css'>
    <title>Index</title>

    <style>
@import url('https://fonts.googleapis.com/css2?family=Merriweather:wght@300&family=Roboto:ital,wght@0,300;1,100&display=swap');

        *{
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

html, body{
    height: 100vh;
    font-family: 'Roboto', sans-serif;
    background-image: linear-gradient(to right, rgb(37, 62, 200), rgb(74, 199, 215));
}
nav {
  display: flex;
  max-width: 100%;
  background-color: aliceblue;
  height: 10%;
  -webkit-box-shadow: 0px 10px 15px -7px rgba(0, 0, 0, 0.1);
  box-shadow: 0px 10px 15px -7px rgba(0, 0, 0, 0.1);
    text-decoration: none;
}

.hrefs {
  display: flex;
  justify-content: right;
  align-items: center;
  width: 100%;
  margin-right: 4%;

}

nav a {
  padding-right: 3%;
  color: black;
  font-size: max(1.3vw, 8px);
}

.logo {
  display: flex;
  margin-left: 3%;
  align-items: center;
}

nav .logo img {
  max-width: 45%;
}

.container{
    margin: 5%;
    height: 60%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.container .post{
    width: 40%;
    height: 80%;
    margin-bottom: 10%;
    background: white;
    border-radius: 15px;
    
    display: flex;
    flex-direction: column;

    -webkit-box-shadow: 8px 8px 17px 1px rgba(0,0,0,0.49); 
box-shadow: 8px 8px 17px 1px rgba(0,0,0,0.49);

}

.container .post .top {
    display: flex;
    height: 20%;
    align-items: center;
}

.container .post .actions{
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-around;
    height: 20%;
}
.container .post .actions a img{
   height: 50px;
   width: 50px;
}
.container .post p{
    width: 50%;
}

.container .post img{
    height: 60%;
}

header{
    background: rgba(0, 0, 0, 0.168);
    height: 10%;
    display: flex;
    flex-direction: row-reverse;
    align-items: center;
    justify-content: flex-end;
    
}
header a{
    text-decoration: none;
    color: white;
    margin: 10px;
}

    
    </style>

    <?php

        include_once('../forms/src/php/conect.php');

        $sql = "SELECT * FROM posts ORDER BY id_post DESC";

        $result = $con -> query($sql);

        $id = $_GET['id'];
    ?>
</head>
<body>
         <nav>
        <div class="logo">
          <img src="src/logo.png" alt="">
    </div>
    <div class="hrefs">
    <?php  
        echo "<a href='profile.php?id=$id'>Profile</a>";
         echo "<a href='post.php?id=$id'>Postar</a>";
    ?>
    </div>
    </nav>
       

        <div class="container">
            <?php
                while($DataUsers = mysqli_fetch_assoc($result)){
                    echo "<div class='post'>";
                    
                    echo "<div class='top'>";
                    echo "<p>".$DataUsers['titulo']."</p>"
                    echo "</div>";
                    echo "<img src='".$DataUsers['imagem']."'>";
                    echo "<div class='actions'>";
                    echo "<a href='/forms/interesse.php?id=".$DataUsers['id_user']."&iduser=$id'>Adotar</a>";
                    echo "<a href='comentarios/comentario.php?id=".$DataUsers['id_post']."&iduser=$id'>Comentar</a>";
                    echo "</div>";
                    echo "</div>";        
                    //<img src='comente.png'>  
                    //<img src='adoption.png'>
                }

            ?>
        </div>

    
</body>
</html>