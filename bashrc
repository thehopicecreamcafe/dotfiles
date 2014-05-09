# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# set terminal in vi mode
set -o vi

# for copying and pasting using putty
vimrcoff() {
  mv ~/.vimrc ~/.vimrc.bak
}

vimrcon() {
  mv  ~/.vimrc.bak ~/.vimrc
}
