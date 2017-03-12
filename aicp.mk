$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/vernee/apollo_lite/device.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)


# Release name
PRODUCT_RELEASE_NAME := apollo_lite

PRODUCT_DEVICE := apollo_lite
PRODUCT_NAME := aicp_apollo_lite
PRODUCT_BRAND := Vernee
PRODUCT_MODEL := Apollo_Lite
PRODUCT_MANUFACTURER := Vernee
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 1920
TARGET_SCREEN_WIDTH       := 1080
TARGET_BOOTANIMATION_NAME := 1080
-include vendor/aicp/configs/bootanimation.mk

