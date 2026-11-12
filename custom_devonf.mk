#
# Copyright (C) 2024 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/devonf/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_devonf
PRODUCT_DEVICE := devonf
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g73 5G 

# MistOS Flags
MISTOS_MAINTAINER := user@linux
MIST_BUILD_TYPE := OFFICIAL
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_NOW_PLAYING := true
# Lawnchair (Pixel Launcher by default)
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=devonf \
    BuildDesc="devonf_g_sys-user 14 U1TNS34.82-12-7-25 86c959-5b006d release-keys" \
    BuildFingerprint=motorola/devonf_g_sys/devonf:14/U1TNS34.82-12-7-25/86c959-5b006d:user/release-keys

-include vendor/lineage-priv/keys/keys.mk
