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
npm install express express-graphql graphql --save

curl https://raw.githubusercontent.com/quangvinh2080/util-scripts/master/raw/graphql/server-express.js --output server.js

echo
echo "Since we configured graphqlHTTP with graphiql: true,"
echo "you can use the GraphiQL tool to manually issue GraphQL queries."
echo "If you navigate in a web browser to http://localhost:4000/graphql,"
echo "you should see an interface that lets you enter queries."

echo
echo "Try enter this query"
echo "{ hello }"

echo
echo "code helloworld-graphql/server.js"
echo "Setup done! Be about to start server..."
node server.js