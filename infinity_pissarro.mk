#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/pissarro/device.mk)

# Inherit some common infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

#Infinity UNOFFICIAL
INFINITY_BUILD_TYPE := UNOFFICIAL

PRODUCT_NAME := infinity_pissarro
PRODUCT_DEVICE := pissarro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11 Pro+ 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pissarro-user 13 TP1A.220624.014 V816.0.2.0.TKTMIXM release-keys"

BUILD_FINGERPRINT := Redmi/pissarro/pissarro:12/SP1A.210812.016/V816.0.2.0.TKTMIXM:user/release-keys
