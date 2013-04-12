#! /bin/sh

cd build
ln -s ../src/app.js app.js
ln -s ../src/html5.css html5.css
ln -s ../src/normalize.css normalize.css
ln -s ../src/entypo.css entypo.css
ln -s ../font font
cd ..
jade -w -O build src/resume.jade &
stylus -w -o build src/style.stylus
