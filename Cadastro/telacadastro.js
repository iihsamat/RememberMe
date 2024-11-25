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

// Função para finalizar o cadastro
function finalizarCadastro() {
    var tipoCadastro = document.getElementById("tipoCadastro").value;
    var senha = document.getElementById("senha").value;
    var confirmarSenha = document.getElementById("confirmarSenha").value;

    // Verificar preenchimento da senha
    if (senha === "" || confirmarSenha === "") {
        exibirNotificacao("Por favor, preencha todos os campos de senha.", "erro");
        return;
    }

    // Verificar se as senhas coincidem
    if (senha !== confirmarSenha) {
        exibirNotificacao("As senhas não coincidem. Por favor, tente novamente.", "erro");
        return;
    }

    // Verificar se todos os campos obrigatórios foram preenchidos
    const inputs = document.querySelectorAll("#formulario-dinamico input[required]");
    let camposVazios = false;

    inputs.forEach(input => {
        if (input.value === "") {
            camposVazios = true;
        }
    });

    if (camposVazios) {
        exibirNotificacao("Por favor, preencha todos os campos obrigatórios.", "erro");
        return;
    }

    exibirNotificacao("Cadastro concluído com sucesso!", "sucesso");

    // Submete o formulário ao servidor PHP
    let formulario = document.getElementById("formulario");
    formulario.submit();
}

// Função para avançar para a etapa 2 do cadastro do paciente
function avancarParaEtapa2() {
    document.getElementById("cadastro-paciente-etapa1").style.display = "none";
    document.getElementById("cadastro-paciente-etapa2").style.display = "block";
    atualizarCorBotoes(); // Atualizar a cor dos botões
}

function finalizarCadastroPaciente() {
    var endereco = document.querySelector("#cadastro-paciente-etapa2 input[placeholder='Digite o endereço do paciente:']").value;

    if (endereco === "") {
        alert("Por favor, preencha todos os campos obrigatórios.");
        return;
    }

    alert("Cadastro do paciente concluído com sucesso!");

    let formulario2 = document.getElementById("formulario2");
    formulario2.submit(); // Agora o formulário é enviado ao PHP

    // Redirecionar para a tela de login
    window.location.href = "../TelaLogin/TelaLogin.html";
}

// Função para exibir notificações
function exibirNotificacao(mensagem, tipo = "erro") {
    const notificacao = document.getElementById("notificacao");
    
    // Define a cor da notificação com base no tipo
    if (tipo === "sucesso") {
        notificacao.style.backgroundColor = "#d4edda"; // Verde claro
        notificacao.style.color = "#155724"; // Verde escuro
        notificacao.style.border = "1px solid #c3e6cb";
    } else if (tipo === "erro") {
        notificacao.style.backgroundColor = "#f8d7da"; // Vermelho claro
        notificacao.style.color = "#721c24"; // Vermelho escuro
        notificacao.style.border = "1px solid #f5c6cb";
    }

    notificacao.textContent = mensagem; // Define o texto da mensagem
    notificacao.style.display = "block"; // Mostra a notificação

    // Esconde a notificação após 4 segundos
    setTimeout(() => {
        notificacao.style.display = "none";
    }, 4000);
}

// Substitua os alert por exibirNotificacao
function verificarCadastro() {
    var nome = document.getElementById("nome").value;
    var cpf = document.getElementById("cpf").value;
    var dataNascimento = document.getElementById("dataNascimento").value;
    var email = document.getElementById("email").value;
    var tipoCadastro = document.getElementById("tipoCadastro").value;

    if (nome === "" || cpf === "" || dataNascimento === "" || email === "") {
        exibirNotificacao("Por favor, preencha todos os campos.", "erro");
        return;
    }

    if (tipoCadastro === "Paciente") {
        var sus = document.getElementById("susInput").value;
        if (sus === "") {
            exibirNotificacao("Por favor, insira seu Cartão SUS.", "erro");
            return;
        }
    }

    // Prossegue se todas as validações forem aprovadas
    document.getElementById("formulario-comum").style.display = "none";
    document.getElementById("tipoCadastro").style.display = "none";
    document.getElementById("formulario-dinamico").style.display = "block";
    exibirNotificacao("Cadastro verificado. Continue para a próxima etapa.", "sucesso");
}

function verificarCamposPreenchidos() {
    const inputs = document.querySelectorAll("#formulario-dinamico input[required]");
    const btnConcluir = document.querySelector(".btn.concluir");

    let todosPreenchidos = true;

    inputs.forEach(input => {
        if (input.value === "") {
            todosPreenchidos = false;
        }
    });

    if (todosPreenchidos) {
        btnConcluir.disabled = false;
        if (document.getElementById("tipoCadastro").value === "Cuidador") {
            btnConcluir.classList.add("cuidador");
        } else if (document.getElementById("tipoCadastro").value === "Paciente") {
            btnConcluir.classList.add("paciente");
        }
    } else {
        btnConcluir.disabled = true;
        btnConcluir.classList.remove("cuidador", "paciente");
    }
}

// Adiciona um evento nos inputs para verificar campos preenchidos
document.querySelectorAll("#formulario-dinamico input[required]").forEach(input => {
    input.addEventListener("input", verificarCamposPreenchidos);
});

function toggleSenha(id) {
    var input = document.getElementById(id);
    var toggleIcon = input.nextElementSibling; // Obtém o elemento de ícone relacionado

    // Alterna o tipo do campo de entrada
    input.type = input.type === "password" ? "text" : "password";

    // Alterna o ícone
    toggleIcon.classList.toggle("fa-eye");
    toggleIcon.classList.toggle("fa-eye-slash");
}