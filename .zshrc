# Config setup
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

POWERLEVEL9K_MODE='nerdfont-complete'

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
  zsh-syntax-highlighting
)

POWERLEVEL9K_HIDE_BRANCH_ICON=true

# User configuration

alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

# see https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)

# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{255}%} $user_symbol%{%b%f%k%F{255}%} %{%f%}"

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=’red’

POWERLEVEL9K_SHORTEN_STRATEGY='truncate_to_last'
POWERLEVEL9K_TIME_BACKGROUND='255'
POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true


POWERLEVEL9K_VCS_SHORTEN_LENGTH=15
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=15
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VCS_SHORTEN_DELIMITER=".."
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="24"
POWERLEVEL9K_DIR_HOME_BACKGROUND="24"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="24"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="24"

source $ZSH/oh-my-zsh.sh

# Double quotes are important here!
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{white} $(print_icon 'LEFT_SUBSEGMENT_SEPARATOR') %F{white}"

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='white'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='31'

# Requested by mujoco
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/thecharlesblake/.mujoco/mujoco200/bin


export PATH="/home/thecharlesblake/anaconda3/bin:$PATH"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/thecharlesblake/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/thecharlesblake/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/thecharlesblake/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/thecharlesblake/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/home/thecharlesblake/opt/pycharm-2020.2.2/bin:$PATH"
