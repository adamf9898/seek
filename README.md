# SEEK | THINK | LOVE | PUT

A spiritual framework for daily living, grounded in Biblical principles.

## Overview

This project presents four foundational principles for Christian living:

- **SEEK** - Matthew 6:33: Prioritize your relationship with God
- **THINK** - Philippians 4:8: Guard your mind with righteous thoughts
- **LOVE** - 1 Corinthians 13:4-8: Express Christ-like love in relationships
- **PUT** - Ephesians 6:11-18: Put on the spiritual armor of God

## Structure

The project consists of:

- `index.html` - Main HTML structure
- `styles.css` - Responsive styling and design
- `script.js` - Interactive functionality
- `data.json` - Scripture references and content data

## Usage

1. Open `index.html` in a web browser
2. Click on section headers to expand/collapse content
3. Read scripture verses and practical applications
4. Apply the principles in daily life

## Scripture References

All scripture quotations are from the English Standard Version (ESV).

### SEEK - Matthew 6:33
"But seek first the kingdom of God and his righteousness, and all these things will be added to you."

### THINK - Philippians 4:8
"Finally, brothers, whatever is true, whatever is honorable, whatever is just, whatever is pure, whatever is lovely, whatever is commendable, if there is any excellence, if there is anything worthy of praise, think about these things."

### LOVE - 1 Corinthians 13:4-8
"Love is patient and kind; love does not envy or boast; it is not arrogant or rude. It does not insist on its own way; it is not irritable or resentful; it does not rejoice at wrongdoing, but rejoices with the truth. Love bears all things, believes all things, hopes all things, endures all things. Love never ends."

### PUT - Ephesians 6:11-18
"Put on the whole armor of God, that you may be able to stand against the schemes of the devil. For we do not wrestle against flesh and blood, but against the rulers, against the authorities, against the cosmic powers over this present darkness, against the spiritual forces of evil in the heavenly places."

## Features

- Clean, modern design
- Responsive layout for all devices
- Interactive expand/collapse sections
- Scripture-based content
- Practical application guides

## Development

No build process required. Simply edit the files and refresh the browser.

### Files

- **index.html**: Main structure and markup
- **styles.css**: All styling and responsive design
- **script.js**: Dynamic content loading and interactions
- **data.json**: Content data structure

## License

This project is open source and available for personal and ministry use.

---

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
