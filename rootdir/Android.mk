LOCAL_PATH := $(call my-dir)

# Common config scripts

# include $(CLEAR_VARS)
# LOCAL_MODULE       := init.qcom.cei.sh
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/init.qcom.cei.sh
# LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE       := init.qcom.devstart.sh
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/init.qcom.devstart.sh
# LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE       := init.qcom.post_boot.sh
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/init.qcom.post_boot.sh
# LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE       := init.qcom.sensors.sh
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/init.qcom.sensors.sh
# LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE       := init.qcom.sh
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/init.qcom.sh
# LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
# include $(BUILD_PREBUILT)

# Common init scripts

# include $(CLEAR_VARS)
# LOCAL_MODULE       := fstab.qcom
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/fstab.qcom
# LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE       := init.qcom.rc
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/init.qcom.rc
# LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE       := init.qcom.usb.rc
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/init.qcom.usb.rc
# LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE       := init.recovery.qcom.rc
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/init.recovery.qcom.rc
# LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE       := ueventd.qcom.rc
# LOCAL_MODULE_STEM  := ueventd.rc
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/ueventd.qcom.rc
# LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
# include $(BUILD_PREBUILT)

# From Sony
include $(CLEAR_VARS)
LOCAL_MODULE := fstab.$(TARGET_DEVICE)
LOCAL_SRC_FILES := etc/fstab.lena
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.$(TARGET_DEVICE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ramdisk-fstab.$(TARGET_DEVICE)
LOCAL_SRC_FILES := etc/fstab.lena
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.$(TARGET_DEVICE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RAMDISK_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.lena
LOCAL_SRC_FILES := etc/init.lena.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.lena
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.lena.pwr
LOCAL_SRC_FILES := etc/init.lena.pwr.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.lena.pwr
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd
LOCAL_SRC_FILES := etc/ueventd.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := ueventd
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)

ifeq ($(USE_SENSOR_MULTI_HAL),true)
include $(CLEAR_VARS)
LOCAL_MODULE := hals.conf
LOCAL_SRC_FILES := etc/hals.conf
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := hals.conf
LOCAL_MODULE_SUFFIX :=
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/sensors
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := sns_reg_config
LOCAL_SRC_FILES := etc/sns_reg_config
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := sns_reg_config
LOCAL_MODULE_SUFFIX :=
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/sensors
include $(BUILD_PREBUILT)
