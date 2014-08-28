FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://misc/gadget.cfg \
	file://eeprom/eeprom.cfg \
	file://misc/leds.cfg \
	file://eeprom/0001-add-board-eeprom.patch \
	file://pmic/0001-tps65217-Enable-KEY_POWER-press-on-AC-loss-PWR_BUT.patch \
	file://pmic/0002-dt-bone-common-Add-interrupt-for-PMIC.patch \
	"

