document.querySelector('.discard-button').addEventListener('click', () => {
    if (confirm('Tem certeza de que deseja descartar as informações?')) {
      document.querySelector('.exam-form').reset();
    }
  });
  
  document.querySelector('.save-button').addEventListener('click', (e) => {
    e.preventDefault();
    alert('Informações salvas com sucesso!');
  });
  