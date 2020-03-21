# Sets up termux dotfiles and packages
# Assumes location ~/termux-dotfiles

install_pkg() {
  # todo take second argument as neovim binary is nvim... annoyingly
  if hash ${1} 2>/dev/null; then
    echo '*'
    echo "* ${1} installed"
  else
    pkg install -y ${1}
  fi
}

create_symlink() {
  echo '*'
  echo "* Symlinking /home/${1} /home/${2}"
  ln -sf ${home_path}${2} ${home_path}${1}
}

base_path='/data/data/com.termux/files/'
home_path="${base_path}home/"

install_pkg coreutils
install_pkg neovim
install_pkg git
install_pkg tree
install_pkg fzf
install_pkg man

create_symlink '.bash_profile' 'termux-dotfiles/bash_profile'
create_symlink 'bin' 'termux-dotfiles/bin'

# vim: set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab :
