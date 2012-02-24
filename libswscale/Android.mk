LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

#LOCAL_APP_ABI := $(APP_ABI)
LOCAL_ARM_MODE := arm


LOCAL_MODULE    := swscale

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)

LOCAL_CFLAGS += $(GLOBAL_CFLAGS)
LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DPIC
LOCAL_CFLAGS += -fvisibility=hidden

LOCAL_LDFLAGS += $(GLOBAL_LDFLAGS)
LOCAL_LDFLAGS += -lz -llog
# -lavcodec -lavutil
#LOCAL_LDFLAGS += -L$(NDK_APP_DST_DIR) -L$(TARGET_OUT)

LIBSWSCALE_SRC_FILES := \
		input.c \
		options.c \
		output.c \
		rgb2rgb.c \
		swscale.c \
		swscale_unscaled.c \
		utils.c \
		yuv2rgb.c \

#    swscale_unscaled.c \

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
  LOCAL_CFLAGS += -fPIC
endif


LOCAL_SRC_FILES := $(LIBSWSCALE_SRC_FILES)

LOCAL_SHARED_LIBRARIES := avcodec avutil

include $(BUILD_SHARED_LIBRARY)
