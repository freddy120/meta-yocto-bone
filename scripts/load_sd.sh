#!/bin/bash
set -euo pipefail
IFS=$'\n\t' 

: "${ROOTFS:=${IMAGE_PATH}}"
: "${MLO:=${DEPLOYDIR}/MLO}"
: "${U_BOOT:=${DEPLOYDIR}/u-boot.img}"

echo "Copying ..."
echo $MLO
echo $U_BOOT
echo $ROOTFS


#Ubuntu 14.04 automount point
MNT=/media/$USER

sudo rm -rf $MNT/boot/*
sudo cp ${MLO} $MNT/boot/MLO
sudo cp ${U_BOOT} $MNT/boot/u-boot.img
sudo rm -rf $MNT/rootfs/*
sync
sudo tar x -C $MNT/rootfs -f ${ROOTFS}
sudo touch $MNT/rootfs/etc/masterimage #automated testing tag
#sudo tar x -C $MNT/rootfs -f ${DEPLOYDIR}/modules-beaglebone.tgz
sync
sudo umount $MNT/rootfs
sudo umount $MNT/boot
echo "SD load DONE!"
