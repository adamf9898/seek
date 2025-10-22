# seek

A repository that automatically creates a new web application every day!

## Overview

This repository uses GitHub Actions to automatically generate a simple web application daily. Each day's app is stored in a dated directory under `apps/`.

## How It Works

1. **GitHub Actions Workflow**: A scheduled workflow runs daily at midnight UTC
2. **App Generation Script**: Creates a new web app with HTML, CSS, and JavaScript
3. **Automatic Commit**: The new app is automatically committed and pushed to the repository

## Manual Creation

You can manually create a web app by running:

```bash
./scripts/create-app.sh
```

## Viewing the Apps

Each daily app is stored in `apps/YYYY-MM-DD/` with:
- `index.html` - The main HTML file
- `style.css` - Styling
- `script.js` - Interactive JavaScript
- `README.md` - App-specific documentation

To view any app, simply open its `index.html` file in a web browser.

## Triggering Manually

You can manually trigger the workflow from the Actions tab in GitHub or wait for the daily automatic run.

## Features of Each App

Each generated web app includes:
- Modern, responsive design
- Interactive elements
- Clean user interface
- Random message generator