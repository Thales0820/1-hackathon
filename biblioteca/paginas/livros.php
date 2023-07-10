<?php


// Função para buscar livros no banco de dados
function buscarLivros($pdo, $searchTerm)
{
    $sql = "SELECT livro.id, livro.titulo, livro.isbn, livro.sub_Titulo, autor.nome AS nome_autor, editora.nome AS nome_editora, categoria.nome AS nome_categoria
        FROM livro
        JOIN autor ON livro.autor = autor.id
        JOIN editora ON livro.editora  = editora.id
        JOIN categoria on livro.categoria  = categoria.id
        WHERE categoria.nome LIKE :searchTerm";
    $consulta = $pdo->prepare($sql);
    $consulta->bindValue(':searchTerm', '%' . $searchTerm . '%');
    $consulta->execute();
    $livrosEncontrados = $consulta->fetchAll(PDO::FETCH_ASSOC);
    return $livrosEncontrados;
}

// Verifica se foi feita uma busca
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['search'])) {
    $searchTerm = $_POST['search'];
	if(empty($searchTerm)){
		$searchTerm = "%";
	}
    $livrosEncontrados = buscarLivros($pdo, $searchTerm);
}else{
	$searchTerm = "%";
	$livrosEncontrados = buscarLivros($pdo, $searchTerm);
}

?>


<!-- CONTENT -->



<section id="content">
    <!-- NAVBAR -->


    <!-- MAIN -->
    <main>

        <div class="head-title">

            <main>
            <form  method="POST">
                <div class="search-container">
                    <input type="search" class="search-input" placeholder="Search..." name="search">
                    <button class="search-button">
                        <i class='bx bx-search'></i>
                    </button>      
                </div>
            </form>
            </main>


            <div class="table-data">
                <div class="order">
                    <?php if (!empty($livrosEncontrados)) : ?>
                        <table>
                            <thead>
                                <tr>
                                    <td scope="col" class="bg-primary text-light">ID</td>
                                    <td scope="col" class="bg-primary text-light">Titulo</td>
                                    <td scope="col" class="bg-primary text-light">SubTitulo</td>
                                    <td scope="col" class="bg-primary text-light">ISBN</td>
                                    <td scope="col" class="bg-primary text-light">Autor</td>
                                    <td scope="col" class="bg-primary text-light">Editora</td>
                                    <td scope="col" class="bg-primary text-light">Categoria</td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($livrosEncontrados as $livro) : ?>
                                    <tr>
                                        <td><?= $livro['id']?></td>
                                        <td><?= $livro['titulo']?></td>
                                        <td><?= $livro['sub_Titulo']?></td>
                                        <td><?= $livro['isbn']?></td>
                                        <td><?= $livro['nome_autor']?></td>
                                        <td><?= $livro['nome_editora']?></td>
                                        <td><?= $livro['nome_categoria']?></td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    <?php else : ?>
                        <table>
                            <thead>
                                <tr>
                                    <th scope="col" class="bg-primary text-light">ID</th>
                                    <th scope="col" class="bg-primary text-light">Titulo</th>
                                    <th scope="col" class="bg-primary text-light">ISBN</th>
                                    <th scope="col" class="bg-primary text-light">Subtitle</th>
                                    <th scope="col" class="bg-primary text-light">Autor</th>
                                    <th scope="col" class="bg-primary text-light">Editora</th>
                                    <th scope="col" class="bg-primary text-light">Categoria</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td colspan="7">Não encontrado</td>
                                </tr>
                            </tbody>
                        </table>
                    <?php endif; ?>
                </div>
           </div>
    </main>
    <!-- MAIN -->
</section>
<!-- CONTENT -->