# Device-specific configurations for Samsung MediaTek P35 devices

# Specify the target product name
PRODUCT_MAKEFILES := $(LOCAL_DIR)/device.mk

# Specify the device architecture
TARGET_ARCH := arm64

# Specify the device's CPU variant
TARGET_CPU_VARIANT := cortex-a53

# Specify the device's CPU architecture version
TARGET_CPU_ABI := arm64-v8a

# Specify the device's RAM size
TARGET_LOW_MEMORY := true

# Enable hardware acceleration
USE_OPENGL_RENDERER := true

# Set the screen density for the device
PRODUCT_DENSITY := xxhdpi

# Specify the device's board name
PRODUCT_BOARD := mediatek_p35

# Set the device's default screen width and height
PRODUCT_DEFAULT_SCREEN_WIDTH := 720
PRODUCT_DEFAULT_SCREEN_HEIGHT := 1600

# Specify the device's vendor partition size
PRODUCT_PARTITION_SIZE := 16G

# Specify the device's system partition size
PRODUCT_SYSTEM_SIZE := 4G

# Enable or disable certain features or options
# Uncomment the following lines if needed
# FEATURE_1 := true
# FEATURE_2 := false

