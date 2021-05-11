#!/bin/sh

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/adamr/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install basic stuff
brew install curl git antigen

# install zsh config
cp .zshrc ~/.zshrc

# install some casks
brew install —cask iterm2 visual-studio-code

# setup powerlines fonts
brew tap homebrew/cask-fonts
brew install font-powerline-symbols
echo “Select ‘PowerlineSymbols’ as the ‘Non-ASCII font’ in your iTerm2 profile preferences”
