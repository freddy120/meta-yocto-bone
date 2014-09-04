meta-yocto-bone
===============

Support layer for using Yocto and BeagleBone Black 


As of Yocto 1.6, BeagleBone is officially 'supported'. However, out-of-the-box functionality is missing features, found in the official Angstrom and Debian images.

This layer attempts to provide minimal feature-set to begin developing with BeagleBone and Yocto

Provides
===============
* Ethernet over USB (g_ether or RNDIS Gadget)  
* LEDs  
* Power button  
* On-board EEPROM
* CPU Frequency switching and fix to 1GHz

Usage
===============

* add this layer to your conf/bblayers.conf file
* follow the steps from https://www.yoctoproject.org/downloads/bsps/daisy16/beaglebone
* use 'bitbake core-image-minimal' for building the filesystem

Dependencies
===============

This layer in its entirety depends on:

URI: git://git.yoctoproject.org/poky  
branch: daisy  
revision: HEAD  

