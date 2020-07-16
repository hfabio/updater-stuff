#!/bin/bash
notify-send "Atualizando o insomnia, $USER"
wget https://updates.insomnia.rest/downloads/ubuntu/latest\?ref\=\&app\=com.insomnia.app -O /tmp/insomnia.deb
sudo dpkg -i /tmp/insomnia.deb
sudo killall insomnia
insomnia
notify-send "insomnia atualizado"
