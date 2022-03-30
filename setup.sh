#! /bin/bash

# Install Applications
CURRENT=$(cd $(dirname $0);pwd)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
    brew update && \
    brew upgrade && \
    brew bundle && \
    which fish | sudo tee -a /etc/shells && \
    chsh -s $(which fish) && \
    bash $CURRENT/env/envinstall.sh && \
    bash $CURRENT/env/mac.sh
