<?php

    $hostname = 'sql113.epizy.com';
    $user = 'epiz_31689065';
    $password = 'wx82419627am063';
    $database = 'epiz_31689065_AdoPet';

    $con = new mysqli($hostname, $user, $password ,$database);
    
    if($con->error){
        die("Erro  na conexão" . $con->error);
    }
?>