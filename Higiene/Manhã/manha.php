<?php

    $tomou_banho = $_POST['tomouBanho'];
    $escovou_dentes = $_POST['escovaDentes'];
    $utilizou_fralda = $_POST['utilizouFralda'];
    $observacoes = $_POST['Obs'];

    $tipo_fezes = $_POST['tipoFezes'];
    $odor_fezes = $_POST['odorFezes'];
    $coloracao_fezes = $_POST['coloracaoFezes'];

    $odor_urina = $_POST['odorUrina'];
    $coloracao_urina = $_POST['coloracaoUrina'];

    include '../../Cadastro/ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_higiene (tomou_banho, escovou_dentes, utilizou_fralda, observacoes)
            VALUES ('$tomou_banho','$escovou_dentes', '$utilizou_fralda', '$observacoes')";
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
