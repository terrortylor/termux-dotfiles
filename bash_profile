# set prompt
export PS1="\w\n> "

# run dotfiles setup
alias setup='. ~/termux-dotfiles/setup.sh'

# navigation
alias h='cd ~'

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
# default fzf to preview
alias fp="fzf --preview 'cat {}'"
# fzf directory
alias mnj='fzf_dir'
# fzf status directory including hidden
alias mj='fzf_dir_all'
# fzf file and open in vim
alias mk='nvim $(fzf --preview "cat {}")'

# git stuff
alias gs='git status'
alias gd='git diff'
alias gca='git commit --amend'
alias gcane='git commit --amend --no-edit'

# source bin directory contents
source ~/bin/*
