#!/bin/bash
# You will need node version >= 10 in system first
NODE_VER=`node --version`

if [ "$NODE_VER" != "v12.13.0" ]
then
  echo "You must use node v12.13.0 to run this script."
  exit
fi

# Remove dir if exist
if [ -d "helloworld-graphql" ]
then
  rm -rf helloworld-graphql
fi

mkdir helloworld-graphql && cd helloworld-graphql

npm init -y
npm install graphql --save

curl https://raw.githubusercontent.com/quangvinh2080/util-scripts/master/raw/graphql/server.js --output server.js

echo "Be about to run example script. See the result below..."
echo
node server.js
echo
echo "Congratulations - you just executed a GraphQL query!."
echo "If you want to view more detail on code. Do command below:"
echo "code helloworld-graphql/server.js"