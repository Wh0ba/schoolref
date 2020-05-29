
TARGET = ::11.0
include $(THEOS)/makefiles/common.mk

ARCHS = arm64
THEOS_DEVICE_IP = 192.168.0.222

APPLICATION_NAME = schoolref
$(APPLICATION_NAME)_FILES = $(wildcard *.swift)
$(APPLICATION_NAME)_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

# package::
# 	packages/dab

after-install::
	install.exec "killall \"schoolref\"" || true
