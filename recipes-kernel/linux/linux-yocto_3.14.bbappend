FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://misc/cpufreq.cfg \
	file://misc/gadget.cfg \
	file://eeprom/eeprom.cfg \
	file://misc/leds.cfg \
  file://dts/0002-arm-dts-am335x-boneblack-add-cpu0-opp-points.patch \
	file://eeprom/0001-add-board-eeprom.patch \
	file://pmic/0001-tps65217-Enable-KEY_POWER-press-on-AC-loss-PWR_BUT.patch \
	file://pmic/0002-dt-bone-common-Add-interrupt-for-PMIC.patch \
	"

