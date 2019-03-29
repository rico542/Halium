# Halium
Halium How To for BQ Vegetalte

## Software
To complete the build process i had to install several packages :

apt-get install libncurses5 rsync android-tools-fsutils android-tools-adb fastboot qemu-utils binfmt-support qemu-user-static e2fsprogs sudo simg2img

## Additional files
bq_vegetalte.xml
this is the vegetalte roomservice file to put in ~/halium/halium/devices/manifests
halium_vegetalte_defconfig
this is the kernel conf modifications. I just paste at the the end of original vegetalte_defconfig (TODO: change this ugly method)

## Install
To install the rootfs i used script from https://github.com/JBBgameich/halium-install/
unzip in your Halium folder and change directory to be in, for me :

cd ~/halium/halium-install-master/ 

As in the halium doc plug your phone in recovery mode and :

./halium-install ~/halium/halium-rootfs-20170630-151006.tar.gz ~/halium/out/target/product/vegetalte/system.img

