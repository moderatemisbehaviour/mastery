#!/bin/sh
VERSION=$(yarn list --pattern cypress | grep cypress@ | sed 's/.*cypress@//g')
CYPRESS_CONFIG_FILE_PATH=$(npx cypress cache path)/$VERSION/Cypress/resources/app/packages/server/config/app.yml
sed -i 's/https:\/\/api.cypress.io\//https:\/\/sorry-cypress-dot-moderatemisbehaviour.nw.r.appspot.com/g' $CYPRESS_CONFIG_FILE_PATH