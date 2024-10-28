<?php

    $cd_pedido = $_POST['numeroPedido'];
    $dt_entrada = $_POST['dataEntrada'];
    $dt_impressao = $_POST['dataImpressao'];
    $nm_medico_solicitante = $_POST['medicoSolicitante'];
    $nm_laboratorio = $_POST['laboratorio'];

    include '../../Cadastro/ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_paciente (cd_pedido, dt_entrada, dt_impressao, nm_medico_solicitante, dt_nascimento, nm_laboratorio)
            VALUES ('$cd_pedido','$dt_entrada', '$dt_impressao', '$nm_medico_solicitante', '$dt_nascimento', '$nm_laboratorio')";

    if (mysqli_query($conexao, $sql)) {
        header("location: ../incidentes.html");
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);
?>
