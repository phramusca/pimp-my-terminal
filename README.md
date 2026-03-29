# Pimp My Terminal

Ce paquet fournit la commande `pimp-my-terminal`, qui automatise la procédure décrite dans la section **Pimp My Terminal** du wiki [Terminal (Linux / système)](https://phramusca.github.io/wiki/linux/system/terminal/#pimp-my-terminal) : au lieu d’installer zsh, Oh My Zsh, les polices MesloLGS NF, le thème Powerlevel10k et les plugins à la main, le script enchaîne tout dans le bon ordre:

- téléchargement des quatre polices **MesloLGS NF** dans `~/.local/share/fonts` puis `fc-cache` (sauf avec `--no-fonts`) ;
- installation d’**Oh My Zsh** lorsqu’il n’est pas déjà présent ;
- clonage du thème **Powerlevel10k** et des plugins **zsh-syntax-highlighting** et **zsh-autosuggestions** ;
- mise à jour de `~/.zshrc` (thème `powerlevel10k/powerlevel10k`, plugins Oh My Zsh : `git`, `z`, `sudo`, plus les deux plugins ci-dessus).

**À lancer avec votre utilisateur** (pas en root). En fin d’exécution, **`chsh`** est proposé pour définir zsh comme shell de connexion (sauf avec `--no-chsh`). Configurez aussi votre terminal (Tilix, VS Code, etc.) sur la police MesloLGS NF, puis ouvrez une nouvelle session et lancez `p10k configure` si besoin.

## Installation

```bash
sudo apt install ./pimp-my-terminal_1.0_all.deb
pimp-my-terminal
```

Exécuter `pimp-my-terminal` **en tant qu’utilisateur** (pas en root).

## Désinstallation

Si vous aviez accepté **`chsh`** vers zsh depuis `pimp-my-terminal`, un fichier marqueur est créé sous `~/.config/pimp-my-terminal/`. À la désinstallation du paquet, seul ce compte est repassé sur **`/bin/bash`**, pour que `sudo apt autoremove` puisse retirer `zsh` sans casser SSH.

Les autres utilisateurs du système qui utilisent zsh ne sont pas modifiés. Hors de ce flux, utilisez `chsh -s /bin/bash` ou `sudo usermod -s /bin/bash "$USER"`.

## Construction

```bash
./build-pimp-my-terminal.sh
```
