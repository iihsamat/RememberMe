let intakeAmount = 3000; // Valor inicial em ml
const step = 50; // Incremento em ml
const minIntake = 1000; // Valor mínimo em ml
const maxIntake = 5000; // Valor máximo em ml
 
const display = document.getElementById('carouselDisplay');
const upButton = document.getElementById('upButton');
const downButton = document.getElementById('downButton');
const days = document.querySelectorAll('.day');
 
function updateDisplay() {
    display.textContent = intakeAmount;
}
 
// Aumentar ingestão
upButton.addEventListener('click', () => {
    if (intakeAmount + step <= maxIntake) {
        intakeAmount += step;
        updateDisplay();
    }
});
 
// Diminuir ingestão
downButton.addEventListener('click', () => {
    if (intakeAmount - step >= minIntake) {
        intakeAmount -= step;
        updateDisplay();
    }
});
 
// Selecionar dias da semana
days.forEach(day => {
    day.addEventListener('click', () => {
        day.classList.toggle('selected');
    });
});
 
updateDisplay(); // Exibir valor inicial