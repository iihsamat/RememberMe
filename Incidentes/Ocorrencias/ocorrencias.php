<?php

$dt_ocorrencia = isset($_POST['dataOcorrencia']) ? $_POST['dataOcorrencia'] : 0;
$precisou_samu = isset($_POST['precisouSamu']) ? $_POST['precisouSamu'] : 0;
$precisou_hospital = isset($_POST['precisouHospital']) ? $_POST['precisouHospital'] : 0;
$houve_fratura = isset($_POST['houveFratura']) ? $_POST['houveFratura'] : 0;
$engasgou = isset($_POST['engasgou']) ? $_POST['engasgou'] : 0;
$observacoes = isset($_POST['Obs']) ? $_POST['Obs'] : 0;

    include '../../Cadastro/ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_ocorrencia (dt_ocorrencia, precisou_samu, precisou_hospital, houve_fratura, engasgou, observacoes) 
            VALUES ($dt_ocorrencia, $precisou_samu, $precisou_hospital, $houve_fratura, $engasgou, '$observacoes')";

    if (mysqli_query($conexao, $sql)) {
        header("location: ../incidentes.html");
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);
?>

