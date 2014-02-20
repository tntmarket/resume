#! /bin/sh

mkdir -p build

cd build
ln -s ../vendor/html5.css html5.css
ln -s ../vendor/normalize.css normalize.css
ln -s ../vendor/entypo.css entypo.css
ln -s ../vendor/socicon.css socicon.css
ln -s ../vendor/font font
cd ..
jade -w -o build src/index.jade &
stylus -w -o build src/style.stylus
