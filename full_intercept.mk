# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/samsung/intercept/intercept.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Screen density is actually considered a locale (since it is taken into account
# the the build-time selection of resources). The product definitions including
# this file must pay attention to the fact that the first entry in the final
# PRODUCT_LOCALES expansion must not be a density.
PRODUCT_LOCALES += mdpi

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_intercept
PRODUCT_DEVICE := intercept
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := intercept
