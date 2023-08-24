# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  kubectl
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source "${ZSH}/oh-my-zsh.sh"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ${HOME}/.zshrc"
# alias ohmyzsh="mate ${HOME}/.oh-my-zsh"

# Add Visual Studio Code (code)
export GOPATH="${HOME}/go/"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:${GOPATH//://bin:}/bin"
export PATH="$PATH:${HOME}/Development/bin"

alias cdd='cd ..'
alias cddd='cd ../..'
alias cdddd='cd ../../..'
alias cddddd='cd ../../../..'
alias cdddddd='cd ../../../../..'
alias gcurl='curl --header "Authorization: Bearer $(gcloud config config-helper --format=value\(credential.id_token\))"'

alias cd_git="cd ${HOME}/Development/git/"
alias q='exit'
alias vi_zshrc="code ${HOME}/.zshrc"

# fpath=$(/usr/local/share/zsh-completions $fpath)
export PATH=/usr/local/opt/mysql-client/bin:$PATH
export PATH=$PATH:${HOME}/.porter
export PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=${PATH}:/Library/Frameworks/Python.framework/Versions/3.9/bin
export PATH=${PATH}:${HOME}/Development/flutter/bin

alias build='nocorrect build '
alias diff='diff -u'
# unsetopt correct_all
alias gbrew="sudo chown -R $(whoami) /usr/local/bin /usr/local/etc /usr/local/sbin /usr/local/share /usr/local/share/doc && brew "
alias flush_dns='sudo killall -HUP mDNSResponder ; sudo killall mDNSResponderHelper ; sudo dscacheutil -flushcache'

alias k_ubuntu="k run -i --tty ubunt1 --image=ubuntu -- sh"
alias KR_PAIR="sed -i 's/\/usr\/local\/bin\/krgpg/\/usr\/bin\/krgpg/g' ${HOME}/.gitconfig && kr pair"

# Added by Krypton
export GPG_TTY=$(tty)

eval "$(mcfly init zsh)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/bbjelland/mambaforge/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/Users/bbjelland/mambaforge/etc/profile.d/conda.sh" ]; then
    . "/Users/bbjelland/mambaforge/etc/profile.d/conda.sh"
  else
    export PATH="/Users/bbjelland/mambaforge/bin:$PATH"
  fi
fi
unset __conda_setup

if [ -f "/Users/bbjelland/mambaforge/etc/profile.d/mamba.sh" ]; then
  . "/Users/bbjelland/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bbjelland/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/bbjelland/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bbjelland/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/bbjelland/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# conda config --set auto_activate_base false
# export CONDA_AUTO_ACTIVATE_BASE=false
# conda deactivate
export CLOUDSDK_PYTHON_SITEPACKAGES=1

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/opt/homebrew/opt/micromamba/bin/micromamba"
export MAMBA_ROOT_PREFIX="/Users/bbjelland/micromamba"
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__mamba_setup"
else
  if [ -f "/Users/bbjelland/micromamba/etc/profile.d/micromamba.sh" ]; then
    . "/Users/bbjelland/micromamba/etc/profile.d/micromamba.sh"
  else
    export PATH="/Users/bbjelland/micromamba/bin:$PATH" # extra space after export prevents interference from conda init
  fi
fi
unset __mamba_setup
# <<< mamba initialize <<<
unsetopt correct_all

alias ntfy_me='ntfy publish bjb-ras'
alias aws-setup="source ${HOME}/Development/bin/_aws_auth.sh && _aws_auth"
