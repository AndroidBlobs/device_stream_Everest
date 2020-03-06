# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Everest device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := stream
PRODUCT_DEVICE := Everest
PRODUCT_MANUFACTURER := stream
PRODUCT_NAME := lineage_Everest
PRODUCT_MODEL := S9

PRODUCT_GMS_CLIENTID_BASE := android-stream
TARGET_VENDOR := stream
TARGET_VENDOR_PRODUCT_NAME := Everest
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k50v1_64-user 8.1.0 O11019 1543055299 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := STREAM/Everest/Everest:8.1.0/O11019/1543055299:user/release-keys
