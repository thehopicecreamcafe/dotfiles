#!/bin/bash

# Symlinks dotfiles into home dir, backs up old dotfiles

# vars
dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc vim"

# create directory for old dotfiles
echo "Creating $olddir in ~ dir for older dotfiles"
mkdir -p $olddir
echo "...done"

# backup existing dotfiles and symlink new ones
COUNTER=0
for file in $files; do
  echo $((++COUNTER))
  if [ -f ~/.$file ]; then
    echo "Moving ~/.$file to $olddir"
    mv ~/.$file $olddir/
  fi
  if [ -d ~/.$file ]; then
    echo "Moving ~/.$file to $olddir"
    mv ~/.$file $olddir/
  fi
  echo "Creating symlink to $file in home dir"
  ln -s $dir/$file ~/.$file
done

source ~/.bashrc
