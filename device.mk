# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/j5ltechn/j5ltechn-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# NFC Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# NFC configuration
PRODUCT_COPY_FILES += \
    device/samsung/j5ltechn/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/samsung/j5ltechn/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/samsung/j5ltechn/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# NFC packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    libnfc-nci \
    NfcNci \
    Tag

ADDITIONAL_BUILD_PROPERTIES += \
    persist.radio.tdscdma_present=1

ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.radio.tdscdma_present=1 \
    persist.radio.multisim.config=dsds \
    ro.multisim.simslotcount=2

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/j5ltechn/overlay

# Inherit from j5-common
$(call inherit-product, device/samsung/j5-common/common.mk)
