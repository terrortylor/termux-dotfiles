# set prompt
export PS1="\w\n> "

# ls alias
alias ll='ls -a'
alias lk='ls -al'

# exit
alias mlp='exit'

# over come bad muscle memory
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

# fzf alias
# fzf directory
alias mnj='fzf_dir'
# fzf status directory including hidden
alias mj='fzf_dir_all'
# fzf file and open in vim
alias mk='nvim $(fzf)'

# git stuff
alias gs='git status'
alias gca='git commit --amend'
alias gcane='git commit --amend --no-edit'

# source bin directory contents
source ~/bin/*
