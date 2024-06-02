LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES += spidev_test.c
LOCAL_MODULE := spidev_test
LOCAL_CFLAGS += -Wno-unused-parameter
LOCAL_LDFLAGS += -L$(LOCAL_PATH)
LOCAL_LDLIBS := -llog
include $(BUILD_EXECUTABLE)