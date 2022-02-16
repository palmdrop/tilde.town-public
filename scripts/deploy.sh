#!/bin/bash

# TODO:  make more safe, should work if called from script dir and from root dir
OUT_DIR=dist

rm -r $OUT_DIR/
mkdir -p $OUT_DIR
mkdir -p $OUT_DIR/public
mkdir -p $OUT_DIR/public/css
mkdir -p $OUT_DIR/public/fonts

# cp -r index.html public/fonts public/css/main.css dist/
cp index.html $OUT_DIR/
cp -r archive $OUT_DIR/
cp -r public/fonts $OUT_DIR/public/
cp public/css/main.css $OUT_DIR/public/css/

scp -i ~/.ssh/id_rsa -r ./dist palmdrop@tilde.town:~/public_html/tmp