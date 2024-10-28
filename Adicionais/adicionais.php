<?php

    $ano_diagnostico = $_POST['anoDiagnostico'];
    $alimenta_sozinho = $_POST['alimentaSozinho'];
    $diabetes = $_POST['diabetes'];
    $pressao_alta = $_POST['pressaoAlta'];
    $colesterol = $_POST['colesterol'];
    $usa_medicacao = $_POST['usaMedicacao'];
    $controle_pa = $_POST['controlePA'];


    include '../Cadastro/ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_adicionais (ano_diagnostico, alimenta_sozinho, diabetes, pressao_alta, colesterol, usa_medicacao, controle_pa)
            VALUES ('$ano_diagnostico', '$alimenta_sozinho', '$diabetes', '$pressao_alta', '$colesterol','$usa_medicacao','$controle_pa')";

    if (mysqli_query($conexao, $sql)) {
        header('location: ../HomePage/homepage.html');
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);
?>
