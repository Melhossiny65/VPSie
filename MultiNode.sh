#!/bin/bash

Hosts=(100 101 102 510)

for i in "${Hosts[@]}"
do
   echo "=================================================================="
servers=(root@10.100.31.71 root@10.100.21.240)
  for x in "${servers[@]}"
     do
         ssh $x md5sum /mnt/pve/templates/images/$i/base-$i-disk-0.qcow2
         ssh $x cat /etc/pve/qemu-server/$i.conf | grep name:
done
done
