#!/usr/bin/env bash

rm -rf ../www
mkdir ../www
hugo -d ../www -v
ls ../www -l
ls ../www/about_0x6368616e67
cp -rf ../logo.png ../www/images
cp -rf ../favicon.png ../www
cp -rf ../favicon.png ../www/favicon.ico
pip install lxml
mkdir ../www/about
mkdir ../www/awesome-rust
python gen.py
rm -rf ../www/about_0x6368616e67
rm -rf ../www/awesome_rust
cp static/favicon.ico ../www
