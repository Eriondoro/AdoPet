<?php

    include('../../forms/src/php/conect.php');

    if(isset($_POST['Update'])){
        $id = $_POST['id'];
        $img = $_POST['img'];
        $nick = $_POST['nick'];
        $bio = ($_POST['bio']);


        $sql = "UPDATE usuarios SET nickname='$nick', picture='$img', bio='$bio' WHERE id = $id";

        $result = $con -> query($sql);

    
    }

     header("Location: ../profile.php?id=$id");


?>