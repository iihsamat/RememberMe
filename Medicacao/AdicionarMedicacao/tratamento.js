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
