#!/bin/bash

# powerline fonts for zsh agnoster theme
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd .. && rm -rf fonts

# oh-my-zsh & plugins
# https://github.com/ohmyzsh/ohmyzsh
if ! command -v zsh &> /dev/null; then
  echo "Zsh not found. Please install zsh first."
  exit 1
fi
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O - | zsh || true

# Install useful zsh plugins
zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'

# Copy your custom .zshrc, and force the robbyrussell theme
cp ./.zshrc ~
sed -i '/^ZSH_THEME/c\ZSH_THEME="robbyrussell"' ~/.zshrc