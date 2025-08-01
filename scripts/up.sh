#!/bin/bash

# Download venus toolchain if not present
if [ ! -f "build/toolchain.sh" ]; then
    echo "toolchain not found, downloading..."
    mkdir -p build
    wget https://updates.victronenergy.com/feeds/venus/release/sdk/venus-scarthgap-x86_64-arm-cortexa8hf-neon-toolchain-v3.63.sh -O build/toolchain.sh
fi

docker compose up -d --build