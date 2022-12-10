<?php
include('./src/php/validacao.php')
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./src/css/login.css">
</head>
<body>
        <div class="container">
            <h1>Login</h1>  
            <form method="post" class="form" action="">
                    <p class="formulario">E-mail:</p>
                    <input type="email" name="email"></input>
                    <p class="formulario">Senha:</p>
                    <input type="password" name="senha"></input>
                <div class="controls">
                    <button type="submit" id="login">Fazer login</button>
                </div>
                <div class="resto">
                    <p class="cadastro">Ainda não é cadastrado ?</p>
                    <a href="sign.php">Inscreva-se</a>
                </div>
            </form>     
        </div>
</body>
</html>