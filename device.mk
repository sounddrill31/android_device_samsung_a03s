LOCAL_PATH := device/samsung/a03s

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Properties
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a03s/a03s-vendor.mk)
