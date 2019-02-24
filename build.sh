#!/bin/sh
coffee -o lib --compile --bare --map src/*.coffee
browserify --standalone zxcvbn lib/main.js -o zxcvbn1.js
java -jar compiler.jar --js=zxcvbn1.js --js_output_file=dist/zxcvbn.js
