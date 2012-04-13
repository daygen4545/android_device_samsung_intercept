PRODUCT_PACKAGE_OVERLAYS := device/samsung/intercept/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

#mms
PRODUCT_COPY_FILES += \
        vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

#HWlibs
PRODUCT_PACKAGES += \
	sensors.intercept \
	copybit.intercept \
	gps.intercept \
	gralloc.intercept \
	libGLES_fimg \
   	libs3cjpeg \
   	libcamera \
	bdaddr_read \
	libsecgps.so \
	

#Hardware Libraries
PRODUCT_COPY_FILES += \
	vendor/jhonka/system/lib/hw/lights.intercept.so:system/lib/hw/lights.intercept.so

#KeyMappings
PRODUCT_COPY_FILES += \
	vendor/jhonka/system/usr/keychars/melfas_ts_input.kcm.bin:system/usr/keychars/melfas_ts_input.kcm.bin \
	vendor/jhonka/system/usr/keychars/optjoy_device.kcm.bin:system/usr/keychars/optjoy_device.kcm.bin \
	vendor/jhonka/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
	vendor/jhonka/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
	vendor/jhonka/system/usr/keychars/s3c-keypad-rev0050.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin

#KeyLayouts
PRODUCT_COPY_FILES += \
	vendor/jhonka/system/usr/keylayout/melfas_ts_input.kl:system/usr/keylayout/melfas_ts_input.kl \
	vendor/jhonka/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	vendor/jhonka/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	vendor/jhonka/system/usr/keylayout/sec_headset.kl:system/usr/keylayout/sec_headset.kl \
	vendor/jhonka/system/usr/keylayout/s3c-keypad-rev0050.kl:system/usr/keylayout/s3c-keypad-rev0050.kl

#RIL fix
PRODUCT_COPY_FILES += \
	vendor/jhonka/system/lib/libril.so:/system/lib/libril.so \
	vendor/jhonka/system/lib/libs3c2drender.so:/system/lib/libs3c2drender.so \
	vendor/jhonka/system/lib/libsec-ril40.so:/system/lib/libsec-ril40.so \
	vendor/jhonka/system/lib/libsecril-client.so:/system/lib/libsecril-client.so \
	vendor/jhonka/system/etc/ppp/chap-secrets:/system/etc/ppp/chap-secrets \
	vendor/jhonka/system/etc/ppp/ip-down:/system/etc/ppp/ip-down \
	vendor/jhonka/system/etc/ppp/ip-down-ppp0:/system/etc/ppp/ip-down-ppp0 \
	vendor/jhonka/system/etc/ppp/ip-up:/system/etc/ppp/ip-up \
	vendor/jhonka/system/etc/ppp/ip-up-ppp0:/system/etc/ppp/ip-up-ppp0 \
	vendor/jhonka/system/etc/ppp/ip-up-vpn:/system/etc/ppp/ip-up-vpn \
	vendor/jhonka/system/etc/ppp/options:/system/etc/ppp/options \
	vendor/jhonka/system/etc/ppp/pap-secrets:/system/etc/ppp/pap-secrets \
	vendor/jhonka/system/bin/pppd_runner:system/bin/pppd_runner \
	vendor/jhonka/system/bin/rild:system/bin/rild \
	vendor/jhonka/system/etc/init.gprs-pppd:system/etc/init.gprs-pppd

# Wifi Drivers
PRODUCT_COPY_FILES += \
    device/samsung/intercept/prebuilt/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/intercept/prebuilt/wifi/libwlandut.so:system/lib/libwlandut.so \
    device/samsung/intercept/prebuilt/wifi/libwlservice.so:system/lib/libwlservice.so \
    device/samsung/intercept/prebuilt/wifi/libwpa_client.so:system/lib/libwpa_client.so \
    device/samsung/intercept/prebuilt/wifi/wlservice:system/bin/wlservice \
    device/samsung/intercept/prebuilt/wifi/wpa_supplicant:system/bin/wpa_supplicant \
    device/samsung/intercept/prebuilt/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    device/samsung/intercept/prebuilt/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/intercept/prebuilt/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin 

#Misc
PRODUCT_COPY_FILES += \
    device/samsung/intercept/prebuilt/vold/vold.fstab:system/etc/vold.fstab \
    device/samsung/intercept/prebuilt/vold/vold:system/bin/vold \
    device/samsung/intercept/prebuilt/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/samsung/intercept/prebuilt/audio/asound.conf:system/etc/asound.conf 

#Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/intercept/prebuilt/bluetooth/BCM4329B1_002.002.023.0417.0448.hcd:system/bin/BCM4329B1_002.002.023.0417.0448.hcd 
# Telephony property for CDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=15 \
    ro.telephony.default_network=4 \
    ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    net.cdma.pppd.authtype=require-pap \
    net.cdma.pppd.user=user[SPACE]SprintNextel \
    net.cdma.datalinkinterface=/dev/ttyCDMA0 \
    net.interfaces.defaultroute=cdma \
    mobiledata.interfaces=eth0,gprs,ppp0 \
    net.connectivity.type=CDMA1 \
    ro.telephony.ril_class=samsung \
    ro.ril.samsung_cdma=true

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=eth0 \
       wifi.supplicant_scan_interval=120 \
       dalvik.vm.heapsize=32m \
       dalvik.vm.dexopt-data-only=1 \
       ro.opengles.version=65537

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false


# Kernel
LOCAL_KERNEL := device/samsung/intercept/kernel.bin
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# kernel modules
PRODUCT_COPY_FILES += $(foreach module,\
   $(wildcard device/samsung/intercept/*.ko),\
   $(module):system/libmodules/$(notdir $(module)))

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/intercept/intercept-vendor.mk)
