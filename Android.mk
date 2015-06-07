#
# Copyright 2015 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter g4 f500 h810 h811 h815 h818, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

DXHDCP2_IMAGES := \
    dxhdcp2.b00 dxhdcp2.b01 dxhdcp2.b02 dxhdcp2.b03 dxhdcp2.mdt

DXHDCP2_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(DXHDCP2_IMAGES))
$(DXHDCP2_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DxHDCP2 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DXHDCP2_SYMLINKS)

KEYMASTER_IMAGES := \
    keymaster.b00 keymaster.b01 keymaster.b02 keymaster.b03 keymaster.mdt

KEYMASTER_SYMLINKS :=$(addprefix $(TARGET_OUT_ETC)/firmware/,$(KEYMASTER_IMAGES))
$(KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Keymaster firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KEYMASTER_SYMLINKS)

MLSERVER_IMAGES := \
    mlserver.b00 mlserver.b01 mlserver.b02 mlserver.b03 mlserver.mdt

MLSERVER_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(MLSERVER_IMAGES))
$(MLSERVER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "mlserver firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MLSERVERAPP_SYMLINKS)

SECUREKS_IMAGES := \
    secureks.b00 secureks.b01 secureks.b02 secureks.b03 secureks.mdt

SECUREKS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(SECUREKS_IMAGES))
$(SECUREKS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "secureks firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SECUREKS_SYMLINKS)

SECUREMM_IMAGES := \
    secureks.b00 secureks.b01 secureks.b02 secureks.b03 secureks.mdt

SECUREMM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(SECUREMM_IMAGES))
$(SECUREMM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "securemm firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SECUREMM_SYMLINKS)

WCD9320_IMAGES := \
    wcd9320_anc.bin wcd9320_mad_audio.bin wcd9320_mbhc.bin

WCD9320_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/wcd9320/,$(WCD9320_IMAGES))
$(WCD9320_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "wcd9320 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	tf=$(notdir $@); if [ "$$tf" = "wcd9320_mbhc.bin" ]; then tf="mbhc.bin"; fi; ln -sf /data/misc/audio/$$tf $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCD9320_SYMLINKS)

WIDEVINE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt

WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(WIDEVINE_IMAGES))
$(WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Widevine firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIDEVINE_SYMLINKS)

endif
