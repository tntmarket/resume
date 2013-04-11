#! /bin/sh

cd build
rm app.js
rm html5.css
rm normalize.css
ln -s ../src/app.js app.js
ln -s ../src/html5.css html5.css
ln -s ../src/normalize.css normalize.css
cd ..
jade -w -O build src/resume.jade &
stylus -w -o build src/style.stylus
