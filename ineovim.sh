#!/bin/bash
# Variables for colors(text)
RED="\033[31m"
Green="\033[0;32m"
Yellow="\033[0;33m"
Cyan="\033[0;36m"
NC="\033[0m"



echo -e "${Green}The script will install NeoVim... ${NC}"
sleep 3
echo = ""



# NeoVim link from github
link=https://github.com/neovim/neovim/releases/download/v0.11.6/nvim-linux-x86_64.tar.gz

# Add bin to PATH
# PATH=$PATH:/home/$USER/.local/bin

#check if exists
if [ ! -d "~/.local" ];
then
  echo -e "${RED}~/.local do not exist, trying to create it... ${NC}"
  mkdir ~/.local/
fi


if [ ! -d "~/.local/bin" ];
then
  echo -e "${RED}~/.local/bin do not exist, trying to create it... ${NC}"
  mkdir ~/.local/bin/
fi


if [ ! -d "~/.config" ];
then
  echo -e "${RED}~/.config/ do not exist, trying to create it... ${NC}"
  mkdir ~/.config/
fi


if [ ! -d "~/.config/nvim" ];
then
  mkdir ~/.config/nvim/
fi

cd /home/$USER/.local/bin/

echo = ""
echo "Downloading..."
wget -c $link

echo = ""
echo "Extracting..."
tar xzvf nvim-linux64.tar.gz

rm -fr nvim-linux64.tar.gz

ln -s ./nvim-linux64/bin/nvim ./nvim


echo = ""
echo -e "${Green}installation complete!${NC}"
echo " "
