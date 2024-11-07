function showPage(page) {
    document.querySelectorAll('.page').forEach((section) => {
        section.classList.remove('active');
    });

    document.getElementById(`page-${page}`).classList.add('active');

    document.querySelectorAll('.tab').forEach((tab) => {
        tab.classList.remove('active');
    });

    document.getElementById(`tab-${page}`).classList.add('active');
}

function toggleIntervalFields(selectedOption) {
    const horasDiasField = document.getElementById('horasDiasField');
    const horasDoDiaField = document.getElementById('horasDoDiaField');

    if (selectedOption === 'horasDias') {
        horasDiasField.style.display = 'block';
        horasDoDiaField.style.display = 'none';
    } else if (selectedOption === 'horasDoDia') {
        horasDiasField.style.display = 'none';
        horasDoDiaField.style.display = 'block';
    }
}

document.addEventListener("DOMContentLoaded", function () {
    const doseInput = document.getElementById("dose");
    const increaseButton = document.querySelector(".dose-controls .increase");
    const decreaseButton = document.querySelector(".dose-controls .decrease");

    increaseButton.addEventListener("click", function () {
        doseInput.value = parseInt(doseInput.value) + 1;
    });

    decreaseButton.addEventListener("click", function () {
        if (parseInt(doseInput.value) > 0) {
            doseInput.value = parseInt(doseInput.value) - 1;
        }
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const tratamentoCheckbox = document.getElementById('tratamento-cronico');
    const fimTratamentoInput = document.getElementById('fim-tratamento');

    // Função para mostrar ou esconder o campo de "Fim do tratamento"
    function toggleFimTratamentoField() {
        if (tratamentoCheckbox.checked) {
            fimTratamentoInput.style.display = 'none';  // Esconde o campo de "Fim do tratamento"
        } else {
            fimTratamentoInput.style.display = 'block';  // Exibe o campo de "Fim do tratamento"
        }
    }

    // Inicializa o estado do campo "Fim do tratamento" ao carregar a página
    toggleFimTratamentoField();

    // Adiciona o evento de mudança para a checkbox
    tratamentoCheckbox.addEventListener('change', toggleFimTratamentoField);
});


// Abre a tela de sugestões
function abrirTelaSugestoes() {
    document.getElementById('tela-sugestoes').style.display = 'flex';
    carregarMedicamentos();
}

// Fecha a tela de sugestões
function fecharTelaSugestoes() {
    document.getElementById('tela-sugestoes').style.display = 'none';
}

// Carrega os medicamentos para a lista de sugestões
function carregarMedicamentos() {
    const medicamentos = ["Paracetamol", "Ibuprofeno", "Amoxicilina", "Dipirona", "Aspirina"];
    const listaSugestoes = document.getElementById('lista-sugestoes');
    listaSugestoes.innerHTML = '';  // Limpa a lista de sugestões anteriores

    medicamentos.forEach((medicamento) => {
        const item = document.createElement('li');
        item.textContent = medicamento;
        item.onclick = () => salvarMedicamentoSelecionado(medicamento);
        listaSugestoes.appendChild(item);
    });
}

// Filtra medicamentos com base na entrada do usuário
function filtrarMedicamentos() {
    const input = document.getElementById('input-sugestoes').value.toLowerCase();
    const listaSugestoes = document.getElementById('lista-sugestoes');
    const medicamentos = listaSugestoes.getElementsByTagName('li');

    Array.from(medicamentos).forEach((medicamento) => {
        const medicamentoNome = medicamento.textContent.toLowerCase();
        medicamento.style.display = medicamentoNome.includes(input) ? 'block' : 'none';
    });
}

// Salva o nome do medicamento selecionado da lista
function salvarMedicamentoSelecionado(medicamento) {
    document.getElementById('medicamento-nome').value = medicamento;
    fecharTelaSugestoes();
}

// Salva o nome personalizado, digitado pelo usuário
function salvarNomePersonalizado() {
    const nomePersonalizado = document.getElementById('input-sugestoes').value;
    document.getElementById('medicamento-nome').value = nomePersonalizado;
    fecharTelaSugestoes();
}

// Abre a tela de sugestões com animação
function abrirTelaSugestoes() {
    const overlay = document.getElementById('tela-sugestoes-overlay');
    const telaSugestoes = document.getElementById('tela-sugestoes');

    overlay.style.display = 'block'; // Exibe o fundo escurecido
    telaSugestoes.style.display = 'flex'; // Exibe a tela de sugestões
    setTimeout(() => {
        telaSugestoes.classList.add('show'); // Adiciona a animação com um leve atraso
    }, 10); // Delay pequeno para garantir a transição de animação
}

// Fecha a tela de sugestões e remove o fundo escurecido
function fecharTelaSugestoes() {
    const overlay = document.getElementById('tela-sugestoes-overlay');
    const telaSugestoes = document.getElementById('tela-sugestoes');

    telaSugestoes.classList.remove('show'); // Remove a classe de animação para fechar

    setTimeout(() => { // Aguarda a animação de descida antes de esconder
        telaSugestoes.style.display = 'none';
        overlay.style.display = 'none';
    }, 300); // Tempo para a animação
}

document.addEventListener("DOMContentLoaded", function () {
    const doseInput = document.getElementById("dose");
    const incrementoDose = document.querySelector(".dose-controls .increase");
    const decrementoDose = document.querySelector(".dose-controls .decrease");
    const salvarButton = document.getElementById('save-button');
    
    // Função para verificar se todos os campos obrigatórios estão preenchidos
    function verificarCamposPreenchidos() {
        const nomeMedicamento = document.getElementById('medicamento-nome').value.trim();
        const dose = doseInput.value.trim();
        const inicioTratamento = document.getElementById('inicio-tratamento').value;
        const fimTratamento = document.getElementById('fim-tratamento').value;
        const tratamentoCronico = document.getElementById('tratamento-cronico').checked;
        
        // Verificar se todos os campos obrigatórios estão preenchidos
        const todosCamposPreenchidos = nomeMedicamento !== '' &&
            dose !== '' && dose > 0 &&
            inicioTratamento !== '' && (tratamentoCronico || fimTratamento !== '');  // Se não for crônico, o campo "Fim do tratamento" precisa estar preenchido

        // Ativar ou desativar o botão de salvar
        salvarButton.disabled = !todosCamposPreenchidos;
    }

    // Eventos para verificar quando os campos são alterados
    document.getElementById('medicamento-nome').addEventListener('input', verificarCamposPreenchidos);
    doseInput.addEventListener('input', verificarCamposPreenchidos);
    document.getElementById('inicio-tratamento').addEventListener('change', verificarCamposPreenchidos);
    document.getElementById('fim-tratamento').addEventListener('change', verificarCamposPreenchidos);
    document.getElementById('tratamento-cronico').addEventListener('change', verificarCamposPreenchidos);

    // Inicializa o estado do botão "Salvar" ao carregar a página
    verificarCamposPreenchidos();
    
    // Lógica de incremento e decremento de dose
    incrementoDose.addEventListener("click", function () {
        doseInput.value = parseInt(doseInput.value) + 1;
        verificarCamposPreenchidos();  // Verificar se os campos estão preenchidos após alteração
    });

    decrementoDose.addEventListener("click", function () {
        if (parseInt(doseInput.value) > 0) {
            doseInput.value = parseInt(doseInput.value) - 1;
            verificarCamposPreenchidos();  // Verificar se os campos estão preenchidos após alteração
        }
    });
});

// Função para verificar os campos de intervalo e duração (caso seja necessário)
function verificarCamposIntervalo() {
    const intervalRadioButtons = document.querySelectorAll('input[name="interval"]:checked');
    const horasDiasField = document.getElementById('horasDiasField');
    const horasDoDiaField = document.getElementById('horasDoDiaField');

    const intervaloPreenchido = intervalRadioButtons.length > 0 && 
        (horasDiasField.style.display === 'block' ? document.querySelector('#horasDiasField input[type="number"]').value !== '' : 
        horasDoDiaField.style.display === 'block' ? document.querySelectorAll('#horasDoDiaField input[type="checkbox"]:checked').length > 0 : true);

    // Adicionar verificação do botão de salvar aqui se necessário
    return intervaloPreenchido;
}

// Adicionar evento de verificação ao clicar nos botões de intervalo
document.querySelectorAll('input[name="interval"]').forEach(input => {
    input.addEventListener('change', verificarCamposIntervalo);
});

