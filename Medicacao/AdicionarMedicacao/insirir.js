document.querySelector('.next-button').addEventListener('click', () => {
    alert('Seguindo para a próxima etapa!');
  });
 
  // Função para desabilitar/ativar abas, caso necessário
  document.querySelectorAll('.tab').forEach(tab => {
    tab.addEventListener('click', () => {
      if (!tab.classList.contains('disabled')) {
        document.querySelectorAll('.tab').forEach(t => t.classList.remove('active'));
        tab.classList.add('active');
      }
    });
  });