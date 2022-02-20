#! /bin/bash

CURRENT=$(cd $(dirname $0);pwd)
# echo $CURRENT/aaa

## git
cp $CURRENT/gitconfig.txt ~/.gitconfig

## node
export PATH=$HOME/.nodebrew/current/bin:$PATH && \
    source ~/.bashrc && \
    nodebrew install-binary stable && \
    nodebrew use stable

## fish
mkdir -p ~/.config/fish/completions
cp $CURRENT/config.fish.txt ~/.config/fish/config.fish
cd ~/.config/fish/
git clone https://github.com/evanlucas/fish-kubectl-completions.git
ln -s ~/.config/fish/fish-kubectl-completions/completions/kubectl.fish completions/
cd -
