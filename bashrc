# dir for custom aliases, functions, etc
custom_dir="$HOME/dotfiles/custom"

# source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# set terminal in vi mode
set -o vi

# increase bash history
HISTFILESIZE=10000

# source custom configs
for file in $custom_dir/*; do
  if (echo $file | grep -i README)
    then : #does nothing
  elif (echo $file | grep -i .gititnore) 
    then echo "Found gitignore file";
  else
    echo "sourcing $file"
    . $file
  fi
done
