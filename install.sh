#!/usr/bin/env bash
set +x

BASEDIR=$(dirname "$0")

# install zsh and plugins
${BASEDIR}/zsh/install.sh

# install krypton
${BASEDIR}/krypton/install.sh
