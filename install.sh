#!/usr/bin/env bash

# install zsh and plugins
./zsh/mcfly_install.sh --git
mv zsh/.zshrc $HOME/

# install krypton
./krypton/install.sh
