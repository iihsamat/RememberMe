// Habilitar campos ao selecionar o tipo de cadastro
function habilitarCampos() {
    var tipoCadastro = document.getElementById("tipoCadastro").value;
    var inputs = document.querySelectorAll('input, select');
    var btnAvancar = document.querySelector('.btn');
    
    inputs.forEach(input => {
        input.classList.remove('paciente', 'cuidador');
    });
    btnAvancar.classList.remove('paciente', 'cuidador');
    
    if (tipoCadastro === "Cuidador") {
        inputs.forEach(input => input.classList.add('cuidador'));
        btnAvancar.classList.add('cuidador');
    } else if (tipoCadastro === "Paciente") {
        inputs.forEach(input => input.classList.add('paciente'));
        btnAvancar.classList.add('paciente');
    }
    
    inputs.forEach(input => {
        input.disabled = (tipoCadastro === "");
    });
}

// Mostrar campos específicos ao selecionar "Paciente" ou "Cuidador"
function mostrarCamposEspecificos() {
    var tipoCadastro = document.getElementById("tipoCadastro").value;

    document.getElementById("sus").style.display = "none";
    document.getElementById("coren").style.display = "none";

    if (tipoCadastro === "Paciente") {
        document.getElementById("sus").style.display = "block";
    } else if (tipoCadastro === "Cuidador") {
        document.getElementById("coren").style.display = "block";
    }
}

// Verificar cadastro e exibir próxima etapa
function verificarCadastro() {
    var nome = document.getElementById("nome").value;
    var cpf = document.getElementById("cpf").value;
    var dataNascimento = document.getElementById("dataNascimento").value;
    var email = document.getElementById("email").value;
    var tipoCadastro = document.getElementById("tipoCadastro").value;

    if (nome === "" || cpf === "" || dataNascimento === "" || email === "") {
        alert("Por favor, preencha todos os campos.");
        return;
    }

    if (tipoCadastro === "Paciente") {
        var sus = document.getElementById("susInput").value;
        if (sus === "") {
            alert("Por favor, insira seu Cartão SUS.");
            return;
        }
    }

    document.getElementById("formulario-comum").style.display = "none";
    document.getElementById("tipoCadastro").style.display = "none"; // Esconder select

    document.getElementById("formulario-dinamico").style.display = "block";

    // Ajustar a cor do botão "Concluir"
    var btnConcluir = document.querySelector('.concluir');
    if (tipoCadastro === "Cuidador") {
        btnConcluir.classList.add('cuidador');
    } else if (tipoCadastro === "Paciente") {
        btnConcluir.classList.add('paciente');
    }
}

// Atualizar a cor dos botões nas novas telas
function atualizarCorBotoes() {
    var tipoCadastro = document.getElementById("tipoCadastro").value;
    var botoes = document.querySelectorAll('.btn');

    botoes.forEach(botao => {
        botao.classList.remove('paciente', 'cuidador');
        if (tipoCadastro === "Cuidador") {
            botao.classList.add('cuidador');
        } else if (tipoCadastro === "Paciente") {
            botao.classList.add('paciente');
        }
    });
}

function toggleSenha(id) {
    var input = document.getElementById(id);
    input.type = input.type === "password" ? "text" : "password";
}

function finalizarCadastro() {
    var senha = document.getElementById("senha").value;
    var confirmarSenha = document.getElementById("confirmarSenha").value;
    var tipoCadastro = document.getElementById("tipoCadastro").value;

    // Verifica se as senhas coincidem
    if (senha !== confirmarSenha) {
        alert("As senhas não coincidem. Por favor, tente novamente.");
        return;
    }

    // Finalmente submete o formulário
    let formulario = document.getElementById("formulario");
    formulario.submit(); // Agora o formulário é enviado ao PHP

    if (tipoCadastro === "Paciente") {
        // Redirecionar para a tela de login
        window.location.href = "../TelaLogin/TelaLogin.html";
    } else if (tipoCadastro === "Cuidador") {
        // Mostrar formulário para cadastrar o paciente - Etapa 1
        document.getElementById("formulario-dinamico").style.display = "none";
        document.getElementById("cadastro-paciente-etapa1").style.display = "block";
        atualizarCorBotoes(); // Atualizar a cor dos botões
    }
}

// Função para avançar para a etapa 2 do cadastro do paciente
function avancarParaEtapa2() {
    document.getElementById("cadastro-paciente-etapa1").style.display = "none";
    document.getElementById("cadastro-paciente-etapa2").style.display = "block";
    atualizarCorBotoes(); // Atualizar a cor dos botões
}

// Função para finalizar o cadastro do paciente adicional
// Função para finalizar o cadastro do paciente adicional
function finalizarCadastroPaciente() {
    var endereco = document.querySelector("#cadastro-paciente-etapa2 input[placeholder='Digite o endereço do paciente:']").value;

    if (endereco === "") {
        alert("Por favor, preencha todos os campos obrigatórios.");
        return;
    }

    alert("Cadastro do paciente concluído com sucesso!");

        // Finalmente submete o formulário
        let formulario2 = document.getElementById("formulario2");
        formulario2.submit(); // Agora o formulário é enviado ao PHP

    // Redirecionar para a tela de login
    window.location.href = "../TelaLogin/TelaLogin.html";
}

