#!/bin/bash

# get current date and time in format "yyyy-mm-dd @ hh:mm:ss"
timestamp=$(date "+%y-%m-%d @ %h:%m:%s")
echo ""
echo "executed \"update_brew.sh\" at $timestamp"
echo ""

# update homebrew itself
echo "updating homebrew..."
/opt/homebrew/bin/brew update
echo ""

# check for outdated packages
echo "checking for outdated packages..."
/opt/homebrew/bin/brew outdated
echo ""

# upgrade all outdated packages
echo "upgrading outdated packages..."
/opt/homebrew/bin/brew upgrade
echo ""

# optional: upgrade casks (applications) as well
echo "upgrading outdated casks (applications)..."
/opt/homebrew/bin/brew upgrade --cask
echo ""

# cleanup all old packages
echo "cleanup all old packages..."
/opt/homebrew/bin/brew cleanup --prune=all
echo ""

echo "brew update complete!"
echo ""
echo "------------------------------------------------------------------------------"
