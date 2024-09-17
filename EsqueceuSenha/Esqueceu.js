function togglePasswordVisibility(inputId) {
    const input = document.getElementById(inputId);
    if (input.type === "password") {
        input.type = "text";
    } else {
        input.type = "password";
    }
}

document.getElementById("resetPasswordForm").addEventListener("submit", function (e) {
    e.preventDefault();
    const newPassword = document.getElementById("newPassword").value;
    const confirmPassword = document.getElementById("confirmPassword").value;

    if (newPassword === confirmPassword) {
        alert("Senha redefinida com sucesso!");
        // Aqui você pode adicionar a lógica de envio de dados ao servidor.
    } else {
        alert("As senhas não coincidem.");
    }
});