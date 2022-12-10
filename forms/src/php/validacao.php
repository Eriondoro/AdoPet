<?php
include('conect.php');

if(isset($_POST['email']) || isset($_POST['Senha'])) {

    if(strlen($_POST['email']) == 0) {
        echo '<script>alert("Preencha seu e-mail")</script>';
    } else if(strlen($_POST['senha']) == 0) {
        echo '<script>alert("Preencha sua senha")</script>';
    }
    else {

        $email = $con->real_escape_string($_POST['email']);
        $senha = $con->real_escape_string($_POST['senha']);

        $sql_code = "SELECT * FROM usuarios WHERE email = '$email' AND senha = '$senha'";
        $sql_query = $con->query($sql_code) or die("Falha na execução do código SQL: " . $con->error);

        $quantidade = $sql_query->num_rows;

        if($quantidade == 1) {
            
            $usuario = $sql_query->fetch_assoc();


            if(!isset($_SESSION)) {
                session_start();
                
                $ip = $_SERVER['REMOTE_ADDR'];
                $hour = date('Y-m-d h:i:s');
                $action = "Usuário fez login";
                 $id = 'SELECT id FROM usuarios WHERE email = '.$email;

                $sql = "INSERT INTO logs (hour, ip, action, iduser) VALUES ('$hour', '$ip', '$action', '$id')";

                if(mysqli_query($con, $sql)){
                    mysqli_close($con); 
                }
                else{
                    header("location: ../login.php");
                    mysqli_close($con);
                }
            }
               if($usuario['id'] == 17){

                   $_SESSION['id'] = $usuario['id'];
                   header("Location: ../Fy/adm.php?id=$usuario[id]");
               }else{

            $_SESSION['id'] = $usuario['id'];

            header("Location: ../Fy/index.php?id=$usuario[id]");
            }

        } else {
            echo '<script>alert("Falha ao logar! E-mail ou senha incorretos")</script>';
        }

    }

}
?>
