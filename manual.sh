# Installing zsh 
sudo apt install zsh
echo $SHELL

## Adding the new shell as default 
sudo chsh -s $(which zsh)

# or

sudo usermod -s $(which zsh) bizon

# Downloading and installing OH-MY-ZSH
sudo apt install git
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Downloading and installing the theme 
git clone https://github.com/jan-auer/zsh-multiline.git ~/.oh-my-zsh/custom/themes/zsh-multiline
sudo apt install vim 
sudo vim ~/.zshrc
# Replace the theme for this one 
ZSH_THEME="zsh-multiline/multiline"

sudo apt-get install powerline fonts-powerline

## Installing plugins and Downloading 
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
 

# Open zsh conf file and add this plugins 
vim .zshrc 
plugins=(git zsh-autosuggestions zsh-syntax-highlighting docker aws colorize sudo copyfile gitignore heroku history npm node extract)
source .zshrc

# Uninstalling Oh-my-zsh 
uninstall oh_my_zsh
