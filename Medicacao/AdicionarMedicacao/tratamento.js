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
