#!/bin/bash

# get the current day of the week (1 = monday, 7 = sunday)
day_of_week=$(date +%u)

# get the current day of the month
day_of_month=$(date +%d)

# check if it's the first monday of the month
if [ "$day_of_week" -eq 1 ] && [ "$day_of_month" -le 7 ]; then
    rm ~/.dotfiles/bin/.local/scripts/logs/brew_update_logs.txt
fi
