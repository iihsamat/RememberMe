<?php

    $nome_paciente = $_POST['nomePaciente'];
    $cpf_paciente = $_POST['CPFPaciente'];
    $SUS_paciente = $_POST['SUSPaciente'];
    $dataNascimento_paciente = $_POST['dataNascimentoPaciente'];
    $email_paciente = $_POST['emailPaciente'];
    $telefone_paciente = $_POST['telefonePaciente'];
    $endereco_paciente = $_POST['enderecoPaciente'];
    $numeroEndereco_paciente = $_POST['numeroEnderecoPaciente'];
    $bairro_paciente = $_POST['bairroPaciente'];
    $cidade_paciente = $_POST['cidadePaciente'];
    $complemento_paciente = $_POST['complementoPaciente'];
    $CEP_paciente = $_POST['CEPPaciente'];
    $senha_paciente = $_POST['senhaPaciente'];
    $confirmar_senha_paciente = $_POST['confirmarSenhaPaciente'];

    include 'ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_paciente (nome_paciente, cpf_paciente, SUS_paciente, dataNascimento_paciente, email_paciente, telefone_paciente, endereco_paciente, numeroEndereco_paciente, bairro_paciente, cidade_paciente, complemento_paciente, CEP_paciente, senha_paciente, confirmar_senha_paciente) 
            VALUES ('$nome_paciente', '$cpf_paciente', '$SUS_paciente', '$dataNascimento_paciente', '$email_paciente', '$telefone_paciente', '$endereco_paciente', '$numeroEndereco_paciente', '$bairro_paciente', '$cidade_paciente', '$complemento_paciente', '$CEP_paciente', '$senha_paciente', '$confirmar_senha_paciente')";

    if (mysqli_query($conexao, $sql)) {
        echo "<script>alert('Cadastrado com sucesso'); history.back();</script>";
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }
    
    mysqli_close($conexao);

?>