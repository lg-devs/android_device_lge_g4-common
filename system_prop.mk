#
# System Properties for G4
#

# MTP and USB-OTG
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \



# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.24bit.enable=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=false \
    audio.offload.multiple.enabled=false \
    audio.offload.pcm.enable=true \
    media.aac_51_output_enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    av.offload.enable=false \
    av.streaming.offload.enable=false

PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.fluencetype=fluence

PRODUCT_PROPERTY_OVERRIDES += \
    use.voice.path.for.pcm.voip=true
# Display
#
# OpenGLES:
# 196608 is decimal for 0x30000 to report major/minor versions as 3/0
# 196609 is decimal for 0x30001 to report major/minor versions as 3/1
# Set to 3.0 (even though the blobs support 3.1) to maintain compatibility
# with third party applications that do not support 3.1
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=640

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.services.location \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0

# NITZ
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    ro.qualcomm.cabl=0 \
    ro.vendor.extension_library=libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.ril_class=LgeLteRIL \

PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=false \
    ro.use_data_netmgrd=true

# Recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/boot,/firmware,/persist

# Sensor debugging
# Valid settings (and presumably what they mean):
#   0      - off
#   1      - all the things
#   V or v - verbose
#   D or d - debug
#   E or e - errors
#   W or w - warnings
#   I or i - info
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.sensors.hal=e \
    debug.qualcomm.sns.daemon=e \
    debug.qualcomm.sns.hal=e \
    debug.qualcomm.sns.libsensor1=e

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true
