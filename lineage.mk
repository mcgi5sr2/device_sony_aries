# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP Shinano device parts
$(call inherit-product, device/sony/z3c/aosp_d5803.mk)

# Inherit Lineage Shinano device parts
$(call inherit-product, device/sony/shinano-common/platform2.mk)

# Inherit Lineage common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Dalvik
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-hwui-memory.mk)

# Fingerprint for aries (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5803/D5803:5.1.1/23.4.A.0.546/864948651:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5803-user 5.1.1 23.4.A.0.546 864948651 release-keys"

# Override Product Name for LineageOS
PRODUCT_DEVICE := z3c
PRODUCT_NAME := lineage_z3c
PRODUCT_MODEL := Xperia Z3c
TARGET_VENDOR_DEVICE_NAME := aries
