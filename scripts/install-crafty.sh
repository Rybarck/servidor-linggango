#!/usr/bin/env bash
set -euo pipefail

sudo apt update
sudo apt install -y git python3-pip python3-distro

if [ ! -d "$HOME/crafty-installer-4.0" ]; then
  git clone https://gitlab.com/crafty-controller/crafty-installer-4.0.git "$HOME/crafty-installer-4.0"
fi

cd "$HOME/crafty-installer-4.0"

echo
echo "O instalador do Crafty vai abrir perguntas interativas."
echo "Para o método do vídeo, escolha um diretório dentro de /workspaces/servidor-linggango quando ele perguntar onde instalar."
echo

sudo ./install_crafty.sh
