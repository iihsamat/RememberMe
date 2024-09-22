document.addEventListener("DOMContentLoaded", function() {

  const discardButton = document.querySelector('.discard-button');
  const confirmModal = document.getElementById('confirm-modal');
  const confirmYes = document.getElementById('confirm-yes');
  const confirmNo = document.getElementById('confirm-no');


  function openConfirmModal() {
      confirmModal.style.display = "flex";
  }


  function closeConfirmModal() {
      confirmModal.style.display = "none";
  }

  discardButton.addEventListener('click', openConfirmModal);

  confirmNo.addEventListener('click', closeConfirmModal);


  confirmYes.addEventListener('click', function() {

      window.location.href = '../incidentes.html';
  });


  window.addEventListener('click', function(event) {
      if (event.target == confirmModal) {
          closeConfirmModal();
      }
  });


  const saveButton = document.getElementById('save-button');

  saveButton.addEventListener('click', function() {
      window.location.href = '../incidentes.html';
  });
});