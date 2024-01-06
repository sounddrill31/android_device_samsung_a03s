DEVICE_PATH := device/samsung/a03s

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a03s
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 300

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := console=tty0 console=ttyS0,921600n1 vmalloc=400M page_owner=on swiotlb=noforce androidboot.hardware=mt6765 maxcpus=8 loop.max_part=7 firmware_class.path=/vendor/firmware has_battery_removed=0 ramoops.mem_address=0x47c90000 ramoops.mem_size=0xe0000 ramoops.pmsg_size=0x10000 ramoops.console_size=0x40000 androidboot.boot_devices=bootdevice,soc/11230000.mmc,11230000.mmc lcm_panel=jd9365t_hdplus1600_dsi_vdo_hlt_boe_6mask_SwId:0x22 bootopt=64S3,32N2,64N2 loop.max_part=7 root=/dev/ram  androidboot.verifiedbootstate=orange androidboot.atm=disabled androidboot.meta_log_disable=0 androidboot.dram_info=00,00,00,4G androidboot.ddr_size=4096MB softdog.soft_margin=100 softdog.soft_panic=1 sec_debug=0 sec_watchdog.sec_pet=5 androidboot.debug_level=0x4f4c androidboot.odin_download=2 androidboot.bootloader=A037FXXU4CWI1 sec_debug.reset_rwc=0 sec_debug.reset_reason=7 androidboot.sn.param.offset=3147696 androidboot.im.param.offset=3147536 androidboot.me.param.offset=3147616 androidboot.pr.param.offset=3147776 androidboot.sku.param.offset=3147856 androidboot.prototype_offset=3148544 androidboot.sales.param.offset=3146268 androidboot.sales_code=XID androidboot.carrierid.param.offset=3146304 androidboot.carrierid=XID androidboot.fmm_lock=0 sec_debug.fmm_lock_offset=3146356 mtk_printk_ctrl.disable_uart=1 gpt=1 usb2jtag_mode=0 androidboot.dtb_idx=0 androidboot.dtbo_idx=0 androidboot.em.model=SM-A037F androidboot.em.status=0x0  androidboot.sb.debug0=0x0  androidboot.rp=4  androidboot.svb.ver=SVB1.0  androidboot.ulcnt=2 androidboot.wb.hs=304  androidboot.wb.snapQB= androidboot.pcbainfo=G_26AA_MP
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11a88000
BOARD_KERNEL_TAGS_OFFSET := 0x07808000
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := a03s_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a03s

# Kernel - prebuilt 

## If the kernel source not exist, then using prebuilt kernel
ifeq ($(wildcard kernel/samsung/a03s/Makefile),)
    TARGET_FORCE_PREBUILT_KERNEL := true
endif

ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_KERNEL_SEPARATED_DTBO := 
endif

# OTA assert
TARGET_OTA_ASSERT_DEVICE := a03s

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE      := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE    := ext4

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Partitions size ( SIZE * 64 )
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system product odm vendor
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6050664448

BOARD_SUPER_PARTITION_SIZE := 6106906624
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 38797312
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3229261824
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 2432057344
BOARD_ODMIMAGE_PARTITION_SIZE := 4349952
BOARD_VENDORIMAGE_PARTITION_SIZE := 384995328
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM := system
TARGET_COPY_OUT_ODM := odm

# Platform
TARGET_BOARD_PLATFORM := mt6765
ifeq ($(wildcard vendor/samsung/a03s/a03s-samsung.mk),)
    BUILD_WITHOUT_VENDOR := true
endif

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/vintf/manifest.xml
# DEVICE_MATRIX_FILE += $(DEVICE_PATH)/configs/vintf/compatibility_matrix.xml

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Recovery 
ifneq ($(TARGET),recovery)
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
endif

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 180
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_USE_TOOLBOX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
## DISABLE FOR NOW (SEEMS BROKEN!)
# TW_INCLUDE_CRYPTO := true

TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_INITRC := \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.samsung.rc

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/vendor.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/configs/system.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/configs/product.prop
