// Load and display content from data.json
document.addEventListener('DOMContentLoaded', async () => {
    try {
        const response = await fetch('data.json');
        const data = await response.json();
        
        renderSections(data.sections);
        setupToggleHandlers();
    } catch (error) {
        console.error('Error loading data:', error);
        displayError();
    }
});

/**
 * Render all sections from the data
 */
function renderSections(sections) {
    const container = document.getElementById('sections-container');
    
    sections.forEach(section => {
        const sectionCard = createSectionCard(section);
        container.appendChild(sectionCard);
    });
}

/**
 * Create a section card element
 */
function createSectionCard(section) {
    const card = document.createElement('div');
    card.className = 'section-card';
    card.id = section.id;
    
    card.innerHTML = `
        <div class="section-header" data-section="${section.id}">
            <div>
                <h2 class="section-title">${section.title}</h2>
                <p class="section-reference">${section.reference}</p>
            </div>
            <span class="toggle-icon">▼</span>
        </div>
        <div class="section-content expanded">
            <blockquote class="section-verse">${section.verse}</blockquote>
            <p class="section-description">${section.description}</p>
            <h3 class="practices-title">Key Practices:</h3>
            <ul class="practices-list">
                ${section.practices.map(practice => `<li>${practice}</li>`).join('')}
            </ul>
        </div>
    `;
    
    return card;
}

/**
 * Setup toggle handlers for expanding/collapsing sections
 */
function setupToggleHandlers() {
    const headers = document.querySelectorAll('.section-header');
    
    headers.forEach(header => {
        header.addEventListener('click', () => {
            const content = header.nextElementSibling;
            const icon = header.querySelector('.toggle-icon');
            
            content.classList.toggle('expanded');
            icon.classList.toggle('rotated');
        });
    });
}

/**
 * Display error message if data fails to load
 */
function displayError() {
    const container = document.getElementById('sections-container');
    container.innerHTML = `
        <div class="section-card">
            <p style="color: #e74c3c; text-align: center;">
                Unable to load content. Please refresh the page or check your connection.
            </p>
        </div>
    `;
}
