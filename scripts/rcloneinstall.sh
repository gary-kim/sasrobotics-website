#!/bin/bash

export CWD=`pwd`
cd /tmp
curl --output rclone.deb -L "https://downloads.rclone.org/rclone-current-linux-amd64.deb"
sudo apt install -y ./rclone.deb
cd $CWD