#!/bin/bash

# Load NVM
export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Create output directories
mkdir -p generated/python generated/dart generated/node generated/go

# Generate Python gRPC stubs
python3.12 -m grpc_tools.protoc \
    -I./protos \
    --python_out=./generated/python \
    --grpc_python_out=./generated/python \
    ./protos/**/**/**/*.proto

# Generate Dart gRPC stubs
protoc \
    -I./protos \
    --dart_out=grpc:./generated/dart \
    ./protos/**/**/**/*.proto

# Generate Connect-RPC stubs using buf
buf generate

# Fix permissions on generated files
chmod -R 770 ./generated
