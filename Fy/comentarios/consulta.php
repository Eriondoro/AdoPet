<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
   
</head>
<body>
        <?php

            include_once('connection.php');

            //Criando uma query de Select ordenando os usuários por ID
            $sql = "SELECT * FROM comentario ORDER BY id_coment DESC";

            $result = $con -> query($sql);

        ?>

         <div class='chat-bar'>
        <form action="insere.php" method="POST" style="margin-bottom: 20px;">
        <h2> Inserir Comentario: </h2>
            <input type="text" name="Comentario" size="40">
            <input type="hidden" name="User" size="40" value="<?php echo $User ?>">
            <input type="hidden" name="Post" size="40" value="<?php echo $Post ?>">
            <button type="submit">Enviar</button>
        </form>
    </div>
        
 <table class="table table-dark table-striped ">
            <thead>
                <tr>
                    <th>ID comentario</th>
                    <th>ID Usuario</th>
                    <th>ID Postagem</th>
                    <th>Comentário</th>
                    <th class="center">Excluir</th>
                    </div>
                </tr>
            </thead>
            <tbody>
                <?php
                    while($DataUsers = mysqli_fetch_assoc($result)){ 
                        echo "<tr>";
                        echo "<td>". $DataUsers['id_coment']."</td>";
                        echo "<td>". $DataUsers['user_id']."</td>";
                        echo "<td>". $DataUsers['post_id']."</td>";      
                        echo "<td>". $DataUsers['comentario']."</td>"; 
                        echo "<td><button class='btn btn-danger'>Excluir</button></td>";
                        echo '</tr>';
                    }

                ?>

                 <!-- Modal-->

        <div class="modal fade" id="deletemodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"> Deletar usuário </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <form action="exclui.php" method="POST">

                    <div class="modal-body">

                    <h4>Confirme o nome do usuário a ser deletado</h4>

                        <input type="text" name="id" placeholder="Confirme o id do comentario" id="delete_id">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal"> Não </button>
                        <button type="submit" name="deletedata" class="btn btn-primary">Sim </button>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>

    <script>
        $(document).ready(function () {

            $('.btn-danger').on('click', function () {

                $('#deletemodal').modal('show');
      
            });
        });
    </script>
            </tbody>
        </table>
</body>
</html>