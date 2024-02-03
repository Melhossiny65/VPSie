#!/bin/bash

MyVMID=(637 654 638 639 640 609 627 599 623 625 626 621 641 629)
for i in "${MyVMID[@]}"
do
   echo "========================================================"
   echo -n "MD5Sum: "; md5sum /mnt/pve/templates/images/$i/base-$i-disk-0.qcow2
done
