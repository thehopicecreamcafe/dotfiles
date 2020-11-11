Installation
=======

Sometimes this is really easy to do, but some linux systems have been tricky.  Here are some reminders for myself.

You may need to install vim and alias vi to vim.  i.e. had to do this on CentOS7

```
yum install vim
```

And add these lines to .bashrc

```
# add to bashrc (bash_profile for mac)
alias vi='vim'
set -o vi # vi key bindings in terminal
export TERM=screen-256color # ensures colors/themes in vim
source /etc/bash_completion.d/git # git autocompletion with tab

# show git branch in terminal
# https://askubuntu.com/questions/730754/how-do-i-show-the-git-branch-with-colours-in-bash-prompt
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi

# history lives here: ~/.bash_history
export HISTSIZE=10000000
export HISTFILESIZE=1000000

alias cl='clear'
alias gco='git checkout'
alias gd='git diff'
alias gs='git status'
alias gps='git push'
alias gpl='git pull'
alias gs='git status'
alias gl='git log'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
```

Vundle would not work until I ran the `git config` command below. W/o it, git was adding ^M when cloning and it broke everything.

```
git config --global core.autocrlf input
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

```

Once that's set up, just copy the contents of .vimrc here, launch vim and run `:PluginInstall` in vim.  Should install everything.  Close and reopen vimrc and all should be well.

You may need this too, to keep git editor happy.

```
git config --global core.editor /usr/bin/vim
```

PS Don't forget ag.

```
yum install the_silver_searcher
```
