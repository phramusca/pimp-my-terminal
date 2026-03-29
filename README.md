# Paquets

## pimp-my-terminal

Installe `pimp-my-terminal`, qui enchaîne les étapes d'installation de: polices MesloLGS NF, Oh My Zsh, Powerlevel10k, plugins. 

**À lancer avec votre utilisateur** (pas en root) ; `chsh` peut être proposé pour le shell de connexion.

### Construction

```bash
./build-pimp-my-terminal.sh
```

### Installation

```bash
sudo apt install ./pimp-my-terminal_1.0_all.deb
pimp-my-terminal
```

Exécuter `pimp-my-terminal` **en tant qu’utilisateur** (pas en root).

### Désinstallation

Si vous aviez accepté **`chsh`** vers zsh depuis `pimp-my-terminal`, un fichier marqueur est créé sous `~/.config/pimp-my-terminal/`. À la désinstallation du paquet, seul ce compte est repassé sur **`/bin/bash`**, pour que `sudo apt autoremove` puisse retirer `zsh` sans casser SSH.

Les autres utilisateurs du système qui utilisent zsh ne sont pas modifiés. Hors de ce flux, utilisez `chsh -s /bin/bash` ou `sudo usermod -s /bin/bash `.
