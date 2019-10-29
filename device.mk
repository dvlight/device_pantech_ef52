#
# Copyright (C) 2019 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit the fusion-common definitions
$(call inherit-product, device/pantech/msm8960-common/msm8960.mk)

# Device Path
DEVICE_PATH := device/pantech/ef52l

# Vendor files
$(call inherit-product, vendor/pantech/ef52l/ef52l-vendor.mk)

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

TARGET_PREBUILT_KERNEL=device/pantech/ef52l/zImage

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
	 $(DEVICE_PATH)/overlay

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcomvoiceprocessing \
    tinymix
	
# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Boot control
PRODUCT_PACKAGES += \
	android.hardware.boot@1.0-impl \
	android.hardware.boot@1.0-service \
	bootctrl.msm8960 \
        android.hardware.boot@1.0-impl.recovery \
        bootctrl.msm8960.recovery

PRODUCT_PACKAGES_DEBUG += \
        bootctl

# Consumerir
PRODUCT_PACKAGES += \
	android.hardware.ir@1.0-impl \
	android.hardware.ir@1.0-service

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Checking model
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/releasetools/device_check.sh:system/bin/device_check.sh

# keylayout
PRODUCT_COPY_FILES += \
	device/pantech/ef52l/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/pantech/ef52l/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	device/pantech/ef52l/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/pantech/ef52l/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/pantech/ef52l/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \

# keychars
PRODUCT_COPY_FILES += \
	device/pantech/ef52l/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
	device/pantech/ef52l/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
	device/pantech/ef52l/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
	device/pantech/ef52l/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

# idc
PRODUCT_COPY_FILES += \
	device/pantech/ef52l/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
	device/pantech/ef52l/idc/qwerty.idc:system/usr/idc/qwerty.idc \
     

PRODUCT_COPY_FILES += \
	device/pantech/ef52l/thermald/thermald-8064_ef52.conf:system/etc/thermald.conf \
	device/pantech/ef52l/thermald/thermal-engine-8064.conf:system/etc/thermal-engine-8064.conf

PRODUCT_PACKAGES += \
    Torch

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=300

#Product info
ifdef AOSP
PRODUCT_PROPERTY_OVERRIDES += \
	ro.device.chipset=APQ8064T \
	ro.device.gpu=Adreno-320 \
	ro.device.front_cam=2Mpx \
	ro.device.rear_cam=13Mpx \
	ro.device.screen_res=720x1280 \
	ro.aosp.maintainer=light1234
endif

# Vibrator
PRODUCT_PACKAGES += \
	android.hardware.vibrator@1.0-impl \
	android.hardware.vibrator@1.0-service

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# AOSP DEVICE
PRODUCT_DEVICE := ef52l
PRODUCT_NAME := aosp_ef52l
PRODUCT_BRAND := VEGA
PRODUCT_MODEL := Vega Iron
PRODUCT_MANUFACTURER := Pantech
