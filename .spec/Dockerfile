# Use Ubuntu as base image
FROM ubuntu:22.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install essential tools and dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    unzip \
    protobuf-compiler \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# Install Python 3.12 from deadsnakes PPA
RUN add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y \
    python3.12 \
    python3.12-venv \
    python3.12-dev \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Make Python 3.12 the default
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1 && \
    update-alternatives --set python3 /usr/bin/python3.12

# Install Go 1.22
RUN curl -OL https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && \
    rm go1.22.0.linux-amd64.tar.gz
ENV PATH=$PATH:/usr/local/go/bin
ENV GOPATH=/go
ENV PATH=$PATH:$GOPATH/bin

# Install NVM and Node.js
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 20.11.1

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash && \
    . $NVM_DIR/nvm.sh && \
    nvm install $NODE_VERSION && \
    nvm alias default $NODE_VERSION && \
    nvm use default

# Add node and npm to path so the commands are available
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# Install Dart SDK
RUN apt-get update && apt-get install -y apt-transport-https
RUN wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/dart.gpg
RUN echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | tee /etc/apt/sources.list.d/dart_stable.list
RUN apt-get update && apt-get install -y dart

# Install pip for Python 3.12
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3.12

# Install Python gRPC tools
RUN python3.12 -m pip install grpcio grpcio-tools

# Install Dart gRPC tools
RUN dart pub global activate protoc_plugin

# Install Node.js dependencies globally
RUN . $NVM_DIR/nvm.sh && \
    npm install -g \
    @bufbuild/buf \
    @connectrpc/connect@"^v1.0.0"  \
    @connectrpc/connect-web@"^v1.0.0" \
    @bufbuild/protoc-gen-connect-web \
    @bufbuild/protoc-gen-es@"^1.0.0"  \
    @bufbuild/protobuf@"^1.0.0"  \
    @connectrpc/protoc-gen-connect-es@"^1.0.0"  \
    @connectrpc/connect@"^1.0.0"

# Install Go tools
RUN go install github.com/bufbuild/buf/cmd/buf@latest
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
RUN go install connectrpc.com/connect/cmd/protoc-gen-connect-go@latest

# Set up PATH for tools
ENV PATH="/root/.pub-cache/bin:${PATH}"

# Create working directory
WORKDIR /workspace

# Default command
CMD ["./gen-stubs.sh"]