#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common ProjectBlaze stuff
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Face unlock flag
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps flag
TARGET_GAPPS_ARCH := arm64

# Unofficial flag
BLAZE_MAINTAINER := Tiktodz
BLAZE_BUILD_TYPE := UNOFFICIAL

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := blaze_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="raven-user 12 S3B1.220218.004 8242181 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/raven/raven:12/S3B1.220218.004/8242181:user/release-keys"
