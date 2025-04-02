#!/bin/bash

# Container ID
CONTAINER_ID="315ce560db76"

# Start the Docker container
docker start $CONTAINER_ID

# start VSCode with my notes
~/Nextcloud/MyShortcuts/open_editor_notes_workspace_vscode.sh

# start VSCode with the rosdocker workspace
# https://stackoverflow.com/questions/60379221/how-to-attach-a-remote-container-using-vscode-command-line
# To make it clear: you need to use
# code --folder-uri vscode-remote://attached-container+<X>/workspaces/bla_bla`
# where X is containerName in hex encoding.

code --folder-uri vscode-remote://attached-container+$(printf "$CONTAINER_ID" | xxd -p)/root/ws_moveit

# Start Terminator with the rosdocker layout
terminator -l rosdocker &

