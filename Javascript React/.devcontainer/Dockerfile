FROM ubuntu:22.04

LABEL Version=0.0.1
LABEL authors="sangjung"

RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

WORKDIR /workspaces/app
COPY .. /workspaces/app

EXPOSE 3000

#CMD CMD ["tail", "-f", "/dev/null"]