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

    $sql = "INSERT INTO tb_paciente VALUES (NULL, '$nome_paciente', '$cpf_paciente', '$dataNascimento_paciente', '$SUS_paciente', '$email_paciente', '$telefone_paciente', '$endereco_paciente', '$numeroEndereco_paciente', '$bairro_paciente','$cidade_paciente', '$complemento_paciente', '$CEP_paciente', '$senha_paciente', '$confirmar_senha_paciente')";

    $query = mysqli_query($conexao, $sql);

    echo "Inserido com Sucesso";

    if($query){
    echo "<script>alert('Cadastrado com sucesso'); history.back();</script>";
    } else{
    echo "<script>alert('Error no script php'); history.back();</script>";
    }

?>
