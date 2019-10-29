#!/sbin/sh

if grep -q "IM-A870S" /dev/block/mmcblk0p12 ; then
	mv /system/system/etc/firmware_ef52s/* /system/system/etc/firmware/

elif grep -q "IM-A870K" /dev/block/mmcblk0p12 ; then
	mv /system/system/etc/firmware_ef52k/* /system/system/etc/firmware/

elif grep -q "IM-A870L" /dev/block/mmcblk0p12 ; then
	mv /system/system/etc/firmware_ef52l/* /system/system/etc/firmware/
fi

rm -rf /system/system/etc/firmware_ef52s
rm -rf /system/system/etc/firmware_ef52k
rm -rf /system/system/etc/firmware_ef52l
rm -rf /system/system/bin/device_check.sh

