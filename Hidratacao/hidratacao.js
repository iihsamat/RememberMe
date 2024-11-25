function toggleMenu() {
        const menu = document.getElementById("menu");
        menu.style.display = menu.style.display === "block" ? "none" : "block";
    }

    // Ocultar o menu ao clicar fora dele
    document.addEventListener("click", (event) => {
        const menu = document.getElementById("menu");
        const menuButton = document.querySelector(".menu-button");
        if (!menu.contains(event.target) && event.target !== menuButton) {
            menu.style.display = "none";
        }
});
