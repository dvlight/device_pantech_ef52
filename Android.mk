LOCAL_PATH := $(call my-dir)

ifeq (ef52l,$(TARGET_DEVICE))
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
