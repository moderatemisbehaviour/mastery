#!/bin/sh
VERSION=4.4.1
CYPRESS_CONFIG_FILE_PATH=$(npx cypress cache path)/$VERSION/Cypress/resources/app/packages/server/config/app.yml 
sed -i 's/https:\/\/api.cypress.io\//https:\/\/sorry-cypress-dot-moderatemisbehaviour.nw.r.appspot.com/g' $CYPRESS_CONFIG_FILE_PATH