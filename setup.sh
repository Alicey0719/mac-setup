#! /bin/bash

# rm localized
rm /Applications/.localized
rm ~/Applications/.localized
rm ~/Documents/.localized
rm ~/Downloads/.localized
rm ~/Desktop/.localized
rm ~/Public/.localized
rm ~/Pictures/.localized
rm ~/Music/.localized
rm ~/Movies/.localized
rm ~/Library/.localized

# Install Applications
CURRENT=$(cd $(dirname $0);pwd)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
    brew update && \
    brew upgrade && \
    brew bundle && \
    which fish | sudo tee -a /etc/shells && \
    chsh -s $(which fish) && \
    bash $CURRENT/env/envinstall.sh

git config --global credential.helper osxkeychain