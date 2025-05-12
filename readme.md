# Devlite

**Devlite** is a simple, ready-to-go development environment. Just set **one** variable, open VS Code, and start coding—**no manual setup required**.

## Features
- **Minimal Configuration:** Only one required setting.
- **Ubuntu-based DevContainer:** Optimized for development.
- **Preconfigured Stack:** PHP, Node.js, MariaDB, Redis.
- **VS Code Integration:** Just open the project folder, and DevContainers handle everything.

## Quick Setup
1. **Set the project name** in `.bash_aliases` inside `.devcontainer`:
   ```sh
   PROJECT_NAME=sidewinder
   ```
2. **Open the folder in VS Code**:
   ```bash
   cd path/to/project
   code .
   ```
3. **When prompted, select** "Reopen in DevContainer."
4. **Wait for the container to start**—then you're ready to go!

## Tech Stack
- **OS:** Ubuntu (containerized)
- **Languages:** PHP, Node.js
- **Databases:** MariaDB, Redis
- **IDE Support:** VS Code (via DevContainer)

## License
Licensed under **MIT License**.
