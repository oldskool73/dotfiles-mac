#!/bin/sh

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install basic stuff
brew install curl git antigen

# install zsh config
ln -s ~/.zshrc $(pwd)/.zshrc

# install some casks
brew install iterm2 visual-studio-code docker

brew install docker-compose docker-completion

# setup powerlines fonts
brew tap homebrew/cask-fonts
brew install font-powerline-symbols
echo “Select ‘PowerlineSymbols’ as the ‘Non-ASCII font’ in your iTerm2 profile preferences”
