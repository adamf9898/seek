# SEEK | THINK | LOVE | PUT

A spiritual framework for daily living, grounded in Biblical principles.

## Overview

This project presents four foundational principles for Christian living:

- **SEEK** `Matthew 6:33` - `Prioritize your relationship with God`
- **THINK** - `Philippians 4:8` - `Guard your mind with righteous thoughts`
- **LOVE** - `1 Corinthians 13:4-8` - `Express Christ-like love in relationships`
- **PUT** - `Ephesians 6:11-18` - `Put on the spiritual armor of God`

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

All scripture is from The King James Version of THE HOLY BIBLE.

### SEEK - Matthew 6:33
"But seek ye first the kingdom of God, and his righteousness; and all these things shall be added unto you."

### THINK - Philippians 4:8
"Finally, brethren, whatsoever things are true, whatsoever things are honest, whatsoever things are just, whatsoever things are pure, whatsoever things are lovely, whatsoever things are of good report; if there be any virtue, and if there be any praise, think on these things."

### LOVE - 1 Corinthians 13:4-8
"4 Charity suffereth long, and is kind; charity envieth not; charity vaunteth not itself, is not puffed up,

5 Doth not behave itself unseemly, seeketh not her own, is not easily provoked, thinketh no evil;

6 Rejoiceth not in iniquity, but rejoiceth in the truth;

7 Beareth all things, believeth all things, hopeth all things, endureth all things.

8 Charity never faileth: but whether there be prophecies, they shall fail; whether there be tongues, they shall cease; whether there be knowledge, it shall vanish away."

### PUT - Ephesians 6:11-18
"11 Put on the whole armour of God, that ye may be able to stand against the wiles of the devil.

12 For we wrestle not against flesh and blood, but against principalities, against powers, against the rulers of the darkness of this world, against spiritual wickedness in high places.

13 Wherefore take unto you the whole armour of God, that ye may be able to withstand in the evil day, and having done all, to stand.

14 Stand therefore, having your loins girt about with truth, and having on the breastplate of righteousness;

15 And your feet shod with the preparation of the gospel of peace;

16 Above all, taking the shield of faith, wherewith ye shall be able to quench all the fiery darts of the wicked.

17 And take the helmet of salvation, and the sword of the Spirit, which is the word of God:

18 Praying always with all prayer and supplication in the Spirit, and watching thereunto with all perseverance and supplication for all saints;"

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




---

```
More Info
```

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