DESCRIPTION = "Task to install development packages into the target FS"
LICENSE = "MIT"
PR = "r31"

inherit packagegroup

PACKAGE_ARCH = "${MACHINE_ARCH}"


RDEPENDS_${PN} = "\
   dropbear  openssh-sftp-server  \
   nfs-utils-client rsync cpufrequtils htop iperf \
"

