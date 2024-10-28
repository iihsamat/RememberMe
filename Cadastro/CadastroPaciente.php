<?php
    $nm_paciente = $_POST['nomePaciente'];
    $cpf_paciente = $_POST['CPFPaciente'];
    $nr_sus = $_POST['SUSPaciente'];
    $dt_nascimento = $_POST['dataNascimentoPaciente'];
    $nm_endereco = $_POST['enderecoPaciente'];
    $nr_endereco = $_POST['numeroEnderecoPaciente'];
    $nm_bairro = $_POST['bairroPaciente'];
    $nm_cidade = $_POST['cidadePaciente'];
    $ds_complemento = $_POST['complementoPaciente'];
    $nr_cep = $_POST['CEPPaciente'];


    include 'ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO tb_paciente (nm_paciente, cpf_paciente, nr_sus, dt_nascimento, nm_endereco, nr_endereco, nm_bairro, nm_cidade, ds_complemento, nr_cep) 
            VALUES ('$nm_paciente', '$cpf_paciente', '$nr_sus', '$dt_nascimento', '$nm_endereco', '$nr_endereco', '$nm_bairro', '$nm_cidade', '$ds_complemento', '$nr_cep')";

    if (mysqli_query($conexao, $sql)) {
        header("location: ../TelaLogin/TelaLogin.html");
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }

    mysqli_close($conexao);
?>
