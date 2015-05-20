# This recipe is based on the recipe by Koen in meta-texasinstruments
DESCRIPTION = "Scripts to initialize usb gadgets"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"

RDEPENDS_${PN}="devmem2 bash"

COMPATIBLE_MACHINE = "(ti33x)"
PACKAGE_ARCH = "${MACHINE_ARCH}"


PR = "r3"

SRC_URI = "file://gadget-init.service \
           file://gadget-init.sh \
"

inherit systemd
SYSTEMD_SERVICE_${PN} = "gadget-init.service"


do_install() {
    install -d ${D}${systemd_unitdir}/system
    install -m 644 ${WORKDIR}/gadget-init.service ${D}${systemd_unitdir}/system/
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/*.sh ${D}${bindir}
}

FILES_${PN} = "${systemd_unitdir} ${bindir}"

RRECOMMENDS_${PN} = "kernel-module-g-ether"
