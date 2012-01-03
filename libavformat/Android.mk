LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

#LOCAL_APP_ABI := $(APP_ABI)
LOCAL_ARM_MODE := arm


LOCAL_MODULE    := avformat
#LOCAL_CFLAGS := -DCMD_HAVE_ARMV6 
#LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DPIC
#LOCAL_CFLAGS += $(CC_OPTIMIZE_FLAGS)
#LOCAL_CFLAGS += -I$(LOCAL_PATH)
#LOCAL_CFLAGS += -I$(LIBAVCODEC_INCLUDE_DIR)
#LOCAL_CFLAGS += -I$(LIBAVCODEC_INCLUDE_DIR)/libavcodec
#LOCAL_CFLAGS += -I$(LIBAVCODEC_INCLUDE_DIR)/libavformat
#LOCAL_CFLAGS += -I$(LIBAVCODEC_INCLUDE_DIR)/libavutil
#SYSROOT := /opt/android-ndk/platforms/android-8/arch-arm/
#LOCAL_LDFLAGS += -L$(SYSROOT)/usr/lib -lz -llog -L$(NDK_APP_DST_DIR) -lavcodec -lavutil


LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)/libavutil
LOCAL_C_INCLUDES += $(BZLIB_INCLUDE_DIR)

LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DPIC
LOCAL_CFLAGS += $(GLOBAL_CFLAGS)

LOCAL_LDFLAGS += $(GLOBAL_LDFLAGS)
#LOCAL_LDFLAGS += -L$(NDK_APP_DST_DIR) -L$(TARGET_OUT)
LOCAL_LDFLAGS += -lz -llog 
#-lavcodec -lavutil

LIBAVFORMAT_SRC_FILES := \
		4xm.c \
		a64.c \
		aacdec.c \
		act.c \
		ac3dec.c \
		aea.c \
		adxdec.c \
		aiffdec.c \
		allformats.c \
		amr.c \
		anm.c \
		apc.c \
		ape.c \
		apetag.c \
		applehttp.c \
		applehttpproto.c \
		asf.c \
		asfcrypt.c \
		asfdec.c \
		assdec.c \
		au.c \
		audiointerleave.c \
		avc.c \
		avidec.c \
		aviobuf.c \
		avio.c \
		avlanguage.c \
		avs.c \
		bethsoftvid.c \
		bfi.c \
		bink.c \
		bintext.c \
		bit.c \
		bmv.c \
		c93.c \
		cache.c \
		caf.c \
		cafdec.c \
		cavsvideodec.c \
		cdg.c \
		crypto.c \
		concat.c \
		cutils.c \
		daud.c \
		dfa.c \
		diracdec.c \
		dnxhddec.c \
		dsicin.c \
		dtsdec.c \
		dv.c \
		dxa.c \
		eacdata.c \
		electronicarts.c \
		ffmdec.c \
		ffmetadec.c \
		file.c \
		filmstripdec.c \
		flacdec.c \
		flacenc_header.c \
		flic.c \
		flvdec.c \
		gif.c \
		gxf.c \
		g723_1.c \
		g729dec.c \
		gsmdec.c \
		h261dec.c \
		h263dec.c \
		h264dec.c \
		httpauth.c \
		http.c \
		icodec.c \
		id3v1.c \
		id3v2.c \
		idcin.c \
		idroqdec.c \
		iff.c \
		img2.c \
		ingenientdec.c \
		ipmovie.c \
		isom.c \
		iss.c \
		iv8.c \
		ivfdec.c \
		jvdec.c \
		lmlm4.c \
		loasdec.c \
		lxfdec.c \
		m4vdec.c \
		matroska.c \
		matroskadec.c \
		md5enc.c \
		md5proto.c \
		metadata.c \
		microdvddec.c \
		mm.c \
		mmf.c \
		mms.c \
		mmsh.c \
		mmst.c \
		mov.c \
		mov_chan.c \
		mp3dec.c \
		mpc8.c \
		mpc.c \
		mpeg.c \
		mpegts.c \
		mpegvideodec.c \
		mpjpeg.c \
		msnwc_tcp.c \
		mtv.c \
		mvi.c \
		mxf.c \
		mxfdec.c \
		mxg.c \
		ncdec.c \
		network.c \
		nsvdec.c \
		nut.c \
		nutdec.c \
		nuv.c \
		oggdec.c \
		oggparsedirac.c \
		oggparseflac.c \
		oggparseogm.c \
		oggparseskeleton.c \
		oggparsespeex.c \
		oggparsetheora.c \
		oggparsevorbis.c \
		oggparsecelt.c \
		oma.c \
		omadec.c \
		options.c \
		os_support.c \
		pcm.c \
		pcmdec.c \
		pmpdec.c \
		psxstr.c \
		pva.c \
		qcp.c \
		r3d.c \
		rawdec.c \
		rawvideodec.c \
		rdt.c \
		riff.c \
		rl2.c \
		rm.c \
		rmdec.c \
		rpl.c \
		rso.c \
		rsodec.c \
		rtmppkt.c \
		rtmpproto.c \
		rtp.c \
		rtpdec_amr.c \
		rtpdec_asf.c \
		rtpdec.c \
		rtpdec_g726.c \
		rtpdec_h263.c \
		rtpdec_h264.c \
		rtpdec_latm.c \
		rtpdec_mpeg4.c \
		rtpdec_qcelp.c \
		rtpdec_qdm2.c \
		rtpdec_qt.c \
		rtpdec_svq3.c \
		rtpdec_vp8.c \
		rtpdec_xiph.c \
		rtpproto.c \
		rtsp.c \
		rtspdec.c \
		sapdec.c \
		sauce.c \
		sbgdec.c \
		smjpeg.c \
		sdp.c \
		seek.c \
		segafilm.c \
		sierravmd.c \
		siff.c \
		smacker.c \
		sol.c \
		soxdec.c \
		spdif.c \
		spdifdec.c \
		srtdec.c \
		swfdec.c \
		tcp.c \
		thp.c \
		tiertexseq.c \
		mkvtimestamp_v2.c \
		tmv.c \
		tta.c \
		tty.c \
		txd.c \
		udp.c \
		utils.c \
		voc.c \
		vocdec.c \
		vorbiscomment.c \
		vqf.c \
		wav.c \
		wc3movie.c \
		westwood.c \
		wtv.c \
		wtvdec.c \
		wv.c \
		xa.c \
		xmv.c \
		xwma.c \
		yop.c \
		yuv4mpeg.c \

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
  LOCAL_CFLAGS += -fPIC
endif

LOCAL_SRC_FILES += \
	$(LIBAVFORMAT_SRC_FILES) \

LOCAL_SHARED_LIBRARIES := avutil avcodec bz2

include $(BUILD_SHARED_LIBRARY)

