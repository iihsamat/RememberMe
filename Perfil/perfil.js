let isEditing = false;

function editarPerfil() {
    if (isEditing) {
        salvarEdicoes();
    } else {
        iniciarEdicao();
    }
}

function iniciarEdicao() {
    var nomeElement = document.getElementById('nome');
    var dataElement = document.getElementById('data');
    var emailElement = document.getElementById('email');
    var telefoneElement = document.getElementById('telefone');


    nomeElement.innerHTML = `<input type="text" id="editNome" value="${nomeElement.innerText}" class="edit-input">`;
    dataElement.innerHTML = `<input type="text" id="editData" value="${dataElement.innerText}" class="edit-input">`;
    emailElement.innerHTML = `<input type="email" id="editEmail" value="${emailElement.innerText.replace('✉️ ', '')}" class="edit-input">`;
    telefoneElement.innerHTML = `<input type="tel" id="editTelefone" value="${telefoneElement.innerText.replace('📞 ', '')}" class="edit-input">`;


    var editButton = document.querySelector('.editar');
    editButton.innerHTML = 'Salvar';
    
    var encerrarButton = document.querySelector('.encerrar');
    encerrarButton.innerHTML = 'Descartar Alterações';

    isEditing = true;
}

function salvarEdicoes() {

     // Obtendo os valores dos inputs editados
     var editNome = document.getElementById('editNome').value;
     var editData = document.getElementById('editData').value;
     var editEmail = document.getElementById('editEmail').value;
     var editTelefone = document.getElementById('editTelefone').value;
 
     // Atualizando os elementos do DOM
     document.getElementById('nome').innerHTML = editNome;
     document.getElementById('data').innerHTML = editData;
     document.getElementById('email').innerHTML = `✉️ ${editEmail}`;
     document.getElementById('telefone').innerHTML = `📞 ${editTelefone}`;
 
     // Enviar dados para o backend via Fetch API
     fetch('salvarPerfil.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            nome: editNome,
            data: editData,
            email: editEmail,
            telefone: editTelefone
        })
    })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                alert(data.message); // Exibe mensagem de sucesso
            } else {
                alert('Erro: ' + data.message); // Exibe mensagem de erro
            }
        })
        .catch(error => {
            console.error('Erro:', error);
        });    
 
     // Atualizando botões
     var editButton = document.querySelector('.editar');
     editButton.innerHTML = 'Editar';
 
     var encerrarButton = document.querySelector('.encerrar');
     encerrarButton.innerHTML = 'Encerrar Turno';
 
     isEditing = false;
}

function encerrarTurno() {
    if (!isEditing) {

        window.location.href = "../RememberMe/index.html";
    } else {

        descartarEdicao();
    }
}

function descartarEdicao() {

    var nomeElement = document.getElementById('nome');
    var dataElement = document.getElementById('data');
    var emailElement = document.getElementById('email');
    var telefoneElement = document.getElementById('telefone');

    nomeElement.innerHTML = 'Gicelly Gomes';
    dataElement.innerHTML = '📅 21/03/1984';
    emailElement.innerHTML = '✉️ <a href="mailto:gicelly.gomes@etec.sp.gov.br">gicelly.gomes@etec.sp.gov.br</a>';
    telefoneElement.innerHTML = '📞 (13) 99887-7313';


    var editButton = document.querySelector('.editar');
    editButton.innerHTML = 'Editar';

    var encerrarButton = document.querySelector('.encerrar');
    encerrarButton.innerHTML = 'Encerrar Turno';

    isEditing = false;
}
