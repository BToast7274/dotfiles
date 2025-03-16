#!/bin/bash

git clone https://github.com/BToast7274/dotfiles/blob/main/homefiles/.bashrc
mv .bashrc .bashrc_backup
cd /BToast7274/dotfiles/blob/main/homefiles/
mv .bashrc ~/
echo "Remember to reload your enviornment with [source ~/.bashrc]"


