eval "$(starship init zsh)"

# autoload -U colors && colors
# setopt prompt_subst
#
# parse_git_branch() {
#   git branch 2> /dev/null | grep '^*' | sed 's/* //'
# }
#
# PS1='%F{red}%~ %F{yellow}$(parse_git_branch) > '

export TERM="xterm-256color"


export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

plugins=(git)


# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
export PATH=$PATH:/Users/fo/.bun/bin

alias jj="nvim"
alias ll="NVIM_APPNAME=lazyvim nvim"
alias nn="NVIM_APPNAME=neo nvim"
alias la="ls -la"
alias gg="lazygit"
alias ff="yazi"
alias nv="cd ~/.config/nvim && nvim"
alias cc="cd ~/.config && nvim"
alias c="code ."
alias zz="zed ."
alias j="z"
alias ww="webstorm ."
alias mk="mkdir"
alias bd="bun dev"
alias x="clear"
alias xx="exit"
alias ..="cd .."
alias bi="(brew formulae; brew casks) | sort -u | fzf | xargs brew install"
alias br="(brew list --formulae; brew list --casks) | sort -u | fzf | xargs brew uninstall"
alias bu="brew upgrade"
alias res="cd ~/dev/restaurants/template && nvim"
alias ta="tmux a"
alias tn="tmux new -s"
alias tls="tmux list-sessions"
alias tk="tmux kill-session -t"

alias so="source ~/.zshrc"
# ---- Eza (better ls) -----

alias ls="eza --icons=always -l --colour=always"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
eval "$(rbenv init - zsh)"
