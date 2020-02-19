THEOS_DEVICE_IP = 192.168.1.123

ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = UsaaMobile

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = USAABP

USAABP_FILES = Tweak.x
USAABP_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
