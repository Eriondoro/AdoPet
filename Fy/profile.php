<?php

            include_once('./../forms/src/php/conect.php');

            $id = $_GET['id'];

            $select = 'SELECT * FROM usuarios WHERE id = '.$id;

            $result = $con -> query($select);

        ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="profile.css">
    <title>Document</title>
</head>
<body>
    <nav>
        <div class="logo">
          <img src="src/logo.png" alt="">
    </div>
    <div class="hrefs">
    <?php if($id == 17){
        echo "<a href='adm.php?id=$id'>Area ADM</a>"
    } else{
        echo"";
    } ?>
      <?php  echo "<a href='index.php?id=$id'>Fou You Page</a>";?>
      <a href="php/logout.php" class="navLinks2">Sair</a>
    </div>
    </nav>
    <div class="tudo">
    <div class="info">
        <div class="landtext">
          <div class="landinfo">
        <?php
                   if($DataUsers = mysqli_fetch_assoc($result)){ 
                      echo "<img src='".$DataUsers['picture']."'>";
                      echo "<p>ㅤ</p>"; 
                      echo "<h3>". $DataUsers['nickname']."</h3>"; 
                      echo "<p>ㅤ</p>";
                      echo "<h4>Biografia:</h4>";
                      echo "<p>ㅤ</p>";
                      echo "<p>". $DataUsers['bio']."</p>";
                      echo "<p>ㅤ</p>";
                      echo "<p>ㅤ</p>";
                      echo "<a href='php/editperfil.php?id=$DataUsers[id]'>Editar perfil</a>";
                    }
                ?>
      </div>
      </div>
      </div>
      <div class="posts">
      <?php
            
        $sqlp = "SELECT * FROM posts WHERE id_user = $id";

        $resultp = $con -> query($sqlp);

    ?>


          
            <div class="container">
            <?php
                while($DataUsers = mysqli_fetch_assoc($resultp)){
                    echo "<div class='post'>";
                    echo "<div class='top'>";
                    echo $DataUsers['titulo'];
                    echo "</div>";
                    echo "<img src='".$DataUsers['imagem']."'>";
                }

            ?>
            </div>
</div>
</div>
</body>
</html>