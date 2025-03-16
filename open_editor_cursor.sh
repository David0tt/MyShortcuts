#!/bin/bash


# Check if it is already running
if pgrep -x "cursor" > /dev/null
then
    # If it is running, bring it to the foreground (focus it)
    wmctrl -a "Cursor"
else
    # If it is not running, start it
    ~/bin/cursor-0.45.14-build-250219jnihavxsz-x86_64.AppImage
fi

