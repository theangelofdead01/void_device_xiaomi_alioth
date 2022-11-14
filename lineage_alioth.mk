#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := lineage_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

# maintainer flag (one word only/no spacing)
RICE_MAINTAINER := theangelofdead01
RICE_CHIPSET := Qualcomm®Snapdragon™870

# gapps build flag, if not defined build type is vanilla
WITH_GMS := true

# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 1080

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# AudioFx
TARGET_EXCLUDES_AUDIOFX := true

TARGET_OPTOUT_GOOGLE_TELEPHONY := true

TARGET_FACE_UNLOCK_SUPPORTED := true

TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_USE_PIXEL_FINGERPRINT := true

TARGET_SUPPORTS_GOOGLE_RECORDER := true

RICE_PACKAGE_TYPE := PIXEL

TARGET_BUILD_GRAPHENEOS_CAMERA := false
