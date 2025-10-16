FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-lc"]

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    git \
    sudo \
    zsh \
    curl \
    && rm -rf /var/lib/apt/lists/*

ARG CONTAINER_USER
ARG CONTAINER_UID
ARG CONTAINER_HOME

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    # R
    r-base r-base-dev \
    # Jupyter R
    libcurl4-openssl-dev libssl-dev libxml2-dev  python3-pip\
    && rm -rf /var/lib/apt/lists/*

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN python3 -m pip install -U jupyter jupyter_client
RUN R -e "install.packages(c('languageserver', 'IRkernel', 'httpgd'))"
RUN R -e "IRkernel::installspec(user = FALSE)"

# LOAD SCRIPT
COPY .devcontainer/sh-utils /tmp/scripts
RUN chmod -R +x /tmp/scripts/*.sh

# ADD USER AND SETUP ZSH
RUN /tmp/scripts/add_user_and_setup_sudo.sh ${CONTAINER_USER} ${CONTAINER_UID}
RUN /tmp/scripts/setup_zsh.sh ${CONTAINER_USER} ${CONTAINER_UID}

RUN sudo -u ${CONTAINER_USER} curl -LsSf https://astral.sh/uv/install.sh | sudo -u ${CONTAINER_USER} sh
RUN sudo -u ${CONTAINER_USER} -H env PATH="${CONTAINER_HOME}/.local/bin:$PATH"

USER ${CONTAINER_USER}
