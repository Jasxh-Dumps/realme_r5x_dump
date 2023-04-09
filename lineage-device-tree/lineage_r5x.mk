#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from r5x device
$(call inherit-product, device/realme/r5x/device.mk)

PRODUCT_DEVICE := r5x
PRODUCT_NAME := lineage_r5x
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 5 Series
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 release-keys"

BUILD_FINGERPRINT := Realme/p404_r5x/r5x:13/TKQ1.230127.002/test04072246:userdebug/test-keys
