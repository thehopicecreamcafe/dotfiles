Installation
=======

Sometimes this is really easy to do, but some linux systems have been tricky.  Here are some reminders for myself.

You may need to install vim and alias vi to vim.  i.e. had to do this on CentOS7

```
yum install vim
alias vi='vim' # add this to bashrc
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
