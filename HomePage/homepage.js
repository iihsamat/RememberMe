function toggleMenu() {
    const sideMenu = document.getElementById('side-menu');
    sideMenu.classList.toggle('active');
}

function editCard(cardNumber) {
    let content = prompt("Digite o novo conteúdo para o Card " + cardNumber + ":");
    if (content) {
        document.getElementById('card-' + cardNumber).querySelector('p').innerText = content;
    }
}