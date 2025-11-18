# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Starry Kernel by Taki/Amrito
do.devicecheck=1
do.systemless=1
do.cleanup=1
device.name1=stone
device.name2=moonstone
device.name3=sunstone
device.name4=gemstone
supported.versions=12.0-16.0
'; } # end properties

### AnyKernel install
# boot shell variables
block=boot;
is_slot_device=auto;
no_block_display=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
split_boot;
flash_boot;
## end boot install

# dtbo install
flash_dtbo
## end of dtbo install

# vendor_boot shell variables
block=vendor_boot;

# reset for vendor_boot patching
reset_ak;

# vendor_boot install
split_boot;
flash_boot;
## end vendor_boot install
