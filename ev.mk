# Inherit GSM configuration
$(call inherit-product, vendor/ev/config/gsm.mk)
# Inherit Omni Product configuration
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_small_phone.mk)
# Inherit Leo Product configuration
$(call inherit-product, device/htc/leo/full_leo.mk)

PRODUCT_NAME := ev_leo
PRODUCT_DEVICE := leo

BOOT_ANIMATION_SIZE := wvga
