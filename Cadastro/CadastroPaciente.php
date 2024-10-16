<?php

    $nome_paciente = $_POST['nomePaciente'];
    $cpf_paciente = $_POST['CPFPaciente'];
    $SUS_paciente = $_POST['SUSPaciente'];
    $dataNascimento_paciente = $_POST['dataNascimentoPaciente'];
    $endereco_paciente = $_POST['enderecoPaciente'];
    $numeroEndereco_paciente = $_POST['numeroEnderecoPaciente'];
    $bairro_paciente = $_POST['bairroPaciente'];
    $cidade_paciente = $_POST['cidadePaciente'];
    $complemento_paciente = $_POST['complementoPaciente'];
    $CEP_paciente = $_POST['CEPPaciente'];

    include 'ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_paciente (nome_paciente, cpf_paciente, SUS_paciente, dataNascimento_paciente, endereco_paciente, numeroEndereco_paciente, bairro_paciente, cidade_paciente, complemento_paciente, CEP_paciente) 
            VALUES ('$nome_paciente', '$cpf_paciente', '$SUS_paciente', '$dataNascimento_paciente', '$endereco_paciente', '$numeroEndereco_paciente', '$bairro_paciente', '$cidade_paciente', '$complemento_paciente', '$CEP_paciente')";

    if (mysqli_query($conexao, $sql)) {
        echo "<script> history.back(); </script>";
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);

?>
