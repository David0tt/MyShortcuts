# Hotkeys / Shortcuts
A repository to host useful shortcuts / hotkeys that improve my daily use

### Custom Hotkeys
- `win+v` diodon (clipboard history)
- `ctrl+shift+alt+s` open google scholar
- `ctrl+shift+alt+k` open google keeps
- `ctrl+shift+alt+l` open google keeps with note on lehrstuhl
- `ctrl+shift+alt+j` open google docs with research idea notes on robot arm
- `ctrl+shift+alt+c` open ChatGPT
- `ctrl+shift+alt+t` open Google Translate.
- `ctrl+shift+alt+d` open Deepl
- `ctrl+shift+alt+w` open VSCode. If it is already open, switch focus (ignores VSCode with the note workspace, i.e. switches focus to a different VSCode or opens a new one)
- (`ctrl+shift+alt+e` open Cursor. If it is already open, switch focus)
- `ctrl+shift+alt+n` open VSCode with the notes workspace. If it is already open, switch focus
- `ctrl+shift+alt+z` open Zotero. If it is already open, switch focus
- `ctrl+shift+alt+u` Run Startup (terminal with 3 windows in docker, VSCode with notes, VSCode in ROS workspace)


## On Ubuntu:
or simply set the shortcuts automatically from the `shortcuts.conf` configuration file:

    dconf load /org/gnome/settings-daemon/plugins/media-keys/ < shortcuts.conf
    # chmod +x *.sh # might be required in this directory on a new system

(this also works, if for some reason the shortcut can not be entered in the settings)

store the keybindings with 

    dconf dump /org/gnome/settings-daemon/plugins/media-keys/


#### Setting Shortcuts in the GUI
Set the hotkeys under `Settings -> Keyboard Shortcuts -> Add`. 
Set the command to e.g. 

    /home/ott/Nextcloud/MyShortcuts/open_chatgpt.sh

Name them e.g. "Firefox open Google Keeps"

#### Requirements
- to use these, `wmctrl` needs to be installed (`sudo apt install wmctrl`)
- to use cursor, it is assumed that the AppImage (from the official download) is under `~/bin/cursor-0.45.14-build-250219jnihavxsz-x86_64.AppImage`

- For Terminator, the config has to be set

    cp terminator_config ~/.config/terminator/config

#### how to set shortcuts: 
https://chatgpt.com/share/67cec7f1-7720-800e-8169-022cb4affaa5


## On Windows:
Hotkeys can be added to shortcuts. Then the hotkey is stored in the shortcut file. Windows explorer automatically searches for shortcuts with assigned hotkeys in specified folders (Desktop and Start menu folder)

Install the shortcuts by opening the start-menu folder (Win+R -> "shell:programs" -> Enter) and copy pasting the shortcuts from `MyShortcuts/WindowsShortcuts` (the shortcut properties / directories might need to be modified).


### In general, to set up shortcuts on Windows
- Right-Click Desktop -> New -> Shortcut
- Location:
```
    "C:\Program Files\Mozilla Firefox\firefox.exe" https://www.chatgpt.com 
```
- Name it (e.g. `Open ChatGPT`)
- Right click shortcut -> Properties -> click in Shortcut key field
- Press Ctrl+Alt+Shift+C
- Klick OK
- For tidyness place the shortcut in the start menu:
- Win+R -> type "shell:programs" -> Enter -> Open Start menu folder -> move the shortcut there
- Create a similar one to Open VSCode with my Notes (`Ctrl+Alt+Shift+N`):
```
    "C:\Program Files\Microsoft VS Code\Code.exe" "C:\Data\NextcloudCS\TODO_Lists_VSCode"
```
- Create a similar one to open Google Keep (`Ctrl+Alt+Shift+K`):
```
    "C:\Program Files\Mozilla Firefox\firefox.exe" https://keep.google.com
```
- Optional: Open powershell with `Ctrl+Alt+T`
```
    C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
``` 



