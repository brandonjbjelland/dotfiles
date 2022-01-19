#!/usr/bin/env bash
set +x

# install zsh and plugins
BASEDIR=$(dirname "$0")

sudo "${BASEDIR}/zsh/mcfly_install.sh" --git cantino/mcfly
mv "${BASEDIR}/zsh/.zshrc" "${HOME}/"

# install krypton
sudo "${BASEDIR}/krypton/install.sh"
