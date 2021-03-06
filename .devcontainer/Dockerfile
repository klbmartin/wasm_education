# copy and modification of https://github.com/microsoft/vscode-dev-containers/tree/v0.128.0/containers/ubuntu/.devcontainer/base.Dockerfile
FROM ubuntu:20.10

# This Dockerfile adds a non-root user with sudo access. Use the "remoteUser"
# property in devcontainer.json to use it. On Linux, the container user's GID/UIDs
# will be updated to match your local UID/GID (when using the dockerFile property).
# See https://aka.ms/vscode-remote/containers/non-root-user for details.
# ARG USERNAME=vscode
# ARG USER_UID=1000
# ARG USER_GID=$USER_UID

RUN set -eu \
    && apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    apt-utils \
    ca-certificates \
    curl \
    clang-11 \
    git \
    lld-11 \
    llvm-11 \
    less \
    make \
    openssh-client \
    python3 \
    wget \
    sudo \
    vim

RUN wasm_ld=$(ls /usr/bin/ | grep wasm-ld-) && update-alternatives --install /usr/bin/wasm-ld wasm-ld /usr/bin/$wasm_ld 100 \
    && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-11 100 \
    && update-alternatives --install /usr/bin/llvm-ar llvm-ar /usr/bin/llvm-ar-11 100 \
    && update-alternatives --install /usr/bin/llvm-nm llvm-nm /usr/bin/llvm-nm-11 100

RUN git clone https://github.com/CraneStation/wasi-libc.git /tmp/wasi-libc-git \
    && make --directory=/tmp/wasi-libc-git install INSTALL_DIR=/tmp/wasi-libc \
    && rm -rf /tmp/wasi-libc-git