#!/bin/bash
set -euo pipefail
IFS=$'\n\t' 
DISK=${1:-/dev/mmcblk0}
PART=${2:-}
sudo dd if=/dev/zero of=${DISK} bs=1M count=20
sudo sfdisk --in-order --Linux --unit M ${DISK} <<-__EOF__
1,12,0xE,*
,2036
,2036
__EOF__
sudo mkfs.vfat -F 16 ${DISK}${PART}1 -n boot
sudo mkfs.ext4 ${DISK}${PART}2 -L rootfs
sudo mkfs.ext4 ${DISK}${PART}3 -L testrootfs
#sudo mkdir -p /media/BOOT/
#sudo mkdir -p /media/rootfs/
#sudo mount ${DISK}p1 /media/BOOT/
#sudo mount ${DISK}p2 /media/rootfs/
