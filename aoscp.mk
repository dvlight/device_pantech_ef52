# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

# Inherit some common BlurOS stuff.
$(call inherit-product, vendor/aoscp/configs/common_full_phone.mk)

-include vendor/cmsdk/Android.mk

# Inherit device configuration
$(call inherit-product, device/pantech/ef52/full_ef52.mk)

BOARD_HARDWARE_CLASS := device/pantech/ef52/lineagehw/

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52
PRODUCT_NAME := aoscp_ef52
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega Iron
PRODUCT_MANUFACTURER := Vega

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="ef52" \
    PRODUCT_NAME="aoscp_ef52" \
    BUILD_FINGERPRINT="pantech/ef52l:4.1.2/JZO54K/IM-A870L.003:user/release-keys" \
    PRIVATE_BUILD_DESC="ef52l-user 4.1.2 JZ054K IM-A870L.003 release-keys"

# Enable Torch
#PRODUCT_PACKAGES += Torch

