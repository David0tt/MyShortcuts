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

(this also works, if for some reason the shortcut can not be entered in the settings)


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

To install the shortcuts, simply copy the `MyWindowsShortcuts` folder to the Start Menu folder `[TODO]`