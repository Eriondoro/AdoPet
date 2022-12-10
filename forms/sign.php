<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./src/css/sign.css">
</head>
<body>

    <div class="container">

        <div class="col col2">
            <h1>Cadastro</h1>
            <div class="form">
            <form method="POST" action="./src/php/cadastro.php">
                <input type="text" name="Nome" placeholder="Nome">
                <input type="email" placeholder="Email" name="Email">
                <input type="password" placeholder="Senha" name="Senha">
                <div class="controls">
                  <button type="submit">Cadastro</button>
                  <a href="/index.html">Cancelar</a>
               </div>
            </form>
          </div>
        </div>
  
      </div>
    
</body>
</html>