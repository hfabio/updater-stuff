#!/bin/bash
notify-send "Atualizando o dbeaver, $USER"
wget 'https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb' -O /tmp/dbeaver.deb
sudo dpkg -i /tmp/dbeaver.deb
sudo killall dbeaver
dbeaver
notify-send "dbeaver atualizado"