scr=$(pwd)
cd ../
loc=$(pwd)/$1
ng new $1

cd $loc
yarn add -D @openapitools/openapi-generator-cli

cat $scr/app.module.ts > $loc/src/app/app.module.ts
cat $scr/environment.ts  > $loc/src/environments/environment.ts
cat $scr/openapitools.json  > $loc/openapitools.json
