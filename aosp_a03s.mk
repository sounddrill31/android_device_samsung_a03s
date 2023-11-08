DEVICE_PATH := device/samsung/a03s

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk) 

# pKVM
$(call inherit-product, packages/modules/Virtualization/apex/product_packages.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from a03s device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 1080



PRODUCT_DEVICE := a03s
PRODUCT_NAME := aosp_a03s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A037F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a03snnxx-user 12 SP1A.210812.016 A037FXXU4CWG6 release-keys"

BUILD_FINGERPRINT := samsung/a03snnxx/a03s:12/SP1A.210812.016/A037FXXU4CWG6:user/release-keys
