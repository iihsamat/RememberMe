<?php
    $nome_cuidador = $_POST['nomeCuidador'];
    $cpf_cuidador = $_POST['cpfCuidador'];
    $dataNascimento_cuidador = $_POST['dataNascimentoCuidador'];
    $COREN_cuidador = $_POST['CORENCuidador'];
    $email_cuidador = $_POST['emailCuidador'];
    $telefone_cuidador = $_POST['telefoneCuidador'];
    $endereco_cuidador = $_POST['enderecoCuidador'];
    $numeroEndereco_cuidador = $_POST['numeroEnderecoCuidador'];
    $bairro_cuidador = $_POST['bairroCuidador'];
    $cidade_cuidador = $_POST['cidadeCuidador'];
    $complemento_cuidador = $_POST['complementoCuidador'];
    $CEP_cuidador = $_POST['CEPCuidador'];
    $senha_cuidador = $_POST['senhaCuidador'];

    include 'ConexaoBanco.php';

    $sql = "INSERT INTO tb_cuidador VALUES ('$nome_cuidador', '$cpf_cuidador', '$dataNascimento_cuidador', '$COREN_cuidador', '$email_cuidador', '$telefone_cuidador', '$endereco_cuidador', '$numeroEndereco_cuidador', '$bairro_cuidador','$cidade_cuidador', '$complemento_cuidador', '$CEP_cuidador', '$senha_cuidador')";
    
    $query = mysqli_query($conexao, $sql);
 
    echo "Inserido com Sucesso";

    if($query){
    echo "<script>alert('Cadastrado com sucesso'); history.back();</script>";
    } else{
    echo "<script>alert('Error no script php'); history.back();</script>";
    }

?>