<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">

    <title>Document</title>
    <style>
    body{
        background-color: #2d3034;
    }
    </style>
</head>
<body>
        <?php
            include_once('../conect.php');

            $sql = "SELECT * FROM posts ORDER BY id_post DESC";

            $result = $con -> query($sql);
        ?>

        <table class="table table-dark table-striped ">
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Imagem</th>
                    <th>Excluir</th>
                    <th>Editar</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    while($DataUsers = mysqli_fetch_assoc($result)){ //O mysqli_fetch_assoc cria uma matriz associativa com o resultado retornado do banco de dados
                        echo "<tr>";
                        echo "<td>". $DataUsers['titulo']."</td>";
                        echo "<td>". $DataUsers['imagem']."</td>";
                        echo "<td><button class='btn btn-danger'>Excluir</button></td>";
                        echo "<td><a href='updateP.php?id=$DataUsers[id_post]'><button class='btn btn-primary'>Atualizar</button></a></td>";
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

                <form action="deleteP.php" method="POST">

                    <div class="modal-body">

                    <h4>Confirme o nome da postagem a ser deletado</h4>

                        <input type="text" name="titulo" placeholder="Confirme o nome" id="delete_id">
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