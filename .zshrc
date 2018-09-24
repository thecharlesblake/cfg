# Config setup
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Path to your oh-my-zsh installation.
export ZSH="/Users/chblake/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_COLOR_SCHEME='light'

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  zsh-autosuggestions
  vi-mode
  cargo
  docker
)

source $ZSH/oh-my-zsh.sh

# User configuration

alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

# see https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=’red’

