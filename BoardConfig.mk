# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

# inherit common defines for all qsd8k devices
include device/htc/qsd8k-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := htcleo
TARGET_ARCH_VARIANT_CPU := scorpion
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_VFP := true

# Kernel
TARGET_PREBUILT_KERNEL := device/htc/leo/prebuilt/kernel
TARGET_KERNEL_SOURCE := kernel/htc/leo
TARGET_KERNEL_CONFIG := htcleo_defconfig

# FPU compilation flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

BOARD_KERNEL_CMDLINE := no_console_suspend=1 wire.search_count=5
BOARD_KERNEL_BASE := 0x11808000
BOARD_KERNEL_NEW_PPPOX := true

# Legacy
BOARD_USE_LEGACY_TRACKPAD := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x9C4B40
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 9999999999
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_FLASH_BLOCK_SIZE := 131072

# GPS
TARGET_QCOM_GPS_VARIANT :=
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := htcleo
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

# Ril
BOARD_USES_LEGACY_RIL := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# Recovery
TARGET_RECOVERY_FSTAB = device/htc/leo/ramdisk/fstab.htcleo
RECOVERY_FSTAB_VERSION := 2
