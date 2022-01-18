#!/usr/bin/env bash
set +x

# install zsh and plugins
sudo ./zsh/mcfly_install.sh --git cantino/mcfly
mv zsh/.zshrc $HOME/

# install krypton
sudo ./krypton/install.sh
