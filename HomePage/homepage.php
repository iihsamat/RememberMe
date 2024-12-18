<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HomePage</title>
    <link rel="stylesheet" href="homepage.css">
    <script src="homepage.js" defer></script>
</head>
<body>
    <header>
        <div class="top-bar">
            <div class="menu-icon" id="menu-icon" onclick="toggleMenu()">
                <div class="bar"></div>
                <div class="bar"></div>
                <div class="bar"></div>
            </div>
            <h1>REMEMBER ME</h1>
            <img class="cerebro" src="../RememberMe/imgs/celebo branco.png" alt="">
        </div>
    </header>

    <!-- Menu Lateral -->
    <nav id="side-menu" class="side-menu">
        <div class="menu-header">
            <img src="../RememberMe/imgs/profile.png" alt="Cuidador" class="profile-pic">
            <?php
            session_start();
            if(isset($_SESSION['username'])){
              $username = $_SESSION['username'];
              echo "$username";
            }
            ?>
            <button class="close-btn" onclick="toggleMenu()">X</button>
        </div>
        <ul class="menu-options">
            <li><a href="../HomePage/homepage.php">Página Inicial</a></li>
            <li><a href="../Higiene/higiene.html">Higiene</a></li>
            <li><a href="../Medicacao/Adicionar.html">Medicação</a></li>
            <li><a href="../Alimentacao/alimentacao.html">Alimentação</a></li>
            <li><a href="../Hidratacao/hidratacao.html">Hidratação</a></li>
            <li><a href="../Incidentes/incidentes.html">Incidentes</a></li>
            <li><a href="../Adicionais/adicionais.html">Adicionais</a></li>
        </ul>
        <div class="menu-footer">
            <a href="../Perfil/perfil.php">Perfil</a>
        </div>
    </nav>

    <main>
        <div class="container">

            <div class="card" id="card-1">
                <p>Card 1</p>
                <button class="edit-btn" onclick="editCard(1)">Editar</button>
            </div>

            <div class="card" id="card-2">
                <p>Card 2</p>
                <button class="edit-btn" onclick="editCard(2)">Editar</button>
            </div>

            <div class="card" id="card-3">
                <p>Card 3</p>
                <button class="edit-btn" onclick="editCard(3)">Editar</button>
            </div>

            <div class="card" id="card-4">
                <p>Card 4</p>
                <button class="edit-btn" onclick="editCard(4)">Editar</button>
            </div>
        </div>
    </main>
</body>
</html>