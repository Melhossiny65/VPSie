#!/bin/bash

Hosts=(100 101 102 510)

for i in "${Hosts[@]}"
do
   echo "=================================================================="
servers=(root@10.100.31.71 root@10.100.21.240)
  for x in "${servers[@]}"
     do
         ssh $x md5sum /etc/pve/qemu-server/$i.conf | awk -F '/' '{print $1,$5}'
         ssh $x cat /etc/pve/qemu-server/$i.conf | grep name:
done
done
