document.addEventListener('DOMContentLoaded', function() {
    const button = document.getElementById('actionBtn');
    const message = document.getElementById('message');

    const messages = [
        '🎉 Great job!',
        '✨ You clicked it!',
        '🚀 Amazing!',
        '💡 Brilliant!',
        '🌟 Fantastic!',
        '🎯 Perfect!',
        '💪 Nice work!',
        '🔥 On fire!'
    ];

    button.addEventListener('click', function() {
        const randomMessage = messages[Math.floor(Math.random() * messages.length)];
        message.textContent = randomMessage;

        // Add a little animation
        message.style.opacity = '0';
        setTimeout(() => {
            message.style.opacity = '1';
        }, 50);
    });
});
