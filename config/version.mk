ARFOX_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)

ARFOX_PLATFORM_VERSION := 15.0

ARFOX_DISPLAY_VERSION := 2.0

ARFOX_BUILD_TYPE ?= UNOFFICIAL

ARFOX_VERSION := ArfoxOS_$(ARFOX_BUILD)-$(ARFOX_DISPLAY_VERSION)-$(ARFOX_BUILD_TYPE)-$(ARFOX_BUILD_DATE)

# PixelOS Platform Version
PRODUCT_PRODUCT_PROPERTIES += \
    ro.arfox.build.date=$(BUILD_DATE) \
    ro.arfox.device=$(ARFOX_BUILD) \
    ro.arfox.fingerprint=$(ROM_FINGERPRINT) \
    ro.arfox.version=$(ARFOX_VERSION) \
    ro.arfox.display.version=$(ARFOX_DISPLAY_VERSION) \
    ro.arfox.releasetype=$(ARFOX_BUILD_TYPE) \

# Only include Updater for official  build
ifeq ($(filter-out OFFICIAL,$(ARFOX_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updater

PRODUCT_COPY_FILES += \
    vendor/arfox/prebuilt/common/etc/init/init.arfox-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.arfox-updater.rc
endif
