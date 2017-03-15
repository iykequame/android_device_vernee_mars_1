# Ramdisk
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6797:root/fstab.mt6797 \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.mt6797.rc:root/init.recovery.mt6797.rc

# F2FS
PRODUCT_PACKAGES += \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs
 
