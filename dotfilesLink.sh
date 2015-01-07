#!/bin/sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim/ ~/.vim
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.bashrc ~/.bashrc
git submodule add https://github.com/Shougo/neobundle.vim .vim/bundle/neobundle.vim
git submodule add https://github.com/Shougo/vimproc .vim/bundle/vimproc
git submodule add https://github.com/tpope/vim-endwise .vim/bundle/vim-endwise
cd .vim/bundle/vimproc
make
cd ~/
mkdir vimbackup
