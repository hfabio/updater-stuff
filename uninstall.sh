#!/bin/bash
updater_path=/home/$(logname)/.update-scripts
updatenames=(
update-system
update-vscode
update-skype
update-insomnia
)

for updater in ${updatenames[*]} ; do
  sudo unlink /usr/bin/$updater
done

rm -Rf $updater_path
