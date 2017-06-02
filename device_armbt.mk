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
PRODUCT_COPY_FILES += external/ubt/ubt_a32a64_bridge:system/vendor/lib64/libubt_a32a64_bridge.so

# register ubt as native bridge 
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
ro.dalvik.vm.native.bridge=libubt_a32a64_bridge.so 

# Dirty hack: treat arm32 arch as 64-bit one 
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a,armeabi-v7a,armeabi
