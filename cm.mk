# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP Aries device parts
$(call inherit-product, device/sony/honami/aosp_d5803.mk)

# Inherit CM Shinano device parts
$(call inherit-product, device/sony/shinano/platform2.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Fingerprint for aries (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5803/D5803:5.1.1/23.4.A.0.546/864948651:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5803-user 5.1.1 23.4.A.0.546 864948651 release-keys"

# Override Product Name for crDroid
PRODUCT_NAME := cm_z3c
PRODUCT_MODEL := Xperia Z3c
