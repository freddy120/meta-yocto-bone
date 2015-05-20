meta-yocto-bone
===============

Support layer for using Yocto and BeagleBone Black 

* Provides minimal feature-set to help developing with BeagleBone and Yocto
* Integrates select patches from https://github.com/RobertCNelson/ti-linux-kernel-dev.git, branch: ti-linux-3.14.y

Provides
===============
* Out-of-the box Ethernet over USB with ConnMan as DHCP server 
* Uses SystemD 
* Linux TI Kernel support
* BeagleBone.org gpio-of-helper kernel driver
* BealgeBone.org PMIC power button kernel support
* PCB board EEPROM kernel support
* SSHFS support kernel support

Usage
===============
* bblayers.conf must include the following layers: meta-ti, meta-oe/meta-oe, meta-yocto-bone(this layer)
* bblayers.conf may remove meta-yoct-bsp layer to avoid conflict with meta-ti layer
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


Tested Build Configuration
===============

BB_VERSION        = "1.22.0"  
BUILD_SYS         = "x86_64-linux"  
NATIVELSBSTRING   = "Ubuntu-14.04"  
TARGET_SYS        = "arm-poky-linux-gnueabi"  
MACHINE           = "beaglebone"  
DISTRO            = "poky-bone"  
DISTRO_VERSION    = "1.6.2"  
TUNE_FEATURES     = "armv7a vfp thumb neon callconvention-hard cortexa8"  
TARGET_FPU        = "vfp-neon"  
meta              
meta-yocto        = "daisy:91c507ce1cf983a600c2d38c4284e605a80297d6"  
meta-ti           = "daisy:216d98bd5499a8c4a7ef776dbc7bb1eb4c340461"  
meta-oe           = "daisy:d3d14d3fcca7fcde362cf0b31411dc4eea6d20aa"  
meta-yocto-bone   = "master:648e853d6bfb91ad994707f4208beeb2862e973a"  
