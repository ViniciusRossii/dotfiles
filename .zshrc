export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Init Starship
eval "$(starship init zsh)"

# NVM Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Retrieve wallpaper colors
# wal -R -q
