<?php
    $nm_cuidador = $_POST['nomeCuidador'];
    $cpf_cuidador = $_POST['cpfCuidador'];
    $dt_nascimento = $_POST['dataNascimentoCuidador'];
    $coren = $_POST['CORENCuidador'];
    $nm_email = $_POST['emailCuidador'];
    $nr_telefone = $_POST['telefoneCuidador'];
    $nm_endereco = $_POST['enderecoCuidador'];
    $nr_endereco = $_POST['numeroEnderecoCuidador'];
    $nm_bairro = $_POST['bairroCuidador'];
    $nm_cidade = $_POST['cidadeCuidador'];
    $ds_complemento = $_POST['complementoCuidador'];
    $nr_cep = $_POST['CEPCuidador'];
    $senha = $_POST['senhaCuidador'];
    //$confirmar_senha_cuidador = $_POST['confirmarSenhaCuidador'];

    include 'ConexaoBanco.php';

    if (!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    // Criptografar a senha
    $senha_hash = password_hash($senha, PASSWORD_DEFAULT);

    $sql = "INSERT INTO tb_cuidador (nm_cuidador, cpf_cuidador, dt_nascimento, coren, nm_email, nr_telefone, nm_endereco, nr_endereco, nm_bairro, nm_cidade, ds_complemento, nr_cep, senha) 
            VALUES ('$nm_cuidador', '$cpf_cuidador', '$dt_nascimento', '$coren', '$nm_email', '$nr_telefone', '$nm_endereco', '$nr_endereco', '$nm_bairro','$nm_cidade', '$ds_complemento', '$nr_cep', '$senha_hash')";

    if (mysqli_query($conexao, $sql)) {
        echo "<script> history.back(); </script>";
    } else {
        echo "<script>alert('Erro ao cadastrar: " . mysqli_error($conexao) . "'); history.back();</script>";
    }
    
    mysqli_close($conexao);
?>
