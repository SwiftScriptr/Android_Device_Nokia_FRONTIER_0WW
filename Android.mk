```makefile
# Replace ${_CODENAME_} with your Device CodeName's Value. Mine is Primo_RX5.
# Replace ${_VENDORNAME_} with your Brand/Vendor/Manufacturer's Value, Mine is WALTON 
  
ifneq ($(filter Frontier_0WW,$(TARGET_DEVICE)),)
LOCAL_PATH := device/Nokia/Frontier_0WW
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
```
