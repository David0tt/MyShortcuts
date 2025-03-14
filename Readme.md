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


Set the hotkeys under `Settings -> Keyboard Shortcuts -> Add`. 
Set the command to e.g. 

    /home/ott/Nextcloud/MyShortcuts/open_chatgpt.sh

Name them e.g. "Firefox open Google Keeps"

or simply set the shortcuts automatically from the `shortcuts.conf` configuration file:

    dconf load /org/gnome/settings-daemon/plugins/media-keys/ < shortcuts.conf

(this also works, if for some reason the shortcut can not be entered in the settings)


#### Example command

     firefox https://scholar.google.com &

or

    firefox --new-window https://scholar.google.com &

(the & at the end enforces focus to the new window)


## Requirements
- to use these, `wmctrl` needs to be installed (`sudo apt install wmctrl`)
- to use cursor, it is assumed that the AppImage (from the official download) is under `~/bin/cursor-0.45.14-build-250219jnihavxsz-x86_64.AppImage`

# how to set shortcuts: 
https://chatgpt.com/share/67cec7f1-7720-800e-8169-022cb4affaa5