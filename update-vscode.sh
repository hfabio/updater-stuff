#!/bin/bash
notify-send "Atualizando o vscode, $USER"
wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O /tmp/code_latest_amd64.deb
sudo dpkg -i /tmp/code_latest_amd64.deb
sudo killall code
code
notify-send "vscode atualizado"
