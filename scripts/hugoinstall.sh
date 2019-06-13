#!/bin/bash

export CWD=`pwd`
cd ..
curl --output gohugo.deb -L "https://github.com/gohugoio/hugo/releases/download/v0.55.6/hugo_0.55.6_Linux-64bit.deb"
sudo apt install -y ./gohugo.deb
cd $CWD