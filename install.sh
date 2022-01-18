#!/usr/bin/env bash

# install zsh and plugins
./zsh/mcfly_install.sh
mv zsh/.zshrc $HOME/

# install krypton
./krypton/install.sh
