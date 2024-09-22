document.addEventListener("DOMContentLoaded", function() {
    const fezesToggle = document.getElementById("fezes-toggle");
    const fezesSection = document.getElementById("fezes-section");


    function toggleFezesSection() {
        fezesSection.classList.toggle("active");
        if (fezesSection.style.display === "none" || fezesSection.style.display === "") {
            fezesSection.style.display = "block";
        } else {
            fezesSection.style.display = "none";
        }
    }

    fezesToggle.addEventListener("click", toggleFezesSection);


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

        window.location.href = '../higiene.html';
    });


    window.addEventListener('click', function(event) {
        if (event.target == confirmModal) {
            closeConfirmModal();
        }
    });

 
    const saveButton = document.getElementById('save-button');

    saveButton.addEventListener('click', function() {
        window.location.href = '../higiene.html';
    });
});