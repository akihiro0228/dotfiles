#!/bin/sh

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/dotfiles/oh-my-zsh/themes/original.zsh-theme ~/.oh-my-zsh/themes/original.zsh-theme

# symlink
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.editorconfig ~/.editorconfig
