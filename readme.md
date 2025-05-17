# Devlite

**Devlite** is a simple, ready-to-go development environment. Just set **a couple of** variables, open VS Code (code .), and start coding—**no crazy-complicated setup is required**.

## Features
- **Minimal Configuration:** Only *a couple of* required settings.
- **Ubuntu-based DevContainer:** Optimized for development.
- **Preconfigured Stack:** PHP, Node.js, MariaDB, Redis.
- **VS Code Integration:** Just open the project folder using **code .**, and DevContainers handle everything.

## Quick Setup

**note** The first time you open this with code, you should **NOT** load the container. First complete these steps and then load the container.

1. Open the **.env.template** file and make changes outlined there.
2. Open the **.devcontainer/devcontainer.json** file and change this value to match the value you placed in the **WORKSPACE_FOLDER** variable in Step 1.
   
   ![image](https://github.com/user-attachments/assets/f5209622-8b89-4274-9bd9-fb6b8de24eac)

3. If you are running **moztopia/threshold** modify its connections.json file with the values from Step 1.
4. Start this container.
5. cd src/public && ./php_server.sh

**note** Any container that wants to use threshold needs to share a docker network. I am sure there is a way to bridge and route between them, but I will save that for another time. Note that all **devlite** projects share the moztopia_network. You can change this, but you have to chage them all right now.

**example**

```docker
networks:
  moztopia_network:
    name: moztopia_network
    driver: bridge
```

## Optional Setup

You can change the versions of the containers and even load more or fewer containers by changing the **docker-compose.yml** and **.env.template** files. You should be careful when changing versions and patient when trying to add more services. If you want help, send a message to *mailto:mozrin@mozrin.com** and I will try to help you.

You can also change the PHP version in the postCreateCommand.sh file. It looks like this:

**export PHP_VERSION=8.3**

## Tech Stack
- **OS:** Ubuntu (containerized)
- **Languages:** PHP, Node.js
- **Databases:** MariaDB, Redis
- **IDE Support:** XDebug, VS Code (via DevContainer)

## Variants
- **devlite-laravel:** Adds Laravel's latest version and viter support.

## Build and Load Expectations
The initial build process **can take a significant amount of time** if there are no cached images or common layers available. The actual time required will vary depending on hardware performance:
- **First-time build (no cache):** ~250 seconds
- **Rebuilding after deleting containers:** ~60 seconds
- **Starting containers of an existing environment:** ~6 seconds

Once the initial build is complete, subsequent starts are much faster, making this a **lightweight and efficient development workflow**.

## License
Licensed under **MIT License**.
