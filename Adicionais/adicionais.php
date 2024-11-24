<?php

    $ano_diagnostico = isset($_POST['anoDiagnostico']) ? $_POST['anoDiagnostico'] : 0;
    $alimenta_sozinho = isset($_POST['alimentaSozinho']) ? $_POST['alimentaSozinho'] : 0;
    $diabetes = isset($_POST['diabetes']) ? $_POST['diabetes'] : 0;
    $pressao_alta = isset($_POST['pressaoAlta']) ? $_POST['pressaoAlta'] : 0;
    $colesterol = isset($_POST['colesterol']) ? $_POST['colesterol'] : 0;
    $usa_medicacao = isset($_POST['usaMedicacao']) ? $_POST['usaMedicacao'] : 0;
    $controle_pa = isset($_POST['controlePA']) ? $_POST['controlePA'] : 0;

    include '../Cadastro/ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_adicionais (ano_diagnostico, alimenta_sozinho, diabetes, pressao_alta, colesterol, usa_medicacao, controle_pa)
            VALUES ($ano_diagnostico, $alimenta_sozinho, $diabetes, $pressao_alta, $colesterol,$usa_medicacao,$controle_pa)";

    if (mysqli_query($conexao, $sql)) {
        header('location: ../HomePage/homepage.php');
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);
?>
