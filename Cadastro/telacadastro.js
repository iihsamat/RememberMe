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

function toggleSenha(id) {
    var input = document.getElementById(id);
    input.type = input.type === "password" ? "text" : "password";
}

// Função para finalizar o cadastro
function finalizarCadastro() {
    var senha = document.getElementById("senha").value;
    var confirmarSenha = document.getElementById("confirmarSenha").value;

    if (senha !== confirmarSenha) {
        alert("As senhas não coincidem. Por favor, tente novamente.");
        return;
    }

    alert("Cadastro concluído com sucesso!");
}
