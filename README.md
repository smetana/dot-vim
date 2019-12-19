# ~/.vim

My vim setup. This repository does not include project-specific `.vimrc` files


## Installation
```bash
# system dependencies
sudo apt install python3-pip ripgrep tig xclip
pip3 install --user pynvim
```
```
# run vim and install plugins with
:PlugInstall
```

## Save/Restore Gnome Terminal Settings
```bash
dconf dump /org/gnome/terminal/ > gnome_terminal_settings.txt
# probably not really required
dconf reset -f /org/gnome/terminal/
dconf load /org/gnome/terminal/ < gnome_terminal_settings.txt
```
