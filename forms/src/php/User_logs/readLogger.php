<?php

            include_once('../conect.php');

            $sql = "SELECT * FROM logs ORDER BY id DESC";
            $result = $con -> query($sql);

        ?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <title>Read Log <3</title>
    <style>
    body{
        background-color: #2d3034;
    }

    .criar{
        background-color: #2d3034;
        padding: 13px 0px 8px 8px;

    }
    .criar a{
        color: white;
        background-color: #0ac400;
        padding: 3px 10px 5px 10px;
        border-radius: 8px;
        text-decoration: none;
    }
    .center{
        text-align: center;
    }
    
    </style>
</head>
<body>
        <table class="table table-dark table-striped ">
            <thead>
                <tr>
                    <th>User</th>
                    <th>IP</th>
                    <th>Hour</th>
                    <th>Action</th>
                    </div>
                </tr>
            </thead>
            <tbody>
                <?php
                    while($DataUsers = mysqli_fetch_assoc($result)){ 
                        echo "<tr>";
                        echo "<td>". $DataUsers['iduser']."</td>";
                        echo "<td>". $DataUsers['ip']."</td>";
                        echo "<td>". $DataUsers['hour']."</td>";
                        echo "<td>". $DataUsers['action']."</td>";
                        echo '</tr>';
                    }

                ?>
            </tbody>
        </table>

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

                <form action="delete.php" method="POST">

                    <div class="modal-body">

                    <h4>Confirme o nome do usuário a ser deletado</h4>

                        <input type="text" name="nome" placeholder="Confirme o nome" id="delete_id">
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
    
</body>
</html>