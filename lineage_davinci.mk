#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common Axion stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion Flags
WITH_GMS := false

# Axion Flags
AXION_MAINTAINER := superxorn
AXION_PROCESSOR := Snapdragon_730

# Camera
PRODUCT_NO_CAMERA := false
AXION_CAMERA_REAR_INFO := 48
AXION_CAMERA_FRONT_INFO := 20

# CPU
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7
AXION_CPU_BG := 0-1
AXION_CPU_FG := 0-7

# BCR
TARGET_PREBUILT_BCR := false

# Blur
TARGET_ENABLE_BLUR := false

# Bypass Charging
BYPASS_CHARGE_SUPPORTED := true

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="davinci-user 11 RKQ1.200826.002 V12.1.4.0.RFJMIXM release-keys" \
    BuildFingerprint=Xiaomi/davinci/davinci:11/RKQ1.200826.002/V12.1.4.0.RFJMIXM:user/release-keys \
    DeviceProduct=davinci \
    SystemName=davinci

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
