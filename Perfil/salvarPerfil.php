<?php
session_start();

// Inclui a conexão com o banco de dados
include 'ConexaoBanco.php';

// Verifica a conexão
if (!$conexao) {
    die("Erro de conexão com o banco de dados: " . mysqli_connect_error());
}

// Verifica se os dados foram enviados via POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Captura os valores enviados pelo formulário
    $nm_cuidador = $_POST['nomeCuidador'] ?? '';
    $dt_nascimento = $_POST['dataNascimentoCuidador'] ?? '';
    $nm_email = $_POST['emailCuidador'] ?? '';
    $nr_telefone = $_POST['telefoneCuidador'] ?? '';
    
    // CPF do cuidador da sessão para identificar o registro
    $cpf_cuidador = $_SESSION['cpf'] ?? '';

    // Verifica se o CPF está definido
    if (empty($cpf_cuidador)) {
        echo "Erro: CPF não encontrado na sessão.";
        exit;
    }

    // Exibe os valores para depuração (pode remover após os testes)
    echo "Atualizando perfil do cuidador com CPF: $cpf_cuidador <br>";
    echo "Nome: $nm_cuidador <br>";
    echo "Data de Nascimento: $dt_nascimento <br>";
    echo "Email: $nm_email <br>";
    echo "Telefone: $nr_telefone <br>";

    // Atualiza os dados no banco de dados
    $sql = "UPDATE tb_cuidador 
            SET nm_cuidador = '$nm_cuidador', 
                dt_nascimento = '$dt_nascimento', 
                nm_email = '$nm_email', 
                nr_telefone = '$nr_telefone' 
            WHERE cpf_cuidador = '$cpf_cuidador'";

    // Executa a consulta e verifica erros
    if (mysqli_query($conexao, $sql)) {
        // Atualiza as informações da sessão
        $_SESSION['username'] = $nm_cuidador;
        $_SESSION['data'] = $dt_nascimento;
        $_SESSION['email'] = $nm_email;
        $_SESSION['telefone'] = $nr_telefone;

        // Mensagem de sucesso
        echo "Perfil atualizado com sucesso!";
    } else {
        // Mensagem de erro
        echo "Erro ao atualizar o perfil: " . mysqli_error($conexao);
    }

    // Fecha a conexão com o banco de dados
    mysqli_close($conexao);
} else {
    echo "Método inválido.";
}
?>
