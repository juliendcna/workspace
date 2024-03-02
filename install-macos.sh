#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

xcode-select --install

brew install tree git terraform tflint wget mongosh helm htop mtr jq hidetatz/tap/kubecolor k9s gcloud 
brew install --cask gitkraken arc shottr orbstack dbeaver-community vlc visual-studio-code sublime-text warp remote-desktop-manager drawio


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

echo $'autoload -Uz compinit\ncompinit\nget zsh complete kubectl\nsource <(kubectl completion zsh)\nalias kubectl=kubecolor\nmake completion work with kubecolor\ncompdef kubecolor=kubectl' >> ~/.zshrc
