#!/bin/bash

echo "Please confirm you already in root path of the react app (y/n)"
read confirm

if [ "$confirm" == "y" ]; then
  npx -p @storybook/cli sb init

  echo "Add storybook successfully"
  echo " yarn test --watchAll"
  echo " - to use jest to run the test runner (Jest) in a terminal:"
  echo " yarn storybook"
  echo " - to start the component explorer on port 9009:"
  echo " yarn start"
  echo " - to run the frontend app"
fi