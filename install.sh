#!/usr/bin/env bash
set +x

BASEDIR=$(dirname "$0")

# install zsh and plugins
sudo ${BASEDIR}/zsh/mcfly_install.sh --git cantino/mcfly
${BASEDIR}/zsh/plugin_install.sh
mv "${BASEDIR}/zsh/.zshrc" "${HOME}/"

# install krypton
${BASEDIR}/krypton/install.sh
