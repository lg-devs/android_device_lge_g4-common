#
# System Properties for G4
#

# MTP and USB-OTG
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.sys.isUsbOtgEnabled=true

# Camera
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1

# Camera add additional i/p buffer in case of encoder DCVS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.enc.dcvs.extra-buff-count=2

#Audio   
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    audio.offload.multiple.enabled=false \
    audio.offload.pcm.16bit.enable=false \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.pcm.enable=true \
    av.offload.enable=false \
    av.streaming.offload.enable=false \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true \
    ro.qc.sdk.audio.fluencetype=fluence \
    ro.qc.sdk.audio.ssr=false \
    tunnel.audio.encode=false \
    use.voice.path.for.pcm.voip=false
    
# Media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=3314291 \
    mm.enable.smoothstreaming=true \
    media.aac_51_output_enabled=true \
    qcom.hw.aac.encoder=true
    

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
    ro.sf.lcd_density=560

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
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.add_power_save=1 

PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=false \
    ro.use_data_netmgrd=true

# Recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/boot,/firmware,/mpt,/persist,/persist-lg,/sns

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
