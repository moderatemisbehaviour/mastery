#!/bin/sh
echo "Running Cypress..."
time npx cypress run --headless --spec '**/cypressExample.spec.js' 1> /dev/null

echo "Running Playwright..."
time node playwrightExample.js