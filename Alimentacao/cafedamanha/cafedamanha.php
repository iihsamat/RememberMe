<?php

$alimentou_hoje = isset($_POST['alimentouHoje']) ? $_POST['alimentouHoje'] : 0;
$engasgou_alimentacao = isset($_POST['engasgouAlimentacao']) ? $_POST['engasgouAlimentacao'] : 0;
$bebeu_liquido = isset($_POST['bebeuLiquido']) ? $_POST['bebeuLiquido'] : 0;
$engasgou_liquido = isset($_POST['engasgouLiquido']) ? $_POST['engasgouLiquido'] : 0;
$ingeriu_acucar = isset($_POST['ingeriuAcucar']) ? $_POST['ingeriuAcucar'] : 0;
$observacoes = isset($_POST['Obs']) ? $_POST['Obs'] : 0;

    include '../../Cadastro/ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_alimentacao (alimentou_hoje, engasgou_alimentacao, bebeu_liquido, engasgou_liquido, ingeriu_acucar, observacoes) 
            VALUES ($alimentou_hoje, $engasgou_alimentacao, $bebeu_liquido, $engasgou_liquido, $ingeriu_acucar, '$observacoes')";

    if (mysqli_query($conexao, $sql)) {
        header("location: ../alimentacao.html");
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);
?>

