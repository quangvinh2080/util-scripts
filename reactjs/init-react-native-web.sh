#!/bin/bash
# Command to create react app with react-native-web
# Please use node >= 12.13.0

function restructure-dir () {
  mkdir src/components
  cp src/App.js src/components/App.js
  rm src/App.test.js src/App.css
  rm src/logo.svg

  sed -i'.bak' -e 's/\.\/App/\.\/components\/App/g' src/index.js
  rm src/index.js.bak
}

function create-file-getting-start() {
  cp ../../raw/reactjs/getting-start-react-native-web.js ./src/components/App.js
  rm src/App.js
}

if [ "$2" != "" ]
then
	:
else
  echo "Please specify destination"
  exit
fi

if [ "$1" != "" ]
then
  npx create-react-app $1
  cd $1
  yarn add react-native-web styled-components

  restructure-dir
  create-file-getting-start

  cd ..
  mv $1 $2
  cd $2

  npm start
else
  echo "Please specify app name"
fi

