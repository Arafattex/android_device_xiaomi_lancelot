#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/lancelot/device.mk)

# Gapps
WITH_GAPPS := 2
TARGET_GAPPS_ARCH := arm64

# Valid for core/full GAPPS (default=true)
TARGET_USE_GOOGLE_TELEPHONY := true
USE_PIXEL_CHARGING := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_USE_PIXEL_FRAMEWORK := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_WIFI_EXT := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Alpha internal properties
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := false
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
ALPHA_MAINTAINER := shas45558
ALPHA_BUILD_TYPE := OFFICIAL
IS_PHONE := true

# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080

## Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_lancelot
PRODUCT_DEVICE := lancelot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 9

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lancelot-user 11 RP1A.200720.011 V12.5.6.0.RJCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/lancelot_global/lancelot:11/RP1A.200720.011/V12.5.6.0.RJCMIXM:user/release-keys
