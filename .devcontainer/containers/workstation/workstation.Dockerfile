FROM ubuntu:24.04

# Set the working directory
WORKDIR /workspace

# Install basic dependencies
RUN apt-get update && apt-get install -y \
    curl \
    iputils-ping \
    zip \
    unzip \
    net-tools \
    bash

# Copy the .bash_aliases file to the container
COPY .devcontainer/containers/workstation/config/.bash_aliases /root/.bash_aliases

# Ensure the aliases are loaded in the container's shell
RUN echo 'if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi' >> /root/.bashrc

# Keep the container running by tailing /dev/null
CMD ["tail", "-f", "/dev/null"]
