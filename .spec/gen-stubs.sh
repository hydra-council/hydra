#!/bin/bash

# Load NVM
export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Create output directories
mkdir -p generated/python generated/dart generated/node generated/go

# Generate Python gRPC stubs
python3.12 -m grpc_tools.protoc \
  --proto_path=./protos/ \
  -Igenerated=./protos \
  --python_out=./generated/python \
  --grpc_python_out=./generated/python \
  --pyi_out=./generated/python \
  $(find protos/ -name "*.proto")

# Generate Dart gRPC stubs
protoc \
  --proto_path=./protos/ \
  -I./protos \
  --dart_out=grpc:./generated/dart \
  $(find protos/ -name "*.proto")

# Generate Connect-RPC stubs using buf
buf generate

# Fix permissions on generated files
chmod -R 770 ./generated
