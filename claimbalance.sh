#!/bin/bash

# Define your RPC URL
RPC_URL="your_rpc_url_here"

while true; do
    # Claim rewards
    ore --keypair ~/.config/solana/id.json --rpc "$RPC_URL" claim
    # Add a delay of 10 seconds
    sleep 10
done
