#!/bin/bash

# Check if VSCode is already running
if pgrep -x "code" > /dev/null
then
    # If VSCode is running, bring it to the foreground (focus it)
    wmctrl -a "Visual Studio Code"
else
    # If VSCode is not running, start it
    code
fi