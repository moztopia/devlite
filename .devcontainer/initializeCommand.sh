#!/bin/bash

##### initializeCommand.sh
#
# Do you need to do something BEFORE the container load starts? This command
# runs in your local workstation's environment.
#
# set -eux
# export initializeCommand=true

##### Automatically populate the .env files from the template.

export PROJECT_NAME=$(basename "$PWD")

envsubst < .env.template > .env

##### If your workspace folder does not match your current
    # folder's basename, you can expect this to abort.

ABORT_CONFIG_FILE=$PWD/.devcontainer/devcontainer.json
ABORT_WORKSPACE_NAME=$(basename $(jq -r '.workspaceFolder' "$ABORT_CONFIG_FILE"))

clear
echo ""   
echo "   ██████╗ ███████╗██╗   ██╗██╗     ██╗████████╗███████╗"
echo "   ██╔══██╗██╔════╝██║   ██║██║     ██║╚══██╔══╝██╔════╝"
echo "   ██║  ██║█████╗  ██║   ██║██║     ██║   ██║   █████╗  "
echo "   ██║  ██║██╔══╝   ██║ ██║ ██║     ██║   ██║   ██╔══╝  "
echo "   ██████╔╝███████╗ ╚████╔╝ ███████╗██║   ██║   ███████╗"
echo "   ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝╚═╝   ╚═╝   ╚══════╝"
echo ""   

if [ "$ABORT_WORKSPACE_NAME" != "$PROJECT_NAME" ]; then
    echo -e "\e[1;31mERROR: Problem detected in devcontainer.json! ABORTING\e[0m"
    echo -e ""
    echo -e "\e[1;33mPlease update 'workspaceFolder' to match your repo\e[0m"
    echo -e "\e[1;33mfolder before starting the container.\e[0m"
    echo -e ""
    echo -e "\e[1;33mNOTE: This command file is currently executing a\e[0m"
    echo -e "\e[1;33msleep 86400 (24 hours). Don't wait :-)\e[0m"
    echo -e ""
    echo -e "\e[1;35m1. CTRL-C and wait for a bit for it to fail.\e[0m"
    echo -e "\e[1;35m2. You will get a Devcontainer ERROR Dialogue\e[0m"
    echo -e ""
    echo -e "\e[1;35m4. Read the /readme.md and follow the instructions.\e[0m"
    echo -e ""
    echo -e "\e[1;33mCompleting the instructions takes less than 30 seconds.\e[0m"

    sleep 86400

    exit 0
fi

echo -e "\e[1;36mDevlite:${PROJECT_NAME} initialization successful.\e[0m"
echo -e ""
echo -e "   -- note: If this is the first run; it may take 20+ minutes to build"
echo -e "            this container. Subsequent runs should only take seconds."
echo -e ""

##### Clear the Docker Container local log folders

echo "Clearing Container logs..."

rm -f $PWD/.devcontainer/mariadb/log/*.log
rm -f $PWD/.devcontainer/redis/log/*.log

##### Add your changes below here.