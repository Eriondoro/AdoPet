<?php

    $hostname = '191.252.101.191';
    $user = 'eliandro';
    $password = 'eliandro@21012023';
    $database = 'adopet_eli';

    $con = new mysqli($hostname, $user, $password ,$database);
    
    if($con->error){
        die("Erro  na conexão" . $con->error);
    }
?>
