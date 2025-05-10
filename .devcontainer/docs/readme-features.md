# Devcontainer Features Overview

This document provides a brief summary of common Devcontainer features available via the official [devcontainer/features](https://github.com/devcontainers/features) repository. Including these features in your `devcontainer.json` can help streamline your setup by bundling pre-configured tools, runtimes, and utilities directly into your development container.

For the latest and most comprehensive list of features, please visit the [Official Dev Container Features Page](https://containers.dev/features).

## Feature List

| Feature                      | Version | Description                                                                                                                                      |
| ---------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| **docker-in-docker**         | 2       | Enables running Docker inside your devcontainer, allowing you to build, run, and manage sibling containers within the same environment.          |
| **aws-cli**                  | 1       | Installs the AWS Command Line Interface to help you interact with AWS services directly from your terminal.                                      |
| **azure-cli**                | 1       | Provides the Azure CLI so you can manage Azure resources and perform cloud development tasks.                                                    |
| **anaconda**                 | 1       | Bundles the Anaconda Python distribution, complete with data science libraries and environment management tools.                                 |
| **common-utils**             | 2       | Installs a collection of common utilities and command-line tools to boost productivity within your container.                                    |
| **conda**                    | 1       | Sets up the conda package manager, useful for managing Python environments, especially in data science workflows.                                |
| **desktop-lite**             | 1       | Provides lightweight desktop and GUI support for applications that require graphical interfaces in a containerized setting.                      |
| **docker-outside-of-docker** | 1       | Enables your container to use the host’s Docker daemon, letting you manage containers without relying on Docker-in-Docker.                       |
| **dotnet**                   | 2       | Installs the .NET SDK for building, testing, and running .NET applications inside your devcontainer.                                             |
| **git**                      | 1       | Ensures Git is available for source control management, making version control tasks straightforward.                                            |
| **git-lfs**                  | 1       | Provides Git Large File Storage support, ideal for managing large binaries along with your Git repositories.                                     |
| **github-cli**               | 1       | Installs the GitHub CLI to streamline operations like repository management, issue tracking, and pull request handling.                          |
| **go**                       | 1       | Sets up the Go programming environment along with its necessary tools for developing Go applications.                                            |
| **hugo**                     | 1       | Installs Hugo, a fast static site generator perfect for building and deploying websites from markdown files.                                     |
| **java**                     | 1       | Configures a Java Development Kit (JDK) to support building and running Java applications.                                                       |
| **kubectl-helm-minikube**    | 1       | Provides Kubernetes tooling, including kubectl, Helm, and Minikube, for local Kubernetes development and testing.                                |
| **nix**                      | 1       | Integrates the Nix package manager to facilitate reproducible and declarative package management in your container.                              |
| **node**                     | 1       | Installs Node.js, enabling you to run JavaScript on the server side and develop modern web applications.                                         |
| **nvidia-cuda**              | 1       | Provides the NVIDIA CUDA toolkit for GPU-accelerated computing, making it ideal for machine learning and data processing tasks.                  |
| **oryx**                     | 1       | Installs Oryx—a build tool that automatically detects languages and frameworks—to aid in building web apps, commonly used in Azure environments. |
| **php**                      | 1       | Sets up a PHP runtime environment for developing and running server-side PHP applications.                                                       |
| **powershell**               | 1       | Installs PowerShell, offering a powerful cross-platform scripting and automation environment.                                                    |
| **python**                   | 1       | Provides a Python development environment complete with essential libraries and tools for Python projects.                                       |
| **ruby**                     | 1       | Installs Ruby along with its package management system, useful for web development and scripting tasks.                                          |
| **rust**                     | 1       | Sets up the Rust toolchain and Cargo package manager, ideal for systems programming and performance-critical applications.                       |
| **sshd**                     | 1       | Installs and configures an OpenSSH server, allowing secure remote access into your devcontainer.                                                 |
| **terraform**                | 1       | Installs Terraform to help manage and provision infrastructure as code, making cloud resource management more efficient.                         |

## How to Use These Features

To include any of these features in your devcontainer, add them under the `"features"` property in your `devcontainer.json`. For example:

```json
"features": {
  "ghcr.io/devcontainers/features/docker-in-docker:2": {},
  "ghcr.io/devcontainers/features/aws-cli:1": {},
  "ghcr.io/devcontainers/features/node:1": {}
}
```
