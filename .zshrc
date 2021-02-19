export LC_ALL=en_US.UTF-8
export PATH=/usr/local/opt/ruby/bin:$HOME/.cargo/bin:$HOME/Code/depot_tools:$PATH

export ZSH=$HOME/.oh-my-zsh
export EIKAIWA_BASEDIR=$HOME/Code/replace
export NIX_SSL_CERT_FILE=$HOME/.nix-profile/etc/ssl/certs/ca-bundle.crt

ZSH_THEME=""

autoload -U promptinit; promptinit
prompt pure

# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias enable_emsdk="source $HOME/Code/emsdk/emsdk_env.sh"
alias work="nvim -S $HOME/nvim_session.nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# NVM speedup fix
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
export PATH="$NVM_DIR/versions/node/v$(<$NVM_DIR/alias/default)/bin:$PATH"
alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; nvm $@"
