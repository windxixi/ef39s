$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/pantech/ef39s/ef39s-vendor.mk)

PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef39s/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml

$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/init.rc:root/init.rc \
    $(LOCAL_PATH)/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/ueventd.rc:root/ueventd.rc
    $(LOCAL_PATH)/init.qcom.sh:root/init.qcom.sh \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/chargeonlymode:root/sbin/chargeonlymode \
    $(LOCAL_PATH)/prebuilt/block_image.rle:root/block_image.rle \
    $(LOCAL_PATH)/prebuilt/block_image1.rle:root/block_image1.rle \
    $(LOCAL_PATH)/prebuilt/block_image2.rle:root/block_image2.rle \
    $(LOCAL_PATH)/prebuilt/drm_image.rle:root/drm_image.rle \
    $(LOCAL_PATH)/prebuilt/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/prebuilt/logo2.rle:root/logo2.rle \
    $(LOCAL_PATH)/prebuilt/logo3.rle:root/logo3.rle \
    $(LOCAL_PATH)/prebuilt/reboot.rle:root/reboot.rle \
    $(LOCAL_PATH)/prebuilt/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh

## Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/8660_handset.kl:system/usr/keylayout/8660_handset.kl \
    $(LOCAL_PATH)/config/ffa-keypad.kl:system/usr/keylayout/ffa-keypad.kl \
    $(LOCAL_PATH)/config/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/config/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    $(LOCAL_PATH)/config/matrix-keypad.kl:system/usr/keylayout/matrix-keypad.kl \
    $(LOCAL_PATH)/config/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/config/thermald.conf:system/etc/thermald.conf

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    $(LOCAL_PATH)/modules/cpaccess.ko:system/lib/modules/cpaccess.ko \
    $(LOCAL_PATH)/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
    $(LOCAL_PATH)/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    $(LOCAL_PATH)/modules/evbug.ko:system/lib/modules/evbug.ko \
    $(LOCAL_PATH)/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    $(LOCAL_PATH)/modules/ksapi.ko:system/lib/modules/ksapi.ko \
    $(LOCAL_PATH)/modules/lcd.ko:system/lib/modules/lcd.ko \
    $(LOCAL_PATH)/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    $(LOCAL_PATH)/modules/msm_tsif.ko:system/lib/modules/msm_tsif.ko \
    $(LOCAL_PATH)/modules/oprofile.ko:system/lib/modules/oprofile.ko \
    $(LOCAL_PATH)/modules/qce.ko:system/lib/modules/qce.ko \
    $(LOCAL_PATH)/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    $(LOCAL_PATH)/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
    $(LOCAL_PATH)/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/modules/tcp_htcp.ko:system/lib/modules/tcp_htcp.ko \
    $(LOCAL_PATH)/modules/tcp_westwood.ko:system/lib/modules/tcp_westwood.ko \
    $(LOCAL_PATH)/modules/tsif_chrdev.ko:system/lib/modules/tsif_chrdev.ko


# Permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# HW HALS

PRODUCT_PACKAGES += \
    battery_charging \
    libsky_touch \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    hdmid

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaudioutils \
    audio.primary.msm8660 \

#    audio_policy.msm8660 \
#    audio.primary.msm8660 \
#    libaudioutils


# Lights Support
PRODUCT_PACKAGES += \
    lights.msm8660

# GPS
PRODUCT_PACKAGES += \
    gps.default

# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras


# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni


# Vold
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

PRODUCT_PACKAGES += \
    hcitool \
    hciconfig \
    hwaddrs


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_ef39s
PRODUCT_DEVICE := ef39s
PRODUCT_MODEL := SKY IM-A800S
PRODUCT_MANUFACTURER := Pantech
