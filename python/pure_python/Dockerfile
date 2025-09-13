FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    git \
    sudo \
    zsh \
    curl \
    # Xserver
    libx11-dev \
    libgl1 \
    libsm6 \
    libxext6 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN curl -LsSf https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
ARG OHMYZSH_THEME=/root/.oh-my-zsh/custom/themes

RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${OHMYZSH_THEME}/powerlevel10k && \
    sed -i 's|ZSH_THEME="devcontainers"|ZSH_THEME="powerlevel10k/powerlevel10k"|g' .zshrc && \
    echo 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true' >> .zshrc

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN echo 'alias ls="ls -lsaF"' >> .zshrc
RUN chsh -s /bin/zsh root

COPY . /workspaces/app

ENV PYTHONPATH=/workspaces/app
CMD ["sh", "-c", "cd /workspaces/app && /usr/bin/python3 app/main.py"]
