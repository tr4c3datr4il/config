#!/bin/bash
# My linux setup script

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install curl git zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth 1 https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf

cd ~/ && wget https://raw.githubusercontent.com/1259iknowthat/config/main/configs/.zshrc
wget https://raw.githubusercontent.com/1259iknowthat/config/main/configs/.p10k.zsh

exec zsh

sudo apt install -y qemu-user qemu-user-static gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu binutils-aarch64-linux-gnu-dbg && \
sudo apt install -y gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf binutils-arm-linux-gnueabihf-dbg && \
sudo apt-get -y install qemu-kvm qemu

mkdir ~/Scripts && cd ~/Scripts && wget https://raw.githubusercontent.com/1259iknowthat/ForVM/main/ubuntu.sh
chmod +x ubuntu.sh
./ubuntu.sh