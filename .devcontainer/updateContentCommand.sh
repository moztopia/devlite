#!/bin/bash

##### updateContentCommand.sh
#
# Purpose:
#
#   - Executes inside the container **after** `onCreateCommand`, whenever new content is detected in the source tree.
#
#   - Ensures updates to cached or prebuilt containers are applied dynamically in cloud environments.
#
#   - Can be used to refresh dependencies, recompile assets, or apply content-related migrations.
#
#   - Unlike `postCreateCommand`, this script can run multiple times over the container’s lifecycle as new content arrives.
#
#   - Limited to repository and organization-scoped secrets or permissions in cloud-based executions.
#
# set -eux
#

export updateContentCommand=true

##### Add your changes below here.