# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# set terminal in vi mode
set -o vi

# increase bash history
HISTFILESIZE=10000

# for copying and pasting using putty
vimrcoff() {
  mv ~/.vimrc ~/.vimrc.bak
}

vimrcon() {
  mv  ~/.vimrc.bak ~/.vimrc
}

# source custom configs
for file in ~/dotfiles/custom/*; do
  if (echo $file | grep -i README)
    then echo "Found readme file";
  elif (echo $file | grep -i .gititnore) 
    then echo "Found gitignore file";
  else
    echo "sourcing $file"
    . $file
  fi
done
