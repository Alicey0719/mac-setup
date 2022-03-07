#! /bin/bash

CURRENT=$(cd $(dirname $0);pwd)
# echo $CURRENT/aaa

## git
cp $CURRENT/gitconfig.txt ~/.gitconfig
git config --global credential.helper osxkeychain

## fish
mkdir -p ~/.config/fish/completions
cp $CURRENT/config.fish.txt ~/.config/fish/config.fish
cd ~/.config/fish/
git clone https://github.com/evanlucas/fish-kubectl-completions.git
ln -s ~/.config/fish/fish-kubectl-completions/completions/kubectl.fish completions/
cd -

## node
mkdir -p ~/.nodebrew/src
export PATH=$HOME/.nodebrew/current/bin:$PATH && \
    source ~/.bashrc && \
    set -x PATH $HOME/.nodebrew/current/bin $PATH && \
    nodebrew install-binary stable && \
    nodebrew use stable

## mtr
ln /usr/local/Cellar/mtr/0.95/sbin/mtr /usr/local/bin/mtr
ln /usr/local/Cellar/mtr/0.95/sbin/mtr-packet /usr/local/bin/mtr-packet

## mouse acceleration
defaults write .GlobalPreferences com.apple.mouse.scaling -1
