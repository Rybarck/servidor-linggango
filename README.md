# Servidor Linggango — Codespaces + Crafty + Playit

Servidor Minecraft modded preparado para seguir o método do vídeo usando:

- GitHub Codespaces
- Crafty Controller
- Playit
- Minecraft 1.20.1
- Forge 47.4.20
- Java 17

## 1. Criar o Codespace

No GitHub, abra este repositório:

`Rybarck/servidor-linggango`

Depois:

1. Clique em **Code**
2. Abra a aba **Codespaces**
3. Clique em **Create codespace on main**
4. Aguarde o terminal abrir

O arquivo `.devcontainer/devcontainer.json` já prepara Java 17 e as dependências básicas.

Confirme:

```bash
java -version
```

## 2. Instalar o Crafty Controller

No terminal do Codespace:

```bash
bash scripts/install-crafty.sh
```

Durante o instalador, use um diretório persistente dentro de:

```text
/workspaces/servidor-linggango/
```

Exemplo:

```text
/workspaces/servidor-linggango/crafty
```

Quando terminar, inicie o Crafty usando o script que o instalador informar.

Abra a porta HTTPS do Crafty, normalmente **8443**, pela aba **Ports** do Codespaces.

## 3. Criar o servidor Forge no Crafty

No painel Crafty:

1. **Servers**
2. **Create New Server**
3. Escolha **Forge**
4. Minecraft: **1.20.1**
5. Forge: **47.4.20**
6. Nome: **Linggango RPG**
7. RAM inicial sugerida: **4096 MB**
8. RAM máxima sugerida: **6144–7168 MB**, conforme a máquina disponível
9. Aceite a EULA
10. Inicie uma vez e depois pare o servidor

## 4. Colocar o modpack

O servidor precisa da versão server-side do seu modpack.

Copie para a pasta do servidor do Crafty, conforme existirem no pack:

- `mods/`
- `config/`
- `defaultconfigs/`
- `kubejs/`
- `scripts/`
- `datapacks/`
- `patchouli_books/`
- `quests_structures/`
- outros diretórios usados pelo modpack

Não coloque mods exclusivamente client-side no servidor.

A lista já identificada está em:

`CLIENT_MODS_REMOVED.txt`

## 5. Instalar o Playit

No terminal:

```bash
bash scripts/install-playit.sh
```

Depois:

```bash
playit setup
```

Abra o link exibido, associe o agente à sua conta Playit e crie um túnel:

- Tipo: **Minecraft Java**
- Endereço local: **127.0.0.1**
- Porta local: **25565**

O endereço público criado pelo Playit é o IP/endereço que seus amigos usarão no Multiplayer.

## 6. Iniciar o servidor

Sempre que abrir o Codespace:

1. Inicie o Crafty
2. Abra o painel pela porta 8443
3. Inicie o servidor Minecraft
4. Execute o agente Playit, se ele não estiver rodando automaticamente

## Importante sobre 24/7

Codespaces possui limites de uso e pode parar por inatividade ou quando a cota disponível termina. Portanto, embora o método funcione para hospedar o servidor, não trate Codespaces gratuito como uma VPS verdadeiramente permanente 24/7.

## Arquivos preparados neste repositório

- `.devcontainer/devcontainer.json` — ambiente Codespaces + Java 17
- `scripts/install-crafty.sh` — instala o Crafty Controller
- `scripts/install-playit.sh` — instala o Playit
- `CLIENT_MODS_REMOVED.txt` — mods client-side que não devem entrar no servidor
- `server.properties` — configuração inicial
