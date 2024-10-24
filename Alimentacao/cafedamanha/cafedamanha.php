<?php

    $alimentou_hoje = $_POST['alimentouHoje'];
    $engasgou_alimentacao = $_POST['engasgouAlimentacao'];
    $bebeu_liquido = $_POST['bebeuLiquido'];
    $engasgou_liquido = $_POST['engasgouLiquido'];
    $ingeriu_acucar = $_POST['ingeriuAcucar'];
    $observacoes = $_POST['Obs'];

    include '../Cadastro/ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_alimentacao (alimentou_hoje, engasgou_alimentacao, bebeu_liquido, engasgou_liquido, ingeriu_acucar, observacoes) 
            VALUES ('$alimentou_hoje', '$engasgou_alimentacao', '$bebeu_liquido', '$engasgou_liquido', '$ingeriu_acucar', '$observacoes')";

    if (mysqli_query($conexao, $sql)) {
        header("location: ../Alimentacao/alimentacao.html");
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);
?>
