#!/bin/bash
updater_path=/home/$(logname)/.update-scripts
updatenames=(
update-system
update-vscode
update-skype
update-insomnia
)

mkdir $updater_path

for updater in ${updatenames[*]} ; do
  wget https://raw.githubusercontent.com/hfabio/updater-stuff/master/$updater.sh -O $updater_path/$updater.sh
done

sudo chmod +x $updater_path/*.sh

for updater in ${updatenames[*]} ; do
  sudo ln -s $updater_path/$updater.sh /usr/bin/$updater
done
