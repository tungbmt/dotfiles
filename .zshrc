HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=$HISTSIZE

# aliases
alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -l"
alias lla=" ll -A"

alias vim="nvim"

alias glog="git log --all --decorate --oneline --graph"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zsh plugins
source ~/.zsh/zsh-z/zsh-z.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"

autoload -U compini && compinit
zstyle ':completion:*' menu selectl