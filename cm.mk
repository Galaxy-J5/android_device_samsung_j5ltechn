$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/j5ltechn/full_j5ltechn.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=j5ltezm TARGET_DEVICE=j5ltechn

PRODUCT_NAME := cm_j5ltechn
