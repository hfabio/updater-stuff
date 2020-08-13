#!/bin/bash
path=~/.update-scripts
updatenames=(
update-system
update-vscode
update-skype
update-insomnia
)

sudo mkdir $path

for updater in ${updatenames[*]} ; do
  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/$updater.sh -O $path/$updater.sh
done

sudo chmod +x $path/*.sh

for updater in ${updatenames[*]} ; do
  sudo ln -s $path/$updater.sh /usr/bin/$updater
done
