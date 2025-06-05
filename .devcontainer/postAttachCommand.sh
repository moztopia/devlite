#!/bin/bash

##### postAttachCommand.sh
#
# Do you need to do something each time a user attaches to the container?
#
# set -eux
# export postAttachCommand=true

##### Set Helpful Environment Variables

cp -f ${DEVLITE_CONTAINER_DEVCONTAINER_FOLDER}/.bash_aliases ~/.bash_aliases

##### Add your changes below here.