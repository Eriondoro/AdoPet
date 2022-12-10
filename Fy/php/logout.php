<?php

session_destroy();

include_once('../../forms/src/php/conect.php');

    $ip = $_SERVER['REMOTE_ADDR'];
    $hour = date('Y-m-d h:i:s');
    $action = "Usuário fez logout";

                $sql = "INSERT INTO logs (hour, ip, action) VALUES ('$hour', '$ip', '$action')";

                if(mysqli_query($con, $sql)){
                    mysqli_close($con); 
                }
                else{
                    header("location: ../login.php");
                    mysqli_close($con);
}

header("Location: ../../index.html");

?>