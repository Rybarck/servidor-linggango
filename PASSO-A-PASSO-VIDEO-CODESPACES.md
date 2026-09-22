# Linggango no mesmo método do vídeo

Este é o mesmo fluxo do vídeo: GitHub Codespaces + Crafty Controller + túnel Playit. A diferença é que o vídeo cria um servidor Paper; para o Linggango é obrigatório escolher Forge.

## 1. GitHub

1. Crie/login na sua conta GitHub.
2. Crie um repositório público com README.
3. Abra **Code > Codespaces > New codespace**.
4. Escolha uma máquina gratuita de 4 cores/8 GB, se estiver disponível.

## 2. Instalar o Crafty

No terminal Linux do Codespace, execute um comando por vez:

```bash
sudo apt update && sudo apt upgrade
sudo apt install git
pip install distro
git clone https://gitlab.com/crafty-controller/crafty-installer-4.0.git
cd crafty-installer-4.0
sudo ./install_crafty.sh /workspaces/servidor-linggango/minecraft/run_crafty.sh
```

Confirme a instalação do Ubuntu com `Y`, recuse instalar no diretório sugerido com `N`, escolha `/workspaces/servidor-linggango/minecraft`, confirme com `Y` e use o branch `master`.

Inicie o painel:

```bash
/workspaces/servidor-linggango/minecraft/run_crafty.sh
```

Abra a porta 8443 no navegador do Codespace, use a senha provisória mostrada no terminal, troque-a e entre novamente.

## 3. Criar o servidor

No Crafty, use **Create New Server**:

- Tipo: **Forge**
- Minecraft: `1.20.1`
- Forge: `47.4.20`
- Nome: `Linggango RPG`
- RAM mínima: `4096 MB`
- RAM máxima: `6144–7168 MB`

Aceite a EULA e deixe o servidor iniciar uma vez. Depois pare-o.

## 4. Enviar o modpack

Na aba **Files**, envie a pasta local `server` preparada neste projeto, especialmente:

- `mods/`
- `config/`
- `defaultconfigs/`
- `kubejs/`
- `datapacks/`
- `scripts/`
- `ldlib/`, `patchouli_books/`, `quests_structures/`
- `server.properties`

Não envie os mods listados em `CLIENT_MODS_REMOVED.txt`; eles ficam somente no cliente.

## 5. Playit

Crie uma conta em https://playit.gg/, instale o agente Linux no Codespace, execute `playit`, autentique-o, crie um agente e um túnel **Minecraft Java** na porta `25565`. Use o endereço gerado no Multiplayer.

## 6. Observações

Mantenha `online-mode=true` para autenticação normal. O vídeo usa `false`, mas isso permite nomes falsos e não é recomendado.

Este modpack possui centenas de mods e pode exceder os recursos de um Codespace gratuito de 8 GB. Se ocorrer falta de memória, reduza mods ou use uma máquina com mais RAM.
