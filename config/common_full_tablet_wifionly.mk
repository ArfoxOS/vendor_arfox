# Inherit mobile full common Lineage stuff
$(call inherit-product, vendor/arfox/config/common_mobile_full.mk)

# Inherit tablet common Lineage stuff
$(call inherit-product, vendor/arfox/config/tablet.mk)

$(call inherit-product, vendor/arfox/config/wifionly.mk)
