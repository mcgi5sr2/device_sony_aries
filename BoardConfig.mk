# Copyright 2014 The Android Open Source Project
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

# Device path
DEVICE_PATH := device/sony/z3c

include device/sony/shinano-common/PlatformConfig.mk
include device/sony/shinano-common/PlatformConfig2.mk

TARGET_BOOTLOADER_BOARD_NAME := D5803

#Reserve space for data encryption (12656259072-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656242688

BOARD_KERNEL_CMDLINE += androidboot.hardware=aries

PRODUCT_VENDOR_KERNEL_HEADERS += $(DEVICE_PATH)/kernel-headers

TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"
BOARD_HARDWARE_CLASS += device/sony/z3c/cmhw
TARGET_OTA_ASSERT_DEVICE := D5803,D5833,z3c,aries
