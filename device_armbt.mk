#
# Copyright (C) 2014 The Android Open-Source Project
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

# Copy the 64-bit primary, 32-bit secondary zygote startup script
PRODUCT_COPY_FILES += \
external/ubt/ubt_a32a64_bridge:system/vendor/lib64/libubt_a32a64_bridge.so \
external/ubt/armv7-guest/data/.placeholder:system/vendor/armv7-guest/data/.placeholder \
external/ubt/armv7-guest/mnt/.placeholder:system/vendor/armv7-guest/mnt/.placeholder \
external/ubt/armv7-guest/proc/.placeholder:system/vendor/armv7-guest/proc/.placeholder \
external/ubt/armv7-guest/sys/.placeholder:system/vendor/armv7-guest/sys/.placeholder \
external/ubt/armv7-guest/dev/.placeholder:system/vendor/armv7-guest/dev/.placeholder \
external/ubt/armv7-guest/mediator:system/vendor/armv7-guest/mediator \
external/ubt/armv7-guest/system/bin/linker:system/vendor/armv7-guest/system/bin/linker \
external/ubt/armv7-guest/system/lib/libc.so:system/vendor/armv7-guest/system/lib/libc.so \
external/ubt/armv7-guest/system/lib/libc++.so:system/vendor/armv7-guest/system/lib/libc++.so \
external/ubt/armv7-guest/system/lib/libdl.so:system/vendor/armv7-guest/system/lib/libdl.so \
external/ubt/armv7-guest/system/lib/liblog.so:system/vendor/armv7-guest/system/lib/liblog.so \
external/ubt/armv7-guest/system/lib/libm.so:system/vendor/armv7-guest/system/lib/libm.so \
external/ubt/armv7-guest/system/lib/libstdc++.so:system/vendor/armv7-guest/system/lib/libstdc++.so \
external/ubt/armv7-guest/vpaths-list:system/vendor/armv7-guest/vpaths-list

# register ubt as native bridge 
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
ro.dalvik.vm.native.bridge=libubt_a32a64_bridge.so 

# Dirty hack: treat arm32 arch as 64-bit one 
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a,armeabi-v7a,armeabi

