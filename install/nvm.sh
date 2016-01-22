#!/bin/sh
#install nvm to .nvm dir
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
# reload nvm into this environment
source ~/.nvm/nvm.sh