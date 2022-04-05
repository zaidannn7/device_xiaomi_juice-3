#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configurations
$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit some common Corvus stuff.
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)
TARGET_INCLUDE_PIXEL_CHARGER  := true
TARGET_SUPPORTS_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := corvus_juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Juice
PRODUCT_MANUFACTURER := Xiaomi

# Corvus Official
RAVEN_LAIR=Official

# Corvus Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.corvus.maintainer=Nathaniel_Quitua

# Fingerprint
BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys
BUILD_DESC := "raven-user 12 SP2A.220405.004 8233519 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
	
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi