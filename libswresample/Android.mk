LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_APP_ABI += armeabi-v7a
LOCAL_ARM_MODE := arm
LOCAL_MODULE    := swresample_neon
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)
LOCAL_CFLAGS += $(GLOBAL_CFLAGS)
LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DPIC
LOCAL_CFLAGS += -DHAVE_NEON=1 -fPIC -fvisibility=hidden
LOCAL_SRC_FILES += arm/audio_convert_neon.S
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_SRC_FILES := $(LOCAL_SRC_FILES:%=%.neon)
endif
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

#LOCAL_APP_ABI := $(APP_ABI)
LOCAL_ARM_MODE := arm

LOCAL_MODULE    := swresample

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)

LOCAL_CFLAGS += $(GLOBAL_CFLAGS)
LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DPIC
LOCAL_CFLAGS += -fvisibility=hidden

LOCAL_LDFLAGS += $(GLOBAL_LDFLAGS)
LOCAL_LDFLAGS += -lz -llog
# -lavcodec -lavutil
#LOCAL_LDFLAGS += -L$(NDK_APP_DST_DIR) -L$(TARGET_OUT)

LIBSWRESAMPLE_SRC_FILES := \
		arm/audio_convert_init.c \
		audioconvert.c \
		dither.c \
		rematrix.c \
		resample.c \
		swresample.c \


ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
  LOCAL_CFLAGS += -fPIC
endif


LOCAL_SRC_FILES := $(LIBSWRESAMPLE_SRC_FILES)

LOCAL_SHARED_LIBRARIES := avcodec avutil
LOCAL_STATIC_LIBRARIES := swresample_neon

include $(BUILD_SHARED_LIBRARY)
