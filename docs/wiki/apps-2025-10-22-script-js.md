# apps/2025-10-22/script.js

## Overview
Adds interactivity to the daily web app. Listens for button clicks, picks a random celebratory message, and animates the message display.

## Flow
1. Waits for `DOMContentLoaded`.
2. Caches `#actionBtn` and `#message` elements.
3. Defines an array of messages (emojis + short text).
4. On click:
   - Chooses a random message.
   - Updates `#message.textContent`.
   - Triggers a simple fade by toggling `opacity`.

## Notes
- Uses vanilla JavaScript; no dependencies.
- The fade uses a quick opacity toggle with `setTimeout` to ensure repaint.
- Extendable: add messages, or replace with CSS transitions/animations.