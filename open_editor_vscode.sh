#!/bin/bash


# TODO check if VSCode that is not "TODO_Lists_VSCode - Visual Studio Code" is running, if yes bring it to front, if no start it 


# Check if it is already running
if wmctrl -l | grep "Visual Studio Code" | grep -v "TODO_Lists_VSCode" > /dev/null
then
    # If it is running, bring it to the foreground (focus it)
    wmctrl -a "Visual Studio Code"
else
    # If it is not running, start it
    code
fi