#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
TARGET_IS_VAB := true

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/camera_cnf.txt:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_cnf.txt
    
# Gapps
$(call inherit-product-if-exists, vendor/gapps/config.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-evolution \
    $(LOCAL_PATH)/overlay-lineage

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Shims
PRODUCT_PACKAGES += \
    lib-watermarkshim

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/alioth/alioth-vendor.mk)
