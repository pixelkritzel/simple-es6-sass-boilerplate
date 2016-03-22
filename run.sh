#!/bin/sh

rm -rf .tmp
mkdir web
mkdir web/scripts
touch web/scripts/script.js
mkdir .tmp
mkdir .tmp/scripts
touch .tmp/scripts/script.js
babel src/es6 -d .tmp/scripts -w &
watchify .tmp/scripts/script.js -o web/scripts/script.js &
node-sass src/scss/style.scss -o web/css/ &
node-sass -w src/scss/style.scss -o web/css/ &
cd web
python -m SimpleHTTPServer 7777