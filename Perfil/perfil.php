<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
    <link rel="stylesheet" href="perfil.css">
    <script src="perfil.js" defer></script>
</head>
<body>
    <div class="container">
        <header class="header">
            <a href="../HomePage/homepage.php">
                <button class="back-button">&#8592;</button>
            </a>
            <div class="titulo">PERFIL</div>
        </header>
        <div class="perfil">
            <div class="fotoperfil">
                <img src="../RememberMe/imgs/profile.png" alt="Avatar">
                <span class="add-photo">+</span>
            </div>
            <div class="perfil-info">
            <div class="perfil-info">           
            <?php
            session_start();
            ?>
            <h3 id="nome"><strong></strong> <?php echo $_SESSION['username']; ?></h3>
            <p id="data"><strong>📅</strong> <?php echo $_SESSION['data']; ?></p>
            <p id="email"><strong>✉️</strong> <?php echo $_SESSION['email']; ?></p>
            <p id="telefone"><strong>📞</strong> <?php echo $_SESSION['telefone']; ?></p>
            </div>
 
            </div>
            <div class="actions">
                <button class="editar" onclick="editarPerfil()"> Editar</button>
                <button class="encerrar" onclick="encerrarTurno()">Encerrar Turno</button>
            </div>
        </div>
    </div>
</body>
</html>