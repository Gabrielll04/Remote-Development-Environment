#!/bin/bash
# Script to install initial configurations

# Install other necessary packages and configurations
# pacman -Syu --noconfirm &&
#     pacman -Sy --noconfirm curl base-devel wget neovim git make
# rm -rf  /var/cache/pacman/pkg/* 

# Install Yay
mkdir -p /tmp/yay-build 
    useradd -m -G wheel builder && passwd -d builder && 
    chown -R builder:builder /tmp/yay-build && 
    echo 'builder ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

su - builder -c "git clone https://aur.archlinux.org/yay.git /tmp/yay-build/yay" && 
    su - builder -c "cd /tmp/yay-build/yay && makepkg -si --noconfirm" && 
    rm -rf /tmp/yay-build

# # Install LunarVim
git clone https://github.com/ChristianChiarulli/LunarVim.git
 # &&
#     ~/.config/nvim/utils/installer/install.sh --noconfirm 