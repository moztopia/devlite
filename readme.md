# DevStation v1.22

🚧 **Documentation is still a work in progress!** 🚧

you launch the node server by pressing the ctrl-shift-b build short keys

## Overview

**DevStation** is a fully containerized development environment tailored for PHP, Laravel, and Node.js workflows. Built for efficiency and flexibility, this setup streamlines repetitive tasks while enforcing best practices in environment management.

### **Key Features:**
- **Preconfigured Development Stack:** Includes PHP, Laravel, Node.js, and Nginx, ensuring immediate productivity.
- **Containerized Architecture:** Uses Docker and DevContainers for isolation, portability, and consistency across machines.
- **Automated Configuration:** Dynamically manages `.env` files, eliminating manual setup errors.
- **Template-Based Deployment:** Developers can spin up new environments instantly using GitHub’s template repo functionality.
- **Scalable Multi-Instance Support:** Enables running multiple isolated workspaces with custom port forwarding.
- **Optimized for Debugging:** Comes with Xdebug preconfigured for seamless PHP debugging.
- **Customizable & Extensible:** Modify features in `devcontainer.json` to fit specific needs, from package additions to workspace tweaks.

Developers who value reproducibility, structured environments, and workflow automation will appreciate DevStation. Whether working solo or in a team, this setup eliminates inconsistencies, accelerates onboarding, and optimizes local development.

## Installation

Follow these steps to set up your environment:

1. **Update your hosts file:**  
   - If using **IPv4**, add:  
     ```
     127.0.0.1 devstation.moztopia.local
     ```
   - If using **IPv6**, add:  
     ```
     ::1 devstation.moztopia.local
     ```

2. **Install required tools:**  
   - Git  
   - GitHub CLI (`gh`) *(Note: `gh` requires Git to function)*  
   - Docker  
   - VSCode  

3. **Start Docker (UI)**  
4. **Navigate to your workspace folder**  
5. **Create a repository from the template:**  
   ```bash
   gh repo create <your-repo-name> --template mozrin/devstation
   ```
6. **Enter the newly created repository folder:**  
   ```bash
   cd <your-repo-name>
   ```
7. **Open VSCode:**  
   ```bash
   code .
   ```
8. **When prompted by VSCode, open in a container** ✅  

Everything should be set up correctly at this point.

---

## Notes

I primarily built this for **Laravel development**, which is a **PHP-centric** framework.  
However, I also set up a **Node.js server**, and I’m curious to discover potential issues with that setup. 🤔  

💡 You can run **multiple instances**, but since all use **ports 80 and 443**,  
you’ll need to **adjust ports manually** in each instance.

### **Alternative Setup**
If modifying ports isn’t ideal, you can **deploy an isolated Nginx proxy**  
that dynamically routes traffic based on **domain name** to the correct container and port.

---

## Documentation (To Be Done)
- Loading VSCode  
- Running multiple instances  
- Port management strategies  
- Alternative proxy configurations  

---

## Environment Configuration

🚨 **Do NOT modify the `.env` file manually!** 🚨  
The `.env` file is **overwritten** each time in the build process by `.env.template`.  

This process is triggered in `devcontainer.json`  
and handled by `.devcontainer/initializeCommand.sh`.

---

## Customization

This is a **large workstation footprint**, designed specifically for what I like to do.  
Feel free to modify the workstation features in `devcontainer.json`.  

A full list of available DevContainer features can be found here:  
🔗 [DevContainers Features](https://github.com/devcontainers/features/tree/main/src)
