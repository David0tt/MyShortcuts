#!/bin/bash

# # Old Version
# firefox https://keep.google.com/#LIST/12vvP4doUaEj2ZbHwVAMdXp8TwEfQVrVq5uoV4aU0AwEUWfA8FxHdbMyU_WB4gdoOP5M
# wmctrl -a "Mozilla Firefox"


# I changed this to open it in VSCode
# Check if it is already running
if wmctrl -l | grep "TODO_Lists_VSCode - Visual Studio Code" > /dev/null
then
    # If it is running, bring it to the foreground (focus it)
    wmctrl -a "TODO_Lists_VSCode - Visual Studio Code"
    # Open the file in the existing VSCode instance
    code "$HOME/Nextcloud/TODO_Lists_VSCode/TODO_Lehrstuhl.md"
else
    # If it is not running, start it with the workspace and the file
    code "$HOME/Nextcloud/TODO_Lists_VSCode" "$HOME/Nextcloud/TODO_Lists_VSCode/TODO_Lehrstuhl.md" &
fi