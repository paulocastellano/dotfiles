#!/usr/bin/env bash

set -e

printf "Starting installation of dotfiles...\n"

function doInstall() {

    # create .dotzera
    touch ~/.dotzera
    printf "Dotfiles settings installed.\n"

    # git
    ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
    printf "Git installed.\n"

    # vim
    ln -sf ~/.dotfiles/vim/.vimrc ~/.vimrc
    printf "Vim installed..\n"

    # asdf
    ln -sf ~/.dotfiles/asdf/.asdfrc ~/.asdfrc
    printf "Asdf installed...\n"

    # zshrc
    ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
    printf "Zsh installed....\n"
    return 0
}

# this file check if dotfiles is already instaled or not
FILE=$HOME/.dotzera
if [ -f "$FILE" ]; then

    read -p "Dotfiles is already installed, do you want to install again? All changes will be lost. (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
	    doInstall
    else
        printf "Aborted.\n\n"
        exit 0
	fi
else
    doInstall
fi

unset doInstall

printf "Dotfiles successfully installed!\n"
