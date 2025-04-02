#!/bin/bash

# Check if it is already running
if wmctrl -l | grep "TODO_Lists_VSCode - Visual Studio Code" > /dev/null
then
    # If it is running, bring it to the foreground (focus it)
    wmctrl -a "TODO_Lists_VSCode - Visual Studio Code"
else
    # If it is not running, start it
    code "$HOME/Nextcloud/TODO_Lists_VSCode" &
fi