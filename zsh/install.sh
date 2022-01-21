#!/usr/bin/env bash

set +x

sudo echo "en_US.UTF-8 UTF-8" >/etc/locale.gen && /usr/sbin/locale-gen

# Set the default shell to zsh rather than sh
export SHELL /usr/bin/zsh
export TERM xterm

# run the installation script
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# zsh autosuggestions: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-autosuggestions ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# zsh syntax highlighting: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Mcfly install
sudo ${BASEDIR}/zsh/mcfly_install.sh --git cantino/mcfly

mv "${BASEDIR}/zsh/.zshrc" "${HOME}/"
