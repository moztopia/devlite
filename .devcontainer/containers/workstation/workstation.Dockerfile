FROM ubuntu:24.04

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
    curl \
    iputils-ping \
    zip \
    unzip \
    net-tools \
    bash \
    sudo \
    gnupg \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY .devcontainer/containers/workstation/config/.bash_aliases /root/.bash_aliases

RUN echo 'if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi' >> /root/.bashrc

CMD ["tail", "-f", "/dev/null"]