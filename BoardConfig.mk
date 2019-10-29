#
# Copyright 2019 The Android Open Source Project
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

PLATFORM_PATH := device/pantech/ef52
# Inherit from msm8960-common
-include device/pantech/msm8960-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := ef52l,ef52s,ef52k

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/bluetooth

# ReleaseTools
TARGET_RELEASETOOLS_EXTENSIONS := $(PLATFORM_PATH)/releasetools

# Kernel
TARGET_KERNEL_SOURCE := kernel/pantech/msm8960
TARGET_KERNEL_CONFIG := aosp_ef52_defconfig

# Filesystem
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27577531392 #25.7GB

# Platform
BOARD_VENDOR_PLATFORM := pantech-msm8960

# Vendor Security patch level
VENDOR_SECURITY_PATCH := 2013-11-30

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Sensor
EF52_USE_KITKAT_SENSORS := yes

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
RECOVERY_FSTAB_VERSION = 2

# TWRP config
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TW_INCLUDE_JB_CRYPTO := true
TW_FLASH_FROM_STORAGE := true
TW_NO_USB_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"

# inherit from the proprietary version
-include vendor/pantech/ef52/BoardConfigVendor.mk
