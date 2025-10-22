#!/bin/bash

# Script to create a new web app each day

# Get current date in YYYY-MM-DD format
DATE=$(date +%Y-%m-%d)
APP_DIR="apps/$DATE"

# Check if app for today already exists
if [ -d "$APP_DIR" ]; then
  echo "Web app for $DATE already exists. Skipping creation."
  exit 0
fi

echo "Creating web app for $DATE..."

# Create app directory
mkdir -p "$APP_DIR"

# Create a simple HTML file
cat > "$APP_DIR/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web App - DATE_PLACEHOLDER</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Welcome to Today's Web App!</h1>
        <p class="date">Created on: DATE_PLACEHOLDER</p>
        <div class="content">
            <h2>Daily Web Application</h2>
            <p>This is a simple web application created automatically on DATE_PLACEHOLDER.</p>
            <div class="features">
                <h3>Features:</h3>
                <ul>
                    <li>Clean, modern design</li>
                    <li>Responsive layout</li>
                    <li>Interactive elements</li>
                </ul>
            </div>
            <button id="actionBtn">Click Me!</button>
            <p id="message"></p>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>
EOF

# Replace date placeholder
sed -i "s/DATE_PLACEHOLDER/$DATE/g" "$APP_DIR/index.html"

# Create CSS file
cat > "$APP_DIR/style.css" << 'EOF'
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}

.container {
    background: white;
    border-radius: 15px;
    box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
    padding: 40px;
    max-width: 600px;
    width: 100%;
}

h1 {
    color: #667eea;
    text-align: center;
    margin-bottom: 10px;
    font-size: 2.5em;
}

.date {
    text-align: center;
    color: #666;
    font-size: 1.1em;
    margin-bottom: 30px;
}

.content {
    margin-top: 20px;
}

h2 {
    color: #333;
    margin-bottom: 15px;
    border-bottom: 2px solid #667eea;
    padding-bottom: 10px;
}

h3 {
    color: #555;
    margin: 20px 0 10px 0;
}

p {
    color: #666;
    line-height: 1.6;
    margin-bottom: 15px;
}

.features ul {
    list-style-position: inside;
    color: #666;
    margin-left: 20px;
}

.features li {
    margin: 8px 0;
}

button {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border: none;
    padding: 15px 30px;
    border-radius: 25px;
    font-size: 1.1em;
    cursor: pointer;
    display: block;
    margin: 30px auto 20px auto;
    transition: transform 0.2s, box-shadow 0.2s;
}

button:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
}

button:active {
    transform: translateY(0);
}

#message {
    text-align: center;
    color: #667eea;
    font-weight: bold;
    min-height: 24px;
}

@media (max-width: 600px) {
    .container {
        padding: 20px;
    }
    
    h1 {
        font-size: 2em;
    }
}
EOF

# Create JavaScript file
cat > "$APP_DIR/script.js" << 'EOF'
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
EOF

# Create README for the app
cat > "$APP_DIR/README.md" << EOF
# Web App - $DATE

A simple web application created on $DATE.

## How to Run

Open \`index.html\` in a web browser.

## Features

- Modern, responsive design
- Interactive button with random messages
- Clean and simple interface

## Technologies

- HTML5
- CSS3
- Vanilla JavaScript
EOF

echo "✅ Web app for $DATE created successfully in $APP_DIR"
