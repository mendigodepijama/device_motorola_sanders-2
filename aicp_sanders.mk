#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from potter device
$(call inherit-product, device/motorola/sanders/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sanders
PRODUCT_NAME := aicp_sanders
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto G5S Plus" \
    PRIVATE_BUILD_DESC="sanders-user 8.1.0 OPS28.65-36 9fea release-keys"

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
DEVICE_MAINTAINERS="Lucas Ponez (Pintoslp)"

# for specific
$(call inherit-product, vendor/motorola/sanders/sanders-vendor.mk)

# FINGERPRINT
BUILD_FINGERPRINT := google/walleye/walleye:9/PPP3.180510.008/4811556:user/release-keys
VENDOR_BUILD_FINGERPRINT := google/walleye/walleye:9/PPP3.180510.008/4811556:user/release-keys
