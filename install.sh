#!/bin/bash

echo "Installing dotfiles"

source install/link.sh

if [ "$(uname)" == 'Linux' ]; then
    echo "Running on Linux"

    echo "Some linux useful packages"
    source install/linux.sh

    echo "Installing node (from nvm)"
    source install/nvm.sh

    echo "Add dvorak(dvjsv) to system"
    sudo shjs layout/layout.js

fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "We are done, bye."
