# scripts/create-app.sh

## Overview
Shell script that creates a new daily web app under `apps/YYYY-MM-DD/`. It scaffolds HTML, CSS, JS, and a README with the current date injected into content.

## Responsibilities
- Computes today’s date (`YYYY-MM-DD`) and defines `apps/$DATE` as the target directory.
- Skips creation if the directory already exists (idempotent).
- Generates:
  - `index.html` with date placeholders replaced via `sed -i`.
  - `style.css` with responsive, modern styling.
  - `script.js` with a small interactive button demo.
  - `README.md` documenting the app.

## How It Works
1. `DATE=$(date +%Y-%m-%d)` determines the folder name.
2. Checks for existing `apps/$DATE` directory; exits early if found.
3. Uses heredocs to write file contents.
4. Replaces `DATE_PLACEHOLDER` tokens in `index.html` using `sed -i`.

## Inputs/Outputs
- Input: System date/time and filesystem state.
- Output: A new folder populated with a working static web app.

## Extensibility
- Add more files (e.g., assets) by appending heredoc blocks.
- Parameterize date or destination via flags: `create-app.sh -d 2025-01-01 -o apps/custom/`.
- Add CI hook to run this script daily via cron or GitHub Actions.

## Notes
- The `sed -i` flag differs across GNU/macOS. For portability, consider `sed -i '' ...` on macOS or use `envsubst`.