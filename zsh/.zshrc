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

# Aliases
alias lg='lazygit'
alias ls='eza --icons'
alias lzd='lazydocker'
alias exp='nautilus . & disown'
alias vim="nvim"

# Android Sdk Path
export ANDROID_HOME=$HOME/Android/Sdk

# Custom GOPATH
export GOPATH=$HOME/.go

# Editor
export EDITOR="vim"

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
