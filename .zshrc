export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Init Starship
eval "$(starship init zsh)"

# Setup FZF
source <(fzf --zsh)

# NVM Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Retrieve wallpaper colors
# wal -R -q

# Aliases
alias lg='lazygit'
alias ls='eza --icons'

# Android Sdk Path
export ANDROID_HOME=/home/$USER/Android/Sdk

# bun completions
[ -s "/home/rossi/.bun/_bun" ] && source "/home/rossi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
