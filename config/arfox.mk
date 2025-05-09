# BtHelper
PRODUCT_PACKAGES += \
    BtHelper

# Clocks (SystemUI)
PRODUCT_PACKAGES += \
    SystemUIClocks-BigNum \
    SystemUIClocks-Calligraphy \
    SystemUIClocks-Flex \
    SystemUIClocks-Growth \
    SystemUIClocks-Inflate \
    SystemUIClocks-Metro \
    SystemUIClocks-NumOverlap \
    SystemUIClocks-Weather

# Cloned app exemption
PRODUCT_COPY_FILES += \
    vendor/arfox/prebuilt/common/etc/sysconfig/preinstalled-packages-platform-arfox-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-platform-arfox-product.xml

# ColumbusService
ifeq ($(TARGET_SUPPORTS_QUICK_TAP),true)
PRODUCT_PACKAGES += \
    ColumbusService
endif

# DeviceAsWebcam
ifeq ($(TARGET_BUILD_DEVICE_AS_WEBCAM), true)
    PRODUCT_PACKAGES += \
        DeviceAsWebcam

    PRODUCT_VENDOR_PROPERTIES += \
        ro.usb.uvc.enabled=true
endif

# Disable async MTE on a few processes
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.arm64.memtag.app.com.android.se=off \
    persist.arm64.memtag.app.com.google.android.bluetooth=off \
    persist.arm64.memtag.app.com.android.nfc=off \
    persist.arm64.memtag.process.system_server=off

# Enable blur
ifeq ($(TARGET_ENABLE_BLUR),true)
PRODUCT_SYSTEM_PROPERTIES += \
    ro.custom.blur.enable=true
endif

# Extra packages
PRODUCT_PACKAGES += \
    BatteryStatsViewer

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED ?= $(TARGET_SUPPORTS_64_BIT_APPS)
ifeq ($(TARGET_FACE_UNLOCK_SUPPORTED),true)
PRODUCT_PACKAGES += \
    ParanoidSense
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.face.sense_service=true
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml
endif

# Fonts
include vendor/arfox/fonts/fonts.mk

# GameSpace
PRODUCT_PACKAGES += \
    GameSpace

# Themed icons for Pixel Launcher
$(call inherit-product, vendor/google/overlays/ThemeIcons/config.mk)

# Themed Overlays
$(call inherit-product, vendor/arfox/themes/themes.mk)
