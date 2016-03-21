#!/bin/sh

rm -rf .tmp
rm -rf dist
mkdir dist
mkdir dist/scripts
touch dist/scripts/script.js
mkdir .tmp
mkdir .tmp/scripts
touch .tmp/scripts/script.js
./copy.sh
babel src -d .tmp -w &
watchify .tmp/scripts/script.js -o dist/scripts/script.js &
node-sass src/scss/style.scss -o dist/css/ &
node-sass -w src/scss/style.scss -o dist/css/ &
cd dist
python -m SimpleHTTPServer 7777