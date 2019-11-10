# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

# Inherit some common CypherOS stuff.
$(call inherit-product, vendor/aoscp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aoscp/configs/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef52/full_ef52.mk)

BOARD_HARDWARE_CLASS := device/pantech/ef52/aoscphw/

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52
PRODUCT_NAME := aoscp_ef52
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega Iron
PRODUCT_MANUFACTURER := Vega

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="ef52" \
    PRODUCT_NAME="aoscp_ef52" \
    PRIVATE_BUILD_DESC="ef52l-user 4.1.2 JZ054K IM-A870L.003 release-keys"

BUILD_FINGERPRINT := pantech/ef52l:4.1.2/JZO54K/IM-A870L.003:user/release-keys

# Enable Torch
#PRODUCT_PACKAGES += Torch

# Root options
ROOT_METHOD=magisk 

