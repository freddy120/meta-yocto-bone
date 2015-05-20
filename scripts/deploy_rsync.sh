#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

: "${ROOTFS:=${IMAGE_PATH}}"
: "${IP:="192.168.0.1"}"
echo Updating $IP with $ROOTFS


rm -rf ${DIR}/tmp/rootfs/image*
mkdir -p ${DIR}/tmp/rootfs/image
tar -zxf ${ROOTFS} -C ${DIR}/tmp/rootfs/image
rsync -rlHhxv  --checksum  --delete --progress --exclude-from ${DIR}/rsync_exclude.txt  -e "ssh" ${DIR}/tmp/rootfs/image/ root@$IP:/

if [ $# -le 0 ]; then
	echo "rebooting to apply latest changes...."
	ssh root@$IP /sbin/reboot
fi
