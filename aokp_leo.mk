# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for leo
$(call inherit-product, device/htc/leo/cm.mk)

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true
