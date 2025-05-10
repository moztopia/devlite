#!/bin/bash

##### initializeCommand.sh
#
# Purpose:
#
#   - Runs inside the container after Docker (or Docker Compose) has already started the container,
#     but before VS Code fully attaches and sets up the workspace.
#
#   - Intended for early initialization tasks that should occur within the running container,
#     such as setting environment variables or making modifications to configuration files
#     that the container will immediately rely on.

export initializeCommand=true

##### Automatically populate the .env files from the template.

export PROJECT_NAME=$(basename "$PWD")
export NODE_BASE_PACKAGES=express
export NODE_SERVER_NAME=server.js

envsubst < .env.template > .env ## all variables should get set here

##### Add your changes below here.