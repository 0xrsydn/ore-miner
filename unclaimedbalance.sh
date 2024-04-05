#!/bin/bash

echo "Checking the unclaimed balance..."

while true; do
    ore --keypair ~/.config/solana/id.json rewards
    sleep 10
done
