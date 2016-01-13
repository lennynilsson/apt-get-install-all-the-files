#!/bin/bash
clear
printf "\n\napt-get-install-all-the-files\n\n"
sudo apt-get update -y

#Add Android Studio
sudo apt-add-repository -y ppa:paolorotolo/android-studio

#Add Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y vim git vlc nodejs spotify-client ubuntu-restricted-extras openjdk-7-jdk android-studio

sudo apt-get autoclean

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp smooth-terminal.zsh-theme ~/.oh-my-zsh/themes
cp -f .zshrc > ~/.zshrc

