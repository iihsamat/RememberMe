<?php
include 'conexao.php';
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $tipo_usuario = $_POST['tipo_usuario'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Proteção contra SQL Injection
    $username = $conn->real_escape_string($username);

    if ($tipo_usuario == "paciente") {
        $sql = "SELECT id, cpf, password FROM pacientes WHERE cpf = '$username'";
    } elseif ($tipo_usuario == "cuidador") {
        $cpf_paciente = $_POST['cpf_paciente'];
        $cpf_paciente = $conn->real_escape_string($cpf_paciente);
        $sql = "SELECT id, cpf, cpf_paciente, password FROM cuidadores WHERE cpf = '$username' AND cpf_paciente = '$cpf_paciente'";
    }
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        // Verificação da senha
        if (password_verify($password, $row['password'])) {
            $_SESSION['username'] = $row['username'];
            $_SESSION['tipo_usuario'] = $tipo_usuario;
            header("Location: dashboard.php");
            if($lembrar_me)
            {
               setcookie('username',$username,time() + 7000 * 30, "/");
            }
            exit();
        } else {
            $error = "Senha incorreta.";
        }
    } else {
        $error = "Usuário não encontrado.";
    }

    $conn->close();
}
?>
