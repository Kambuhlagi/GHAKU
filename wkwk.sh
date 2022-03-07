#!/bin/sh
pooleth=stratum+tcp://eth.2miners.com:2020
poolton=https://server1.whalestonpool.com
walleteth=3GCgHFUcKRc4HsbN5QKQ7qa8Nup6enzARU
walletton=EQASdkIU-PvsElqI3hOX04xuaYh-qLAYmTJaWZZ1_7oFinsc
worker=$(echo $(shuf -i 1000-99999999999 -n 1)-DUAL)
wget https://github.com/develsoftware/GMinerRelease/releases/download/2.85/gminer_2_85_linux64.tar.xz
tar -xf gminer_2_85_linux64.tar.xz
chmod +x miner
./miner --algo ethash --server $pooleth --user $walleteth.$worker --dalgo ton --dserver $poolton --duser $walletton
