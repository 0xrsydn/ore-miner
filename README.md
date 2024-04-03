# Ore Mining Script

0. Create new folder with command below before installing Rust. In this case, we use GitPod:
```
mkdir -p /home/gitpod/.config/fish/conf.d/
```

1. Install Rust and cargo:
```
curl https://sh.rustup.rs -sSf | sh
```

2. Install Solana CLI:
```
sh -c "$(curl -sSfL https://release.solana.com/v1.18.4/install)"
```

3. Create a new solana wallet:
```
solana-keygen new
```

4. Add ORE account to the wallet:
```
spl-token create-account oreoN2tQbHXVaZsr3pf66A48miqcBXCDJozganhEJgz
```

5. Find public address of the wallet created and deposit 0.01/0.02 SOL on the public address of this new wallet:
```
solana-keygen pubkey
```

6. Install the Ore CLI:
```
cargo install ore-cli
```

7. Create a free account with Alchemy (https://alchemy.com) -> Home -> View your API key -> copy the HTTPS URL (will be used as the custom RPC URL). You can use other RPC as well such as Solana Main RPC (https://api.mainnet-beta.solana.com).

8. Add https://oreminer.sh script on an easily accessible folder (e.g.: Desktop).

9. Go to the folder containing http://oreminer.sh and make sure it is executable as a program:
```
cd Desktop

then

chmod +x http://oreminer.sh
```

10. Stay in that folder and execute the http://oreminer.sh and watch your machine mine ORE for you automatically 🤑:
```
./oreminer.sh
```

11. Useful tip #1 --> check unclaimed rewards:
```
ore --keypair ~/.config/solana/id.json rewards
```
12. Useful tip #2 --> claim rewards and check total balance:
```
ore --keypair ~/.config/solana/id.json --rpc <ALCHEMY_RPC_FROM_STEP_7> claim

then

ore --keypair ~/.config/solana/id.json balance
```

13. Useful tip #3 --> if stuck in a max retries loop, try another RPC provider or increasing priority fee in the http://oreminer.sh file to a large number (some have suggested 10000). TBH even I haven't cracked this bit so any other ideas are welcome! 
