#!/bin/bash

echo "Installing dotfiles"

source install/link.sh

if [ "$(uname)" == 'Linux' ]; then
    echo "Running on Linux"

    echo "Some linux useful packages"
    source install/linux.sh

    echo "Installing node (from nvm)"
    source install/nvm.sh

    echo "Configuring nginx"
    # create a backup of the original nginx.conf
    mv /usr/local/etc/nginx/nginx.conf /usr/local/etc/nginx/nginx.original
    ln -s ~/.dotfiles/nginx/nginx.conf /usr/local/etc/nginx/nginx.conf
    # symlink the code.dev from dotfiles
    ln -s ~/.dotfiles/nginx/code.dev /usr/local/etc/nginx/sites-enabled/code.dev

fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "We are done, bye."
