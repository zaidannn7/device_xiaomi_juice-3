#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configurations
$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit some common Project Arcana stuff.
$(call inherit-product, vendor/aosp/common.mk)
TARGET_INCLUDE_PIXEL_CHARGER  := true
TARGET_SUPPORTS_BLUR := true

# Gapps
#TARGET_GAPPS_ARCH := arm64
#WITH_GAPPS := true

# Arcana flags
ARCANA_OFFICIAL := true
ARCANA_DEVICE := juice
ARCANA_MAINTAINER := frostg012.RayapKun

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := sm6115
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
