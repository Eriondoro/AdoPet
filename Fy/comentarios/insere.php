
<?php
    ini_set('error_reporting', E_ALL);
    ini_set('display_errors', 1);

    //Incluindo a conexão com o banco de dados

    include_once('connection.php');

    //Aqui está sendo trazido os valores digitados nos inputs
    
    $Comentario  = isset($_POST['Comentario']) ? $_POST['Comentario'] : '';
    $Usuario = $_POST['User'];
    $Post = $_POST['Post'];

    //Aqui estou criando uma query de inserção no banco de dados, sem criptografar a senha

    $sql = "INSERT INTO comentario (user_id, post_id, comentario) VALUES ('$Usuario', '$Post','$Comentario')";

    //echo $sql; Caso queira ver se o sql não está com erro, tire o comentário dessa linha

    if(mysqli_query($con, $sql)){ 	//Aqui o mysqli_query está fazendo uma inserção no banco de dados
	    echo 'Comentario inserido';//Caso a inserção seja feita com sucesso, a página será redirecionada ao index.html
        mysqli_close($con); 	//Fechando a conexão, é muito importante que ela seja fechada!!!!
    }
    else{
       // header("location: insere.php");
        echo 'Comentario não inserido';
        mysqli_close($con);
    }

?>