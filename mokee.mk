# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from klimtlte device
$(call inherit-product, device/samsung/klimtlte/device.mk)

PRODUCT_BRAND := samsung

# Inherit some common MoKee stuff.
$(call inherit-product, vendor/mk/config/common_full_tablet_wifionly.mk)

# Inherit more LineageOS stuff.
$(call inherit-product, vendor/mk/config/telephony.mk)

PRODUCT_NAME := mk_klimtlte
PRODUCT_DEVICE := klimtlte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T705 \
    PRODUCT_NAME=klimtlte \
    PRODUCT_DEVICE=klimtlte \
    TARGET_DEVICE=klimtlte


BUILD_FINGERPRINT=samsung/klimtlte/klimtlte:6.0.1/MMB29K/T705XXU1CQB1:user/release-keys
