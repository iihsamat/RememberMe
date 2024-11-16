<?php

    $tomou_banho = isset($_POST['tomouBanho']) ? $_POST['tomouBanho'] : 0;
    $escovou_dentes = isset($_POST['escovaDentes']) ? $_POST['escovaDentes'] : 0;
    $utilizou_fralda =  isset($_POST['utilizouFralda']) ? $_POST['utilizouFralda'] : 0;
    $observacoes = $_POST['Obs'];

    $tipo_fezes = isset($_POST['tipoFezes']) ? $_POST['tipoFezes'] : 0;
    $odor_fezes = isset($_POST['odorFezes']) ?  $_POST['odorFezes'] : 0;
    $coloracao_fezes = isset($_POST['coloracaoFezes']) ? $_POST['coloracaoFezes'] : 0;

    $odor_urina = isset($_POST['odorUrina']) ?  $_POST['odorUrina'] : 0;
    $coloracao_urina = isset($_POST['coloracaoUrina']) ? $_POST['coloracaoUrina'] : 0;

    include '../../Cadastro/ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_higiene (tomou_banho, escovou_dentes, utilizou_fralda, observacoes)
            VALUES ($tomou_banho,$escovou_dentes, $utilizou_fralda, '$observacoes')";
            mysqli_query($conexao, $sql);

    $sql = "INSERT INTO tb_fezes (tipo_fezes, odor, coloracao)
            VALUES ( '$tipo_fezes','$odor_fezes','$coloracao_fezes')";
             mysqli_query($conexao, $sql);

    $sql = "INSERT INTO tb_urina (odor, coloracao)
            VALUES ('$odor_urina','$coloracao_urina')";       

    if (mysqli_query($conexao, $sql)) {
        header("location: ../higiene.html");
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);
?>
