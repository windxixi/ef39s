## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef39s/ef39s.mk)

PRODUCT_NAME := cm_ef39s

# Release name and versioning
PRODUCT_RELEASE_NAME := SKY_IM-A800S
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef39s

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SKY_IM-A800S BUILD_FINGERPRINT=SKY/SKY_IM-A800S/ef39s:4.0.4/GRJ90/ef39s_DS1_004:user/release-keys PRIVATE_BUILD_DESC="SKY/SKY_IM-A800S/ef39s:4.0.4/GRJ90/ef39s_DS1_004:user/release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
