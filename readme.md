# Devlite

**Devlite** is a simple, ready-to-go development environment. Just set **one** variable, open VS Code, and start coding—**no manual setup required**.

## Features
- **Minimal Configuration:** Only one required setting.
- **Ubuntu-based DevContainer:** Optimized for development.
- **Preconfigured Stack:** PHP, Node.js, MariaDB, Redis.
- **VS Code Integration:** Just open the project folder, and DevContainers handle everything.

## Quick Setup

1. Open the **.env.template** file and make changes outlined there.
2. Open the **.devcontainer/devcontainer.json** file and change this value (see image) to match the value you placed in the **WORKSPACE_FOLDER** variable in Step 1.
3. If you are running **moztopia/threshold** modify its connections.json file with the values from Step 1.
4. Start this container.

## Tech Stack
- **OS:** Ubuntu (containerized)
- **Languages:** PHP, Node.js
- **Databases:** MariaDB, Redis
- **IDE Support:** XDebug, VS Code (via DevContainer)

## Build and Load Expectations
The initial build process **can take a significant amount of time** if there are no cached images or common layers available. The actual time required will vary depending on hardware performance:
- **First-time build (no cache):** ~250 seconds
- **Rebuilding after deleting containers:** ~60 seconds
- **Starting containers of an existing environment:** ~6 seconds

Once the initial build is complete, subsequent starts are much faster, making this a **lightweight and efficient development workflow**.

## License
Licensed under **MIT License**.
