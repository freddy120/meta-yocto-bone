FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
  file://kconfig/systemd.cfg \
  file://kconfig/eeprom.cfg \
  file://kconfig/fuse.cfg \
  file://kconfig/gpio.cfg \
  file://beaglebone/dts/0004-tps65217-Enable-KEY_POWER-press-on-AC-loss-PWR_BUT.patch \
  file://beaglebone/pinmux-helper/0004-gpio-Introduce-GPIO-OF-helper.patch \
  file://beaglebone/pinmux-helper/0005-Add-dir-changeable-property-to-gpio-of-helper.patch \
  file://beaglebone/pinmux-helper/0012-Remove-CONFIG_EXPERIMENTAL-dependency-on-CONFIG_GPIO.patch \
  file://beaglebone/pinmux-helper/0001-GPIO-OF-HELPER-add-export-link-to-sysfs.patch \
  file://0001-add-board-eeprom.patch \
  "

KERNEL_CONFIG_FRAGMENTS_append_ti33x = " \
  ${WORKDIR}/kconfig/systemd.cfg \
  ${WORKDIR}/kconfig/eeprom.cfg \
  ${WORKDIR}/kconfig/fuse.cfg \
  ${WORKDIR}/kconfig/gpio.cfg \
  "

