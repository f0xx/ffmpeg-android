LOCAL_PATH:= $(call my-dir)

#include $(LOCAL_PATH)/libmpcodecs/Android.mk

include $(CLEAR_VARS)

#LOCAL_APP_ABI += $(APP_ABI)
LOCAL_ARM_MODE += arm

LOCAL_MODULE    := avfilter

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)

LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DPIC
LOCAL_CFLAGS +=  -std=gnu99
LOCAL_CFLAGS += $(GLOBAL_CFLAGS)

LOCAL_LDFLAGS += $(GLOBAL_LDFLAGS)
#LOCAL_LDFLAGS += -L$(NDK_APP_DST_DIR) -L$(TARGET_OUT)
LOCAL_LDFLAGS := -lz -llog

#$(wildcard $(LOCAL_PATH)/*.c)
#		vf_ass.c
LIBAVFILTER_SRC_FILES := \
		avcodec.c \
		af_afade.c \
		af_anull.c \
		af_aconvert.c \
		af_aformat.c \
		af_amerge.c \
		af_amix.c \
		af_apad.c \
		af_aresample.c \
		af_astreamsync.c \
		af_asetnsamples.c \
		af_ashowinfo.c \
		af_asyncts.c \
		af_atempo.c \
		af_biquads.c \
		af_channelmap.c \
		af_channelsplit.c \
		af_earwax.c \
		af_join.c \
		af_pan.c \
		af_resample.c \
		af_volume.c \
		af_volumedetect.c \
		af_silencedetect.c \
		allfilters.c \
		asink_anullsink.c \
		asrc_anullsrc.c \
		asrc_aevalsrc.c \
		avfilter.c \
		avfiltergraph.c \
		avf_concat.c \
		avf_showspectrum.c \
		avf_showwaves.c \
		audio.c \
		bbox.c \
		buffer.c \
		buffersrc.c \
		buffersink.c \
		drawutils.c \
		f_ebur128.c \
		f_setpts.c \
		f_settb.c \
		f_select.c \
		f_sendcmd.c \
		formats.c \
		graphparser.c \
		fifo.c \
		lavfutils.c \
		lswsutils.c \
		src_movie.c \
		sink_buffer.c \
		split.c \
		src_buffer.c \
		transform.c \
		video.c \
		vf_alphaextract.c \
		vf_alphamerge.c \
		vf_aspect.c \
		vf_blackdetect.c \
		vf_blackframe.c \
		vf_blend.c \
		vf_bbox.c \
		vf_boxblur.c \
		vf_colormatrix.c \
		vf_copy.c \
		vf_crop.c \
		vf_cropdetect.c \
		vf_decimate.c \
		vf_deshake.c \
		vf_drawbox.c \
		vf_delogo.c \
		vf_edgedetect.c \
		vf_geq.c \
		vf_gradfun.c \
		vf_fps.c \
		vf_fade.c \
		vf_field.c \
		vf_fieldorder.c \
		vf_format.c \
		vf_framestep.c \
		vf_histogram.c \
		vf_histeq.c \
		vf_hflip.c \
		vf_hqdn3d.c \
		vf_hue.c \
		vf_idet.c \
		vf_il.c \
		vf_kerndeint.c \
		vf_null.c \
		vf_noise.c \
		vf_lut.c \
		vf_mp.c \
		vf_overlay.c \
		vf_pad.c \
		vf_pixdesctest.c \
		vf_pp.c \
		vf_removelogo.c \
		vf_scale.c \
		vf_setfield.c \
		vf_smartblur.c \
		vf_showinfo.c \
		vf_super2xsai.c \
		vf_tile.c \
		vf_transpose.c \
		vf_thumbnail.c \
		vf_tinterlace.c \
		vf_unsharp.c \
		vf_vflip.c \
		vf_yadif.c \
		vsink_nullsink.c \
		vsrc_mandelbrot.c \
		vsrc_mptestsrc.c \
		vsrc_testsrc.c \
		vsrc_cellauto.c \
		vsrc_life.c \
		vf_swapuv.c \

#		vf_drawtext.c \
#		vf_frei0r.c \
#		vf_libopencv.c \


#LIBMPCODECS_SRC_FILES := $(wildward $(LOCAL_PATH)/libmpcodecs/*.c)
#LIBMPCODECS_SRC_FILES := $(patsubst $(LOCAL_PATH)/libmpcodecs/%,%,$(LIBMPCODECS_SRC_FILES))

LIBMPCODECS_SRC_FILES := \
		img_format.c \
		mp_image.c \
		pullup.c \
		vf_detc.c \
		vf_dint.c \
		vf_divtc.c \
		vf_down3dright.c \
		vf_eq2.c \
		vf_eq.c \
		vf_fil.c \
		vf_fspp.c \
		vf_harddup.c \
		vf_ilpack.c \
		vf_ivtc.c \
		vf_mcdeint.c \
		vf_noise.c \
		vf_ow.c \
		vf_perspective.c \
		vf_phase.c \
		vf_pp7.c \
		vf_pullup.c \
		vf_qp.c \
		vf_sab.c \
		vf_softpulldown.c \
		vf_spp.c \
		vf_stereo3d.c \
		vf_telecine.c \
		vf_tinterlace.c \
		vf_uspp.c \

#		vf_filmdint.c \
#		vf_swapuv.c \

LIBMPCODECS_SRC_FILES := $(patsubst %,libmpcodecs/%,$(LIBMPCODECS_SRC_FILES))

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
  LOCAL_CFLAGS += -fPIC
endif

LOCAL_SHARED_LIBRARIES := avutil swscale avresample swresample avcodec avformat postproc

LOCAL_SRC_FILES := \
	$(LIBAVFILTER_SRC_FILES) \
	$(LIBMPCODECS_SRC_FILES) \


include $(BUILD_SHARED_LIBRARY)
