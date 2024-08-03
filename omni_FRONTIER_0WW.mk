```makefile
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
  
# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
  
# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace ${_CODENAME_} with your Device Name's Value.
# Replace ${_VENDORNAME_} with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/Nokia/FRONTIER_0WW/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := FRT
PRODUCT_NAME := omni_FRONTIER_0WW
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Frontier_00WW
PRODUCT_MANUFACTURER := Nokia

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
  
# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Nokia/Frontier_00WW/FRT:10/QP1A.190711.020/00WW_3_11D:user/release-keys" \
```