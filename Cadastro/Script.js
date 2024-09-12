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