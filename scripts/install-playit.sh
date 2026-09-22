#!/usr/bin/env bash
set -euo pipefail

curl -fsSL https://packages.playit.gg/install.sh | bash -s -- -y

echo
echo "Playit instalado."
echo "Agora execute: playit setup"
echo "Depois crie/associe um túnel Minecraft Java apontando para 127.0.0.1:25565."
