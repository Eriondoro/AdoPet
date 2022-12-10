<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="Interface.css">

    <title>ADM</title>
</head>
<body>
    <div class="container">
    <a href='../forms/sign.php'><button class="btn btn-outline-success">Inserir</button></a>
    
    <?php

include_once('connection.php');

            //Criando uma query de Select ordenando os usuários por ID
            $sql = "SELECT * FROM usuarios ORDER BY id DESC";

            $result = $con -> query($sql);

        ?>
        <table class="table table-dark table-striped ">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Senha</th>
                    <th>Excluir</th>
                    <th>Editar</th>
                </tr>
            </thead>
            <tbody>
                <?php

                    while($DataUsers = mysqli_fetch_assoc($result)){ //O mysqli_fetch_assoc cria uma matriz associativa com o resultado retornado do banco de dados
                        echo "<tr>";
                        echo "<td>". $DataUsers['nome']."</td>"; //Aqui você deve colocar no lugar de $DataUsers['nome'] as colunas referentes as tabelas do seu bando de dados :)        
                        echo "<td>". $DataUsers['email']."</td>";
                        echo "<td>".$DataUsers['senha']."</td>";
                        //Caso aja outras colunas além de nome e email, apenas repita os comandos acima :)
                        echo "<td><button class='btn btn-danger'>Excluir</button></td>";
                        echo "<td><button class='btn btn-info'>Editar</button></td>";
                        echo '</tr>';
                    }

                ?>
            </tbody>
        </table>


        <!-- Modal Delete-->

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

                <form action="Delete.php" method="POST">

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

    <!-- Modal Edit -->
    <div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"> Editar usuário </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <form action='Edit.php' method="POST">

                    <div class="modal-body">

                    <h4>Confirme os dados a serem atualizados</h4>

                    <div class="mb3">      
                        <input type="text" name="nome" class="form-control" placeholder="Nome">
                    </div>
                    <div class="mb3">
                        <input type="text" name="email" class="form-control" placeholder="Email">
                    </div>
                    <div class="mb3"></div>
                        <input type="text" name="senha" class="form-control" placeholder="Senha">
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
            $('.btn-info').on('click', () =>{
                $('#editmodal').modal('show');
            })
        });
    </script>

</div>
    
</body>
</html>