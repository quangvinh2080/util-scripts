#!/bin/bash
APP=${1:-taskbox}

npx create-react-app demo-$APP
cd demo-$APP
npx -p @storybook/cli sb init

echo "Init react with storybook successfully. Now you can:"
echo "cd demo-$APP"
echo " yarn test --watchAll"
echo " - to use jest to run the test runner (Jest) in a terminal:"
echo " yarn storybook"
echo " - to start the component explorer on port 9009:"
echo " yarn start"
echo " - to run the frontend app"