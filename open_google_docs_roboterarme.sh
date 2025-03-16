#!/bin/bash


# Old version:
# firefox https://docs.google.com/document/d/1wckqUsIe5ikUiVUlhh2FqBWy1e6ksuDr7d6kF4ckKRQ/edit?tab=t.0
# wmctrl -a "Mozilla Firefox"

# I changed this to open it in VSCode
# Check if it is already running
if wmctrl -l | grep "TODO_Lists_VSCode - Visual Studio Code" > /dev/null
then
    # If it is running, bring it to the foreground (focus it)
    wmctrl -a "TODO_Lists_VSCode - Visual Studio Code"
    # Open the file in the existing VSCode instance
    code "$HOME/Nextcloud/TODO_Lists_VSCode/Roboterarme.md"
else
    # If it is not running, start it with the workspace and the file
    code "$HOME/Nextcloud/TODO_Lists_VSCode" "$HOME/Nextcloud/TODO_Lists_VSCode/Roboterarme.md" &
fi