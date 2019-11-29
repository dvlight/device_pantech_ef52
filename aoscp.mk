# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

# Inherit some common CypherOS stuff.
$(call inherit-product, vendor/aoscp/configs/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef52/full_ef52.mk)

BOARD_HARDWARE_CLASS := device/pantech/ef52/aoscphw/

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52
PRODUCT_NAME := aoscp_ef52
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega Iron
PRODUCT_MANUFACTURER := Pantech

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="ef52" \
    PRODUCT_NAME="aoscp_ef52" \
    PRIVATE_BUILD_DESC="msm8960-user 4.4.2 KOT49H IM-A870L.011 release-keys"

BUILD_FINGERPRINT := VEGA/VEGA_IM-A870L/ef52l:4.4.2/KOT49H/IM-A870L.011:user/release-keys

# Enable Torch
#PRODUCT_PACKAGES += Torch

# Root options
ROOT_METHOD=magisk 

