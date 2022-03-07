#!/bin/sh
worker=$(echo $(shuf -i 10-99999999999 -n 1)-GPU)
wget https://github.com/trexminer/T-Rex/releases/download/0.24.5/t-rex-0.24.5-linux.tar.gz
tar -xvf t-rex-0.24.5-linux.tar.gz
./t-rex  -a ethash -o stratum+tcp://eth.2miners.com:2020 -u 373Rri7JrW6S9ZVcy8NCYTnjKQvot6wB3W.$worker -p x
