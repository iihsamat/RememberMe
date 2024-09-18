document.addEventListener("DOMContentLoaded", function() {
    const roleSelector = document.getElementById("roleSelector");
    const inputs = document.querySelectorAll("input");
    const select = document.getElementById("roleSelector");
    const button = document.getElementById("entrarButton");

 
    function updateInputColors(role) {
        inputs.forEach(input => {
            if (role === 'cuidador') {
                input.style.backgroundColor = '';
                input.style.borderColor = '#11D6CA';    //cuidador 
            } else if (role === 'paciente') {
                input.style.backgroundColor = '';
                input.style.borderColor = '#58AAD9';  //paciente
            }
        });

        if (role === 'cuidador') {
            select.classList.remove('paciente');
            select.classList.add('cuidador');
        } else if (role === 'paciente') {
            select.classList.remove('cuidador');
            select.classList.add('paciente');
        }


        if (role === 'cuidador') {
            button.classList.remove('paciente');
            button.classList.add('cuidador');
        } else if (role === 'paciente') {
            button.classList.remove('cuidador');
            button.classList.add('paciente');
        }
    }

 
    updateInputColors(roleSelector.value);


    roleSelector.addEventListener('change', function() {
        const selectedRole = roleSelector.value;
        updateInputColors(selectedRole);
    });
});

document.addEventListener("DOMContentLoaded", function() {
    const togglePasswordButton = document.getElementById("togglePassword");
    const passwordInput = document.getElementById("senha");

    togglePasswordButton.addEventListener("click", function() {
        // Alterna o tipo do campo de senha
        const type = passwordInput.type === "password" ? "text" : "password";
        passwordInput.type = type;

        // Alterna o ícone do botão
        togglePasswordButton.classList.toggle("fa-eye");
        togglePasswordButton.classList.toggle("fa-eye-slash");
    });
});