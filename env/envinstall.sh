#! /bin/bash

CURRENT=$(cd $(dirname $0);pwd)
# echo $CURRENT/aaa
cp $CURRENT/gitconfig.txt ~/.gitconfig
cp $CURRENT/.config.fish.txt ~/config/fish/config.fish