#!/bin/bash
notify-send "Atualizando o discord, $USER"
wget 'https://discord.com/api/download?platform=linux&format=deb' -O /tmp/discord.deb
sudo dpkg -i /tmp/discord.deb
sudo killall discord
discord
notify-send "discord atualizado"