#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FORCE_32_BIT := true
BLOCK_BASED_OTA := false
TW_INCLUDE_CRYPTO := true

# Video
TARGET_HAVE_SIGNED_VENUS_FW := true

# Rom Tool Chain
TARGET_GCC_VERSION_EXP := 4.9

# Kernel Tool Chain
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
BOARD_KERNEL_IMAGE_NAME := zImage

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
TARGET_QCOM_NO_FM_FIRMWARE := true

-include device/cyanogen/msm8916-common/BoardConfigCommon.mk

include device/wingtech/wt86518/board/*.mk

TARGET_BOARD_INFO_FILE := device/wingtech/wt86518/board-info.txt

# inherit from the proprietary version
-include vendor/google/seed/BoardConfigVendor.mk
