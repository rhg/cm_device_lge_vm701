# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qt602240_ts_input.kl:system/usr/keylayout/qt602240_ts_input.kl \
    $(LOCAL_PATH)/configs/gelato_keypad.kl:system/usr/keylayout/gelato_keypad.kl \
    $(LOCAL_PATH)/configs/gelato_keypad.kcm.bin:system/usr/keychars/gelato_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/synaptics-rmi-ts.idc:system/usr/idc/synaptics-rmi-ts.idc \

# p690 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.p690.rc:root/init.p690.rc \
    $(LOCAL_PATH)/ueventd.p690.rc:root/ueventd.p690.rc

# P690 bluetooth vendor configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Wi-Fi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Inherit products
$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product, vendor/lge/p690/p690-vendor.mk)
$(call inherit-product, vendor/lge/msm7x27-common/msm7x27-common-vendor-blobs.mk)

# Overrides
PRODUCT_NAME := p690
PRODUCT_DEVICE := p690
PRODUCT_MODEL := LG-P690
PRODUCT_MANUFACTURER := LGE

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
$(call inherit-product, device/mdpi-common/mdpi.mk)

# P500 overlays (Most specific last)
DEVICE_PACKAGE_OVERLAYS += device/lge/p690/overlay
