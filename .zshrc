# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# custom aliases
alias be="bundle exec"

alias _ls="/bin/ls"
alias ls="lsd --hyperlink always"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls -t"

alias cd="z"
alias ..="cd .."

alias gws="git status -s"
alias gwS="git status"
alias gc="git commit"
alias gco="git checkout"
alias gf="git fetch"
alias gp="git pull"
alias gps="git push"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Add libpq to the path to properly install pg ruby gem
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
