/*<?php
function logger(){
    ini_set('error_reporting', E_ALL);
    ini_set('display_errors', 1);
    include_once('../conect.php');

    $ip = $_SERVER['REMOTE_ADDR'];
    $enter = date('Y-m-d h:i:s');

    $sql = "INSERT INTO logs (enter, ip) VALUES ('$enter', '$ip')";

    echo $sql;

    mysqli_close($con);
}
?>*/