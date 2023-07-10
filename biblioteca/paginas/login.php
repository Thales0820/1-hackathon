<?php
    //$teste = "SELECT id, nome, ra FROM aluno WHERE nome = 'Thales'";
    //$consultat = $pdo->prepare($teste);
    //$consultat->execute();

    //$dadost = $consultat->fetch(PDO::FETCH_OBJ);

    //var_dump($dadost);

    if ($_POST) {
        $nome = $_POST["nome"] ?? NULL;
        $ra = $_POST["ra"] ?? NULL;

        $sql = "SELECT id, nome, ra FROM aluno WHERE ra = :ra AND nome = :nome";

        $consulta = $pdo->prepare($sql);
        $consulta->bindParam(":ra", $ra);
        $consulta->bindParam(":nome", $nome);
        $consulta->execute();

        $dados = $consulta->fetch(PDO::FETCH_OBJ);

        //var_dump($dados);

        if (!isset($dados->id)) {
            mensagemErro("Usuário não encontrado ou inativo.");
        } else if (!isset($nome, $dados->nome)) {
            mensagemErro("Nome incorreto.");
        }

        $_SESSION["usuario"] = array(
            "id" => $dados->id,
            "nome" => $dados->nome,
            "ra" => $dados->ra
        );
            

            echo "<script>location.href='paginas/home'</script>";
            exit;
        }
?>
<div class="login">
    <h1 class="text-center">Efetuar Login</h1>
    <form method="POST">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome"
        class="form-control" required placeholder="Por favor preencha este campo">
        <br>
        <label for="ra">RA:</label>
        <input type="number" name="ra" id="ra"
        class="form-control" required placeholder="Por favor preencha este campo">
        
        <br>

        <button type="submit" class="btn btn-primary w-100">Efetuar Login</button>
    </form>
</div>