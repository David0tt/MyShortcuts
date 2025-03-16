#!/bin/bash

# Check if it is already running
if pgrep -x "zotero" > /dev/null
then
    # If it is running, bring it to the foreground (focus it)
    wmctrl -a " - Zotero"
else
    # If it is not running, start it
    zotero
fi