#!/bin/bash

##### initializeCommand.sh
#
# Do you need to do something BEFORE the container load starts? This command
# runs in your local workstation's environment.
#
# set -eux
#

export initializeCommand=true

##### Automatically populate the .env files from the template.

export PROJECT_NAME=$(basename "$PWD")

envsubst < .env.template > .env

##### Clear the Docker Container local log folders

echo "Clearing Container logs..."

rm -f $PWD/.devcontainer/mariadb/log/*.log
rm -f $PWD/.devcontainer/redis/log/*.log

##### Add your changes below here.