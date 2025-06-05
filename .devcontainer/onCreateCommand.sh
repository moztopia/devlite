#!/bin/bash

##### onCreateCommand.sh
#
# Purpose:
#
#   - Executes only during the very first creation of the container and not during subsequent rebuilds or restarts.
#
#   - Best suited for one-time initialization steps such as copying default configuration files
#     or performing database schema initializations that must occur only once during the container’s lifetime.
#
# set -eux
# export onCreateCommand=true

##### Add your changes below here.