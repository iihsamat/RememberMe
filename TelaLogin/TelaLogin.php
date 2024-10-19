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

if($cpfCuidador == $cpf_cuidador && $cpfPaciente == $cpf_paciente && password_verify ($senhaCuidador, $senha)){
    header('location: ../HomePage/homepage.html');
}
else{
    echo "<script> alert('Usuário Inválido'); history.back();</script>";
}
?>
