#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configurations
$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
TARGET_INCLUDE_PIXEL_CHARGER  := true
TARGET_SUPPORTS_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Juice
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220305.013.A3/8229987:user/release-keys
BUILD_DESC := "raven-user 12 SP2A.220305.013.A3 8229987 release-keys"
