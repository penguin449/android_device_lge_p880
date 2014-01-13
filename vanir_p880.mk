#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-P880

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := p880

# This device has NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p880/p880.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := Optimus 4X HD

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p880
PRODUCT_NAME := vanir_p880
PRODUCT_BRAND := LG
PRODUCT_MODEL := LG-P880
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENOR_FILES := false

# Enable Torch
PRODUCT_PACKAGES += Torch

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=x3 BUILD_FINGERPRINT="lge/x3/p880:4.4/KRT16S/920375:user/release-keys" PRIVATE_BUILD_DESC="x3-user 4.4 KRT16S 920375 release-keys"
