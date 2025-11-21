// Funções para abrir e fechar modal de skins
let currentModal = null;

function openSkinsModal(brawlerId, brawlerName) {
    // Fazer requisição AJAX para buscar as skins
    fetch(`get_skins.php?brawler_id=${brawlerId}`)
        .then(response => response.json())
        .then(data => {
            showModal(brawlerName, data);
        })
        .catch(error => {
            console.error('Erro ao buscar skins:', error);
            alert('Erro ao carregar as skins. Tente novamente.');
        });
}

function showModal(brawlerName, skins) {
    // Criar modal
    const modal = document.createElement('div');
    modal.className = 'modal';
    modal.id = 'skinsModal';

    let skinsHTML = '';
    if (skins.length > 0) {
        skins.forEach(skin => {
            skinsHTML += `
                <div class="skin-item">
                    <div class="skin-icon">
                        <img src="images/skins/${skin.icon}" alt="${skin.name}" onerror="this.parentElement.innerHTML='🎨'">
                    </div>
                    <h4>${skin.name}</h4>
                </div>
            `;
        });
    } else {
        skinsHTML = '<p style="text-align:center; font-size:24px; color:#fff;">Nenhuma skin disponível para este brawler.</p>';
    }

    modal.innerHTML = `
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2 style="font-size: 48px; color: #000; text-align: center; margin-bottom: 20px;">
                Skins de ${brawlerName}
            </h2>
            <div class="skins-grid">
                ${skinsHTML}
            </div>
        </div>
    `;

    document.body.appendChild(modal);
    currentModal = modal;

    // Mostrar modal
    setTimeout(() => {
        modal.style.display = 'block';
    }, 10);

    // Fechar ao clicar fora
    modal.onclick = function(event) {
        if (event.target === modal) {
            closeModal();
        }
    };
}

function closeModal() {
    if (currentModal) {
        currentModal.style.display = 'none';
        setTimeout(() => {
            currentModal.remove();
            currentModal = null;
        }, 300);
    }
}

// Fechar modal com tecla ESC
document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') {
        closeModal();
    }
});

// Animação de entrada dos cards
document.addEventListener('DOMContentLoaded', function() {
    const cards = document.querySelectorAll('.brawler-card, .icon-card');
    cards.forEach((card, index) => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(30px)';
        setTimeout(() => {
            card.style.transition = 'all 0.5s ease';
            card.style.opacity = '1';
            card.style.transform = 'translateY(0)';
        }, index * 50);
    });
});
