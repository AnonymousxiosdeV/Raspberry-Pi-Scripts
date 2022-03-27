#! /bin/bash


sudo apt-get update && sudo apt-get upgrade -y ;

sudo apt-get install wireshark ;

sudo groupadd wireshark ;

sudo usermod -a -G wireshark pi ;

sudo chgrp wireshark /usr/bin/dumpcap ;

sudo chmod 750 /usr/bin/dumpcap ;

ls -al /usr/bin/dumpcap ;

sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap ;

sudo getcap /usr/bin/dumpcap ;

echo "Rebooting Now" ;

sleep 2 ;

sudo reboot 