#
# Copyright (C) 2022 The SuperiorOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common SuperiorOS stuff
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from r5x device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_ENABLE_BLUR := true

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := r5x
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := superior_r5x
PRODUCT_MODEL := Realme 5 Series
SUPERIOR_BUILD_TYPE := UNOFFICIAL

PRODUCT_GMS_CLIENTID_BASE := android-realme

TARGET_VENDOR_PRODUCT_NAME := r5x
TARGET_VENDOR_DEVICE_NAME := r5x

# Build info
BUILD_FINGERPRINT := "google/raven/raven:12/SQ3A.220705.003/8671607:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="r5x" \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 release-keys"

# Gapps
SUPERIOR_EDITION := GAPPS
BUILD_WITH_GAPPS := true
