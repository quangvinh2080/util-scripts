#!/bin/bash

rm -rf demo-angular-multiselect-dropdown
mkdir demo-angular-multiselect-dropdown
cd demo-angular-multiselect-dropdown

npm install angularjs-dropdown-multiselect@1.11.8

ln ../../raw/angular/playground-1.html index.html
ln ../../raw/angular/playground-1.js script.js

echo "Edit code at:"
echo "code ./demo-angular-multiselect-dropdown/script.js"

npx live-server