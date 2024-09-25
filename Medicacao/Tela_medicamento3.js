        const medications = [
            "Cinfamucol paracetamol/acetilcisteína 500 mg/200 mg polvo efervescente",
            "Couldina con paracetamol comprimidos efervescentes",
            "Couldina instant con paracetamol granulado efervescente",
            "Gripposat con paracetamol/cafeína cápsulas duras",
            "Paracetamol qualigen 1g comprimidos efervescentes efg",
            "Paracetamol abamed 1g comprimidos efg",
            "Paracetamol accord 1g comprimidos efg",
            "Paracetamol accord 1g comprimidos efervescentes efg"
        ];

        function filterResults() {
            const input = document.getElementById("medication").value.toLowerCase();
            const resultsDiv = document.getElementById("results");
            resultsDiv.innerHTML = ""; // Limpa os resultados anteriores

            medications.forEach(med => {
                if (med.toLowerCase().includes(input)) {
                    const p = document.createElement("p");
                    p.textContent = med;
                    p.onclick = () => alert(`Você selecionou: ${med}`);
                    resultsDiv.appendChild(p);
                }
            });
        }
