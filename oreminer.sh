#!/bin/bash

while true
do
  echo "Running"
  ore --rpc <ALCHEMY_RPC_FROM_STEP_7> --keypair ~/.config/solana/id.json --priority-fee 10 mine --threads 4
  echo "Exited"
done
