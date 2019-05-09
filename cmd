./halium/devices/setup vegetalte
breakfast vegetalte
mka mkbootimg
mka hybris-boot
mka systemimage
cd halium-install-master/
./halium-install ~/halium/halium-rootfs-20170630-151006.tar.gz ~/halium/out/target/product/vegetalte/system.img
cd ..

while : ; do lsusb -v 2>/dev/null | grep -Ee 'iSerial +[0-9]+ +[^ ]' ; done | uniq

## add vegetalte to ./halium/hybris-boot/fixup-mountpoints

"vegetalte")
        sed -i \
            -e 's block/bootdevice/by-name/system mmcblk0p26 ' \
            -e 's block/bootdevice/by-name/cache mmcblk0p28 ' \
            -e 's block/bootdevice/by-name/userdata mmcblk0p30 ' \
            -e 's block/bootdevice/by-name/persist mmcblk0p27 ' \
            -e 's block/bootdevice/by-name/modem mmcblk0p22 ' \
           "$@"
        ;;

