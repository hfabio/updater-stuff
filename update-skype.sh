#!/bin/bash
notify-send "Atualizando o skype, $USER"
wget https://repo.skype.com/latest/skypeforlinux-64.deb -O /tmp/skypeforlinux.deb
sudo dpkg -i /tmp/skypeforlinux.deb
sudo killall skype
skype
notify-send "Skype atualizado"
