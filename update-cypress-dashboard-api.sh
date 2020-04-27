#!/bin/sh
VERSION=4.4.1
CYPRESS_CONFIG_FILE_PATH=$(npx cypress cache path)/$VERSION/Cypress.app/Contents/Resources/app/packages/server/config/app.yml
sed -i 's/https:\/\/api.cypress.io\//http:\/\/localhost:1234\//g' $CYPRESS_CONFIG_FILE_PATH