<section id="content">
    <!-- NAVBAR -->


    <!-- MAIN -->
    <main>

        <div class="head-title">
            <div class="table-data">
                <div class="order">
                    <table>
                        <thead>
                            <tr>
                                <td scope="col" class="bg-primary text-light">ID</td>
                                <td scope="col" class="bg-primary text-light">Livro</td>
                                <td scope="col" class="bg-primary text-light">Inicio da Reserva</td>
                                <td scope="col" class="bg-primary text-light">Fim da Reserva</td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            
                            //echo $_SESSION['usuario']['id'];

                            $id_aluno = $_SESSION['usuario']['id'];

                            //echo $id_aluno;

                            $sql = "SELECT reserva.id, reserva.data_inicio, reserva.data_fim, livro.titulo AS titulo_livro, aluno.nome AS nome_aluno
                                    FROM reserva
                                    JOIN livro ON reserva.livro = livro.id
                                    JOIN aluno ON reserva.aluno = aluno.id
                                    WHERE aluno.id = $id_aluno";
                            $consulta = $pdo->prepare($sql);
                            $consulta->execute();
                            $dados = $consulta->fetchAll(PDO::FETCH_OBJ);

                            foreach ($dados as $categoria) {
                            ?>
                                <tr>
                                    <td><?= $categoria->id?></th>
                                    <td><?= $categoria->titulo_livro?></td>
                                    <td><?= date('d/m/Y', strtotime($categoria->data_inicio)) ?></td>
                                    <td><?= date('d/m/Y', strtotime($categoria->data_fim))?></td>
                                </tr>
                                <tr>
                                <?php
                            }
                                ?>
                        </tbody>
                    </table>
                </div>
    </main>
    <!-- MAIN -->
</section>
<!-- CONTENT -->