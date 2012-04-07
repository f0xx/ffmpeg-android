LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

#LOCAL_APP_ABI += $(APP_ABI)
LOCAL_ARM_MODE += arm

LOCAL_MODULE    := avutil

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)

LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DPIC
LOCAL_CFLAGS += $(GLOBAL_CFLAGS)

LOCAL_LDFLAGS += $(GLOBAL_LDFLAGS)
#LOCAL_LDFLAGS += -L$(NDK_APP_DST_DIR) -L$(TARGET_OUT)
LOCAL_LDFLAGS := -lz -llog


LIBAVUTIL_SRC_FILES := \
		adler32.c \
		aes.c \
		audioconvert.c \
		avstring.c \
		base64.c \
		cpu.c \
		crc.c \
		des.c \
		dict.c \
		error.c \
		eval.c \
		fifo.c \
		file.c \
		imgutils.c \
		integer.c \
		intfloat_readwrite.c \
		inverse.c \
		lfg.c \
		lls.c \
		log.c \
		lzo.c \
		mathematics.c \
		md5.c \
		mem.c \
		opt.c \
		parseutils.c \
		pca.c \
		pixdesc.c \
		random_seed.c \
		rational.c \
		rc4.c \
		samplefmt.c \
		sha.c \
		tree.c \
		timecode.c \
		utils.c \

#		arm/cpu.c \

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
  LOCAL_CFLAGS += -fPIC
endif

LOCAL_SRC_FILES += \
	$(LIBAVUTIL_SRC_FILES) \

include $(BUILD_SHARED_LIBRARY)
