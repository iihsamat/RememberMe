document.addEventListener('DOMContentLoaded', function () {
    const selectAno = document.getElementById('diagnostico-ano');
    const currentYear = new Date().getFullYear();

    for (let year = currentYear; year >= 1980; year--) {
        const option = document.createElement('option');
        option.value = year;
        option.textContent = year;
        selectAno.appendChild(option);
    }
});