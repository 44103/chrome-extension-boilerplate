#!/bin/sh
echo "Enter the Project Name >> "
read PROJECT_NAME
npx degit https://github.com/sivertschou/react-typescript-chrome-extension-boilerplate.git $PROJECT_NAME
cd $PROJECT_NAME
yarn install
yarn start