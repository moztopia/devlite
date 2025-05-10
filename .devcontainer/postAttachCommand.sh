#!/bin/bash

##### postAttachCommand.sh
#
# Purpose:
#
#   - Executes **after attaching** to the Dev Container, meaning it runs when a user opens the container in their IDE.
#
#   - Useful for setting up the developer environment, restoring session configurations, or displaying helpful information.
#
#   - Can trigger commands like installing missing dependencies, running status checks, or opening specific tools.
#
#   - Unlike `postStartCommand`, this script is **user-driven**, running only when someone connects to the container.
#
#   - Ideal for ensuring a seamless experience by configuring terminal sessions, fetching workspace updates, or bootstrapping development tools.

export postAttachCommand=true

##### Add your changes below here.