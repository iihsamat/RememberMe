<?php
include '../Cadastro/ConexaoBanco.php';

$cpfCuidador = $_POST['cpfCuidador'];
$cpfPaciente = $_POST['CPFPaciente'];
$senhaCuidador = $_POST['senhaCuidador'];

$select = "SELECT * FROM tb_cuidador WHERE cpfCuidador = '$cpfCuidador'";
$select2 = "SELECT * FROM tb_paciente WHERE CPFPaciente = '$cpfPaciente'";

$query = mysqli_query ($conexao,$select);
$result = mysqli_fetch_array($query);

$query2 = mysqli_query ($conexao,$select2);
$result2 = mysqli_fetch_array($query2);

$cpfCuidador = $result['cpfCuidador'];
$cpfPaciente = $result2['CPFPaciente'];

if($cpfCuidador == $cpf_cuidador && $cpfPaciente == $cpf_paciente){
    header('location: ../TelaLogin/TelaLogin.html');
}
else{
    echo "<script> alert('Usuário Inválido'); history.back();</script>";
}
?>
