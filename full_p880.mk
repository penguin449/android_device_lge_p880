$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/lge/p880/p880.mk)

$(call inherit-product-if-exists, vendor/lge/p880/p880-vendor.mk)
