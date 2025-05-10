#!/bin/bash

##### postCreateCommand.sh
#
# Purpose:
#
#   - Executes once after the container has been created and VS Code has attached for the very first time.
#
#   - Meant for one-time setup tasks in the container workspace,
#     for example installing dependencies or configuring project-specific settings that don’t 
#     need to reoccur on subsequent container starts.

export postCreateCommand=true

# Load Node.JS Requirements

cd $APP_ROOT

IFS=',' read -ra PACKAGES <<< "$NODE_BASE_PACKAGES"

for package in "${PACKAGES[@]}"; do
    echo "Installing $package..."
    npm install "$package"
done

##### Add your changes below here.