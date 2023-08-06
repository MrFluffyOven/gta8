#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gta8 device
$(call inherit-product, device/samsung/gta8/device.mk)

PRODUCT_DEVICE := gta8
PRODUCT_NAME := twrp_gta8
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X205
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta8xx-user 11 RP1A.200720.012 X205XXS3CWG1 release-keys"

BUILD_FINGERPRINT := samsung/gta8xx/gta8:11/RP1A.200720.012/X205XXS3CWG1:user/release-keys
