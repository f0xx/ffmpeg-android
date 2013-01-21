LOCAL_PATH:= $(call my-dir)


include $(CLEAR_VARS)

LOCAL_APP_ABI += armeabi-v7a
LOCAL_ARM_MODE += arm
LOCAL_MODULE    := avutil_vfp
LOCAL_CFLAGS := -mfpu=vfp -march=armv6
LOCAL_C_INCLUDES += . ..
LOCAL_SRC_FILES += arm/float_dsp_init_vfp.c
LOCAL_SRC_FILES += arm/float_dsp_vfp.S

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_APP_ABI += armeabi-v7a
LOCAL_ARM_MODE += arm
LOCAL_MODULE    := avutil_neon
LOCAL_C_INCLUDES += . ..
LOCAL_SRC_FILES += arm/float_dsp_init_neon.c
LOCAL_SRC_FILES += arm/float_dsp_neon.S

LOCAL_CFLAGS += -DHAVE_NEON=1
LOCAL_CFLAGS += -fPIC

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_NEON_EXT_FILES += $(LOCAL_SRC_FILES:%=%.neon)
    LOCAL_SRC_FILES := $(LOCAL_NEON_EXT_FILES)
endif

include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)

#LOCAL_APP_ABI += $(APP_ABI)
LOCAL_ARM_MODE += arm

LOCAL_MODULE    := avutil

PLATFORM_C_INCLUDES += $(NDK_ROOT)/platforms/$(APP_PLATFORM)/arch-arm/usr/include

LOCAL_C_INCLUDES += $(PLATFORM_C_INCLUDES)
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)

LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DPIC
LOCAL_CFLAGS += $(GLOBAL_CFLAGS)

LOCAL_LDFLAGS += $(GLOBAL_LDFLAGS)
#LOCAL_LDFLAGS += -L$(NDK_APP_DST_DIR) -L$(TARGET_OUT)
LOCAL_LDFLAGS := -lz -llog


LIBAVUTIL_SRC_FILES := \
		adler32.c \
		arm/asm.S \
		arm/cpu.c \
		arm/float_dsp_init_arm.c \
		aes.c \
		audio_fifo.c \
		avstring.c \
		base64.c \
		bprint.c \
		channel_layout.c \
		cpu.c \
		crc.c \
		des.c \
		dict.c \
		error.c \
		eval.c \
		fifo.c \
		file.c \
		float_dsp.c \
		hmac.c \
		imgutils.c \
		integer.c \
		intfloat_readwrite.c \
		lfg.c \
		lls.c \
		log.c \
		log2_tab.c \
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
		time.c \
		timecode.c \
		utils.c \
		xga_font_data.c \

#		arm/cpu.c \

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
  LOCAL_CFLAGS += -fPIC
endif

LOCAL_SRC_FILES += \
	$(LIBAVUTIL_SRC_FILES) \

LOCAL_STATIC_LIBRARIES += avutil_vfp avutil_neon

include $(BUILD_SHARED_LIBRARY)
