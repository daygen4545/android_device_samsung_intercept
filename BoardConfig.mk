#Audio
BOARD_USES_GENERIC_AUDIO := false

# Platform
TARGET_BOARD_PLATFORM := s3c6410
TARGET_BOOTLOADER_BOARD_NAME := intercept
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BT_USE_BTL_IF := true
BT_ALT_STACK := true
BRCM_BTL_INCLUDE_A2DP := true
BRCM_BT_USE_BTL_IF := true

# Camera
USE_CAMERA_STUB := true
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/intercept/releasetools/intercept_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/intercept/releasetools/intercept_img_from_target_files

# WIFI defines
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/libmodules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram_net.txt"

# GPS
BOARD_GPS_LIBRARIES := libsecgps libsecril-client
BOARD_USES_GPSSHIM := true
