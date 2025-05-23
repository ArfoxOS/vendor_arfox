# Flavour

include vendor/flavour/gms/arm64/arm64-vendor.mk
include vendor/flavour/vanilla/vanilla.mk
include vendor/flavour/microg/product.mk

PRODUCT_PACKAGES += \
    SettingsIntelligence \
    Seedvault \
    SetupWizard \
    ThemePicker \
    WallpaperPicker2 \
    Launcher3QuickStep \
    Glimpse

PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep
