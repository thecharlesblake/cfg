set -x
sudo apt-get install neovim
sudo apt-get install curl
sudo apt-get install git
sudo apt-get install terminator

sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "You'll need to restart your machine now for zsh to become the default shell. Run echo \$SHELL to test. Then run the commented commands below"
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# Then go to the nerd-fonts website, download the UbuntuMono.zip font file from the latest release and install them all (manually?)
# Then switch the ubuntu font in terminator preferences to the nerd font and any other prefs you want to set
