meta-yocto-bone
===============

Support layer for using Yocto and BeagleBone Black 


As of Yocto 1.6, BeagleBone is officially 'supported'. However, out-of-the-box, some of the functionality is missing.

This layer attempts to provide some of the missing functionality from meta-beagleboard layer &  RobertNelson's kernel-devel repo.

Recipes are tested with Beagle Bone Black Rev C. 

### Dependency


This layer in its entirety depends on:

URI: git://git.yoctoproject.org/poky
branch: daisy
revision: HEAD

