#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    init.qcom.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.usb.sh \
    init.qti.chg_policy.sh \
    init.crda.sh \
    init.mdm.sh \
    init.qcom.sensors.sh \
    qca6234-service.sh \
    init.veth_ipa_config.sh \
    init.qcom.class_core.sh \
    init.qcom.sdio.sh \
    install-recovery.sh \
    init.qti.qcv.sh \
    init.oppo.face.sh \
    init.oppo.fingerprints.sh \
    init.qti.usb.debug.sh \
    init.qcom.coex.sh \
    init.qcom.post_boot.sh \
    init.class_main.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.oppo.fingerprints.rc \
    init.oppo.product.rc \
    init.qcom.legacy.rc \
    init.target.rc \
    init.oppo.face.rc \
    init.qcom.usb.rc \
    init.oppo.reserve.rc \
    init.msm.usb.configfs.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/realme/r5x/r5x-vendor.mk)
