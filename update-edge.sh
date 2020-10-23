#!/bin/bash
notify-send "Atualizando o edge, $USER"
wget https://go.microsoft.com/fwlink/?linkid=2124602 -O /tmp/edge.deb
sudo dpkg -i /tmp/edge.deb
sudo killall edge
edge
notify-send "edge atualizado"