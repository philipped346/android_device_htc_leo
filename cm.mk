# Pull all dictionaries (This makes sure it gets called)
TARGET_USE_KEYBOARD := international

# Call this first so apn list is actually copied
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for leo.
$(call inherit-product, device/htc/leo/device_leo.mk)

# Inherit some common evervolv stuff.
# $(call inherit-product, vendor/aokp/configs/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_MODEL := HTC HD2
PRODUCT_MANUFACTURER := HTC
PRODUCT_BRAND := htc
PRODUCT_DEVICE := leo
PRODUCT_NAME := aokp_leo
