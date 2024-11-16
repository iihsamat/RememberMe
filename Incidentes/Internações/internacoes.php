<?php

    $cd_internacoes = $_POST['numeroMatricula'];
    $dt_entrada = $_POST['dataEntrada'];
    $dt_saida = $_POST['dataSaida'];
    $nm_medico_solicitante = $_POST['medicoSolicitante'];
    $nm_unidade = $_POST['unidade'];

    include '../../Cadastro/ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_internacoes (cd_internacoes, dt_entrada, dt_saida, nm_medico_solicitante, nm_unidade)
            VALUES ('$cd_internacoes','$dt_entrada', '$dt_saida', '$nm_medico_solicitante', '$nm_unidade')";

    if (mysqli_query($conexao, $sql)) {
        header("location: ../incidentes.html");
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);
?>
