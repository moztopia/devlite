# Devlite

Want to support this project? [Buy Me a Beer!](https://coff.ee/mozrin)

**Devlite** is a simple, ready-to-go development environment. Just set **a couple of** variables, open VS Code (`code .`), and start coding—**no crazy-complicated setup is required**.

## Features

- **Minimal Configuration:** Only _a couple of_ required settings.
- **Ubuntu-based DevContainer:** Optimized for development.
- **Preconfigured Stack:** PHP, Node.js, MariaDB, Redis.
- **VS Code Integration:** Open the project folder using **code .** and let DevContainers handle the rest.

## Quick Setup

If you have run the container installer and received the error and are now here, do yourself a favor and delete the volumes, images, and containers that were created the initial process. It can, at times, cause complicated lingering issues with future build efforts. You were warned ;-)

1. Open a terminal and go to the folder where you cloned _devlite_. **cd /you-project-folder**
2. Load Visual Studio Code by typing: `code .`

   ![image](https://github.com/user-attachments/assets/78e0feda-f25b-4946-a8b9-be7911c16d99)

3. When _vscode_ loads, it will see the devcontainer configuration and ask you if you want to open it. Just close this dialog for now.

   ![image](https://github.com/user-attachments/assets/22f119a6-94b0-4cb2-beb3-34285eaa3e8e)

4. Open the **.env.template** file and change the WORKSPACE_FOLDER name to match the name of your project folder into which you you cloned devlite.

   ![image](https://github.com/user-attachments/assets/41b7dbb7-5dff-46a5-9317-d05b49973691)

5. Open the **.devcontainer/devcontainer.json** file and update its value to match the **WORKSPACE_FOLDER** variable set in Step 4.

   ![image](https://github.com/user-attachments/assets/f5209622-8b89-4274-9bd9-fb6b8de24eac)

6. Close _vscode_ and then open it again using by typing: `code .`

   ![image](https://github.com/user-attachments/assets/d39d3864-fecb-4434-b36f-7622fca0d740)

7. When prompted to Reopen in Container, do it.

   ![image](https://github.com/user-attachments/assets/d925bd01-2c69-42b6-8df7-1ca4b70c6f4e)

At this point, there is an assumption that you know what to do with a running devcontainer. If you need further assistance, there is a plethora of documentation online about devcontainers. There is also a [Devlite Wiki](https://github.com/moztopia/devlite/wiki) where I will slowly add some more documentation and requested topics.

## Tech Stack

- **OS:** Ubuntu (containerized)
- **Languages:** PHP, Node.js
- **Databases:** MariaDB, Redis
- **IDE Support:** XDebug, VS Code (via DevContainer)

## Build and Load Expectations

The initial build process **can take a significant amount of time** if there are no cached images or common layers available. The build time depends on your hardware:

- **First-time build (no cache):** ~250 seconds
- **Rebuilding after deleting containers:** ~60 seconds
- **Starting containers of an existing environment:** ~6 seconds

Once the initial build is complete, subsequent starts are much faster, ensuring a **lightweight and efficient development workflow**.

## License

Licensed under the **MIT License**.
