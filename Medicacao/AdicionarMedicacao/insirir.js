document.getElementById('medicamento').addEventListener('input', buscarMedicamento);

function buscarMedicamento() {
    const query = document.getElementById('medicamento').value;
    const listaMedicamentos = document.getElementById('medicamento-list');

    if (query.length > 2) { // Fazer a requisição após 3 caracteres
        const url = `https://connect.medlineplus.gov/service?mainSearchCriteria.v.cs=2.16.840.1.113883.6.1&mainSearchCriteria.v.c=3187-2&mainSearchCriteria.v.dn=Factor%20IX%20assay&informationRecipient.languageCode.c=pt-br`;

        fetch(url)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Erro na rede'); // Lidar com erros de rede
                }
                return response.json();
            })
            .then(data => {
                // Limpar a lista antes de adicionar novos resultados
                listaMedicamentos.innerHTML = '';
                
                // Verifica se há medicamentos retornados
                if (data.feed && data.feed.entry) {
                    data.feed.entry.forEach(item => {
                        const listItem = document.createElement('li');
                        listItem.textContent = item.title;
                        listaMedicamentos.appendChild(listItem);
                    });
                } else {
                    listaMedicamentos.innerHTML = '<li>Nenhum medicamento encontrado</li>'; // Mensagem se nada for encontrado
                }
            })
            .catch(error => {
                console.error('Erro ao buscar medicamentos:', error);
                listaMedicamentos.innerHTML = '<li>Erro ao buscar medicamentos</li>'; // Mensagem de erro
            });
    } else {
        listaMedicamentos.innerHTML = ''; // Limpa a lista se a consulta for menor que 3 caracteres
    }
}
