#!/bin/bash

echo "Checking ORE balance..."

while true; do
    ore --keypair ~/.config/solana/id.json balance
    sleep 10
done
