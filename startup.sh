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


# In the future, also automatically unlocking the panda and activating the FCI would be nice (e.g. something like https://github.com/jk-ethz/franka_lock_unlock)
# can run: src/my_moveit_project/scripts_interactive/franka_lock_unlock.py -u -l -w -p -c -i 172.16.0.2 admin pandabaer!

# could also automatically start ros launch file


