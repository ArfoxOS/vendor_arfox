# Cloned app exemption
PRODUCT_COPY_FILES += \
    vendor/arfox/prebuilt/common/etc/sysconfig/preinstalled-packages-platform-arfox-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-platform-arfox-product.xml

# Fonts
include vendor/arfox/fonts/fonts.mk
