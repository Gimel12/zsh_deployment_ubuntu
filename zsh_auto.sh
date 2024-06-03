#!/bin/bash

# Update package list
sudo apt update

# Install zsh
sudo apt install -y zsh

# Change default shell to zsh
chsh -s $(which zsh)

# Verify default shell
echo "Default shell is now: $SHELL"

# Install git
sudo apt install -y git

# Install Oh-My-Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone and install zsh-multiline theme
git clone https://github.com/jan-auer/zsh-multiline.git ~/.oh-my-zsh/custom/themes/zsh-multiline

# Install vim
sudo apt install -y vim

# Update .zshrc to use the new theme
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="zsh-multiline\/multiline"/' ~/.zshrc

# Install powerline and fonts-powerline
sudo apt-get install -y powerline fonts-powerline

# Clone plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Add plugins to .zshrc
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting docker aws colorize sudo copyfile gitignore heroku history npm node extract)/' ~/.zshrc

# Source the updated .zshrc
source ~/.zshrc

echo "Installation complete. Please restart your terminal."

# Note: The uninstall command is incorrect in the provided instructions. Correcting it.
# Uninstall Oh-My-Zsh
uninstall_oh_my_zsh() {
  sh ~/.oh-my-zsh/tools/uninstall.sh
}

echo "If you wish to uninstall Oh-My-Zsh, run the function: uninstall_oh_my_zsh"
