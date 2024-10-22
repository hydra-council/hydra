#!/bin/bash

# Load NVM
export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Create output directories
mkdir -p generated/python generated/dart generated/node generated/web generated/go

# Generate Python gRPC stubs
python3.12 -m grpc_tools.protoc \
    -I. \
    --python_out=./generated/python \
    --grpc_python_out=./generated/python \
    ./**/**/**/*.proto

# Generate Dart gRPC stubs
protoc \
    -I. \
    --dart_out=grpc:./generated/dart \
    ./**/**/**/*.proto

# Generate Connect-RPC stubs using buf
buf generate

# Fix permissions on generated files
chmod -R 770 ./generated
