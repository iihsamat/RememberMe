<?php
include '../Cadastro/ConexaoBanco.php';

$cpfCuidador = $_POST['cpfCuidador'];
$cpfPaciente = $_POST['CPFPaciente'];
$senhaCuidador = $_POST['senhaCuidador'];

$select = "SELECT * FROM tb_cuidador WHERE cpf_cuidador = '$cpfCuidador'";
$select2 = "SELECT * FROM tb_paciente WHERE cpf_paciente = '$cpfPaciente'";

$query = mysqli_query ($conexao,$select);
$result = mysqli_fetch_array($query);

$query2 = mysqli_query ($conexao,$select2);
$result2 = mysqli_fetch_array($query2);

$cpf_cuidador = $result['cpf_cuidador'];
$cpf_paciente = $result2['cpf_paciente'];
$senha = $result['senha'];
$nome_cuidador = $result ['nm_cuidador'];
$nome_email = $result ['nm_email'];
$numero_telefone = $result ['nr_telefone'];
$data_nascimento = $result ['dt_nascimento'];

if($cpfCuidador == $cpf_cuidador && $cpfPaciente == $cpf_paciente && password_verify ($senhaCuidador, $senha)){
    session_start();
    $_SESSION['username'] = $nome_cuidador;
    $_SESSION['data'] = $data_nascimento;
    $_SESSION['email'] = $nome_email;
    $_SESSION['telefone'] = $numero_telefone;
    header('location: ../HomePage/homepage.php');
}
else{
    echo "<script> alert('Usuário Inválido'); history.back();</script>";
}
?>
