#!/bin/bash

##### postStartCommand.sh
#
# Purpose:
#
#   - Runs every time the container starts or is restarted, after the workspace has been reattached.
#
#   - Useful for tasks that need to run on each start (for instance, reinitializing runtime conditions,
#     restarting background services, or applying temporary configurations that should be 
#     refreshed with every container start).
#
# set -eux
#

export postStartCommand=true

##### Add your changes below here.