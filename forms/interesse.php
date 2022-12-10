<?php

    

?>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Form de Interesse</title>
    <link rel="stylesheet" href="src/css/interesse.css">
  </head>

  <body>

    <div class="container">


      <div class="col col1">
        <img src="./src/img/email.png" alt="">
      </div>
      <div class="col col2">
          <h1>Interesse</h1>
          <div class="form">
          <form method="POST" action="interessa.php">
              <input type="text" placeholder="Nome" name="nome">
              <input type="email" placeholder="Email" name="email">
              <textarea name="texto" id="" rows="5" placeholder="Texto"></textarea>
              <input type='hidden' name='iduser' value=<?php echo $_GET['iduser']; ?>>
              <div class="controls">
                <button type="submit" name="submit">Enviar</button>
                <a href='../Fy/index.php?id=<?php echo $_GET['iduser']; ?>'>Cancelar</a>
             </div>
          </form>
        </div>
      </div>

    </div>


    

  </body>
</html>
