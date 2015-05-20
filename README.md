meta-yocto-bone
===============

Support layer for using Yocto and BeagleBone Black 

* Provides minimal feature-set to help developing with BeagleBone and Yocto
* Integrates select patches from https://github.com/RobertCNelson/ti-linux-kernel-dev.git, branch: ti-linux-3.14.y

Provides
===============
* Ethernet over USB (g_ether or RNDIS Gadget) with ConnMan as DHCP server 
* SystemD support 
* Linux TI Kernel support
* BeagleBone.org gpio-of-helper driver  
* BealgeBone.org PMIC power button support  
* PCB board EEPROM  
* SSHFS support 

Usage
===============
* bblayers.conf must include the following layers: meta-ti, meta-oe/meta-oe, meta-yocto-bone(this layer)
* select "MACHINE = beaglebone" in conf/local.conf
* select "DISTRO = poky-bone" in conf/local.conf
* follow the steps from https://www.yoctoproject.org/downloads/bsps/daisy16/beaglebone
* use 'bitbake core-image-base' for building the filesystem

Dependencies
===============

This layer depends on:

URI: git://git.yoctoproject.org/poky  
branch: daisy  
revision: HEAD  

URI: git://git.yoctoproject.org/meta-ti
branch: daisy  
revision: HEAD  

URI: https://github.com/openembedded/meta-oe.git 
branch: daisy  
revision: HEAD  

