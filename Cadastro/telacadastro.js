const selectElement = document.getElementById("tipoCadastro");

selectElement.addEventListener("change", function() {
  const firstOption = this.querySelector("option[value='']");
  if (firstOption) {
    firstOption.remove();
  }
});

function mostrarFormulario() {
    var tipo = document.getElementById("tipoCadastro").value;

    document.getElementById("FormularioPaciente").style.display = "none";
    document.getElementById("FormularioCuidador").style.display = "none";


    if (tipo === "Paciente") {
      document.getElementById("FormularioPaciente").style.display = "block";
    } else if (tipo === "Cuidador") {
      document.getElementById("FormularioCuidador").style.display = "block";
    }
}

function habilitarCampos() {
  var tipoCadastro = document.getElementById("tipoCadastro").value;

  if (tipoCadastro === "Cuidador" || tipoCadastro === "Paciente") {
      document.getElementById("nome").disabled = false;
      document.getElementById("cpf").disabled = false;
      document.getElementById("dataNascimento").disabled = false;
      document.getElementById("email").disabled = false;
  } else {
      alert("Por favor, selecione um tipo de cadastro.");
  }
}

function verificarCadastro() {
  var tipoCadastro = document.getElementById("tipoCadastro").value;

  var nome = document.getElementById("nome").value;
  var cpf = document.getElementById("cpf").value;
  var dataNascimento = document.getElementById("dataNascimento").value;
  var email = document.getElementById("email").value;

  if (nome === "" || cpf === "" || dataNascimento === "" || email === "") {
    alert("Por favor, preencha todos os campos.");
    return;
  }

  if (tipoCadastro === "") {
      alert("Por favor, selecione um tipo de cadastro.");
      return;
  }


  if (tipoCadastro === "Cuidador") {
      window.location.href = "../Cadastro/Ccuidador.html";
  } else if (tipoCadastro === "Paciente") {
      window.location.href = "../Cadastro/Cpaciente.html";
}
}

