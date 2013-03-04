LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_APP_ABI += armeabi-v7a
LOCAL_ARM_MODE += arm
LOCAL_MODULE    := avcodec_vfp
LOCAL_CFLAGS := -mfpu=vfp -march=armv6
LOCAL_C_INCLUDES += . 
LOCAL_C_INCLUDES += ..

VFP_SRC_FILES := \
		arm/dsputil_init_armv6.c \
		arm/dsputil_armv6.S \
		arm/fmtconvert_vfp.S \

LOCAL_SRC_FILES := $(VFP_SRC_FILES)
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_APP_ABI += armeabi-v7a
LOCAL_ARM_MODE += arm
LOCAL_MODULE    := avcodec_armv6
LOCAL_CFLAGS := -msoft-float -march=armv6
LOCAL_C_INCLUDES += . 
LOCAL_C_INCLUDES += ..

ARM6_SRC_FILES := \
		arm/ac3dsp_armv6.S \
		arm/dsputil_armv6.S \
		arm/dsputil_init_armv6.c \
		arm/simple_idct_armv6.S \
		arm/mpegaudiodsp_fixed_armv6.S \
		arm/vp8_armv6.S \
		arm/vp8dsp_armv6.S \
		arm/vp8dsp_init_armv6.c \

LOCAL_SRC_FILES := $(ARM6_SRC_FILES)
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_APP_ABI += armeabi-v7a
LOCAL_ARM_MODE += arm
LOCAL_MODULE    := avcodec_neon
LOCAL_CFLAGS := -mfpu=neon -march=armv7-a

NEON_SRC_FILES := \
		arm/aacpsdsp_neon.S \
		arm/ac3dsp_neon.S \
		arm/dcadsp_neon.S \
		arm/dsputil_init_neon.c \
		arm/dsputil_neon.S \
		arm/fft_neon.S \
		arm/fft_fixed_neon.S \
		arm/fmtconvert_neon.S \
		arm/h264cmc_neon.S \
		arm/h264dsp_neon.S \
		arm/h264idct_neon.S \
		arm/h264pred_neon.S \
		arm/h264qpel_neon.S \
		arm/int_neon.S \
		arm/mdct_neon.S \
		arm/mdct_fixed_neon.S \
		arm/mpegvideo_neon.S \
		arm/rdft_neon.S \
		arm/rv40dsp_neon.S \
		arm/simple_idct_neon.S \
		arm/synth_filter_neon.S \
		arm/rv34dsp_neon.S \
		arm/vorbisdsp_neon.S \
		arm/vp3dsp_neon.S \
		arm/vp56dsp_neon.S \
		arm/vp8dsp_init_neon.c \
		arm/vp8dsp_neon.S \
		arm/sbrdsp_neon.S \

LOCAL_CFLAGS += -DHAVE_NEON=1
LOCAL_CFLAGS += -fPIC

LOCAL_C_INCLUDES += . 
LOCAL_C_INCLUDES += ..

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_NEON_EXT_FILES += $(NEON_SRC_FILES:%=%.neon)
    LOCAL_SRC_FILES := $(LOCAL_NEON_EXT_FILES)
else
    LOCAL_SRC_FILES := $(NEON_SRC_FILES)
endif

include $(BUILD_STATIC_LIBRARY)

#################################################################

include $(CLEAR_VARS)

LOCAL_APP_ABI += $(APP_ABI)
LOCAL_ARM_MODE += arm

LOCAL_MODULE    := avcodec
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)
#LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)/libavutil

LOCAL_CFLAGS += -DHAVE_AV_CONFIG_H  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DPIC
LOCAL_CFLAGS += $(GLOBAL_CFLAGS)
LOCAL_CFLAGS += -fvisibility=hidden

LOCAL_LDFLAGS += $(GLOBAL_LDFLAGS)
#LOCAL_LDFLAGS += -L$(NDK_APP_DST_DIR) -L$(TARGET_OUT)
LOCAL_LDFLAGS += -lz -llog 
#-lavutil

#LIBAVCODEC_SRC_FILES := $(wildcard $(LOCAL_PATH)/*.c)
#LIBAVCODEC_SRC_FILES := $(patsubst $(LOCAL_PATH)/%,%,$(LIBAVCODEC_SRC_FILES))
#LIBAVCODEC_SRC_FILES := $(patsubst *_tablegen.c,,$(LIBAVCODEC_SRC_FILES))
#LIBAVCODEC_SRC_FILES := $(patsubst *enc.c,,$(LIBAVCODEC_SRC_FILES))

#EXCLUDE := \
#		aacpsdata.c
		
#LIBAVCODEC_SRC_FILES := $(patsubst $(EXCLUDE),,$(LIBAVCODEC_SRC_FILES))
#		proresenc_anatoliy.c \

LIBAVCODEC_SRC_FILES := \
		012v.c \
		4xm.c \
		8bps.c \
		8svx.c \
		aacdec.c \
		aac_ac3_parser.c \
		aac_adtstoasc_bsf.c \
		aac_parser.c \
		aacadtsdec.c \
		aacsbr.c \
		aacps.c \
		aacpsdsp.c \
		aactab.c \
		aandcttab.c \
		aasc.c \
		ac3.c \
		ac3_parser.c \
		ac3dec.c \
		ac3dsp.c \
		ac3dec_data.c \
		ac3tab.c \
		acelp_filters.c \
		acelp_pitch_delay.c \
		acelp_vectors.c \
		adpcm.c \
		adpcm_data.c \
		adx.c \
		adxdec.c \
		adx_parser.c \
		alac.c \
		alac_data.c \
		allcodecs.c \
		alsdec.c \
		amrnbdec.c \
		amrwbdec.c \
		anm.c \
		ansi.c \
		apedec.c \
		ass.c \
		assdec.c \
		ass_split.c \
		asv.c \
		asvdec.c \
		atrac.c \
		atrac1.c \
		atrac3.c \
		audioconvert.c \
		aura.c \
		avfft.c \
		avpacket.c \
		avrndec.c \
		avs.c \
		avpicture.c \
		avuidec.c \
		bethsoftvideo.c \
		bfi.c \
		bgmc.c \
		bink.c \
		binkaudio.c \
		binkdsp.c \
		bintext.c \
		bitstream.c \
		bitstream_filter.c \
		bmp.c \
		bmp_parser.c \
		bmv.c \
		brender_pix.c \
		cpia.c \
		c93.c \
		cabac.c \
		cavs.c \
		cavs_parser.c \
		cavsdata.c \
		cavsdec.c \
		cavsdsp.c \
		cdgraphics.c \
		cdxl.c \
		cngdec.c \
		celp_filters.c \
		celp_math.c \
		cga_data.c \
		chomp_bsf.c \
		cinepak.c \
		cljr.c \
		cllc.c \
		codec_desc.c \
		cook.c \
		cook_parser.c \
		cscd.c \
		cyuv.c \
		dca.c \
		dcadec.c \
		dca_parser.c \
		dct.c \
		dct32_fixed.c \
		dctref.c \
		dfa.c \
		dirac.c \
		diracdsp.c \
		dirac_arith.c \
		diracdec.c \
		dirac_dwt.c \
		dirac_parser.c \
		dnxhd_parser.c \
		dnxhddata.c \
		dnxhddec.c \
		dpcm.c \
		dpx.c \
		dsicinav.c \
		dsputil.c \
		dump_extradata_bsf.c \
		dv_profile.c \
		dv.c \
		dvdec.c \
		dvbsub_parser.c \
		dvbsubdec.c \
		dvdata.c \
		dvdsub_parser.c \
		dvdsubdec.c \
		dxa.c \
		dxtory.c \
		eac3_data.c \
		eac3dec.c \
		eacmv.c \
		eaidct.c \
		eamad.c \
		eatgq.c \
		eatgv.c \
		eatqi.c \
		error_resilience.c \
		escape124.c \
		escape130.c \
		evrcdec.c \
		exr.c \
		faanidct.c \
		faxcompr.c \
		fft_fixed.c \
		ffv1.c \
		ffv1dec.c \
		ffwavesynth.c \
		flac.c \
		flacdata.c \
		flacdec.c \
		flacdsp.c \
		flac_parser.c \
		flashsv.c \
		flicvideo.c \
		flvdec.c \
		frame_thread_encoder.c \
		fraps.c \
		frwu.c \
		g722.c \
		g722dec.c \
		g723_1.c \
		g726.c \
		g729dec.c \
		g729postfilter.c \
		gifdec.c \
		golomb.c \
		gsm_parser.c \
		gsmdec.c \
		gsmdec_data.c \
		h261.c \
		h261_parser.c \
		h261data.c \
		h261dec.c \
		h263.c \
		h263_parser.c \
		h263dec.c \
		h264.c \
		h264dsp.c \
		h264_cabac.c \
		h264_cavlc.c \
		h264_direct.c \
		h264_loopfilter.c \
		h264_mp4toannexb_bsf.c \
		h264_parser.c \
		h264_ps.c \
		h264_refs.c \
		h264_sei.c \
		h264chroma.c \
		h264idct.c \
		h264pred.c \
		h264qpel.c \
		huffman.c \
		huffyuv.c \
		huffyuvdec.c \
		idcinvideo.c \
		iff.c \
		imc.c \
		imgconvert.c \
		imx_dump_header_bsf.c \
		indeo2.c \
		indeo3.c \
		indeo4.c \
		indeo5.c \
		intelh263dec.c \
		interplayvideo.c \
		intrax8.c \
		intrax8dsp.c \
		ituh263dec.c \
		ivi_common.c \
		ivi_dsp.c \
		jacosubdec.c \
		j2k.c \
		j2kdec.c \
		j2k_dwt.c \
		jvdec.c \
		jpegls.c \
		jpeglsdec.c \
		jrevdct.c \
		kgv1dec.c \
		kmvc.c \
		latm_parser.c \
		lagarith.c \
		lagarithrac.c \
		lcldec.c \
		loco.c \
		lsp.c \
		lzw.c \
		mace.c \
		mathtables.c \
		mdct_fixed.c \
		mdec.c \
		microdvddec.c \
		mimic.c \
		mjpeg.c \
		mjpeg2jpeg_bsf.c \
		mjpeg_parser.c \
		mjpega_dump_header_bsf.c \
		mjpegbdec.c \
		mjpegdec.c \
		mxpegdec.c \
		mlp.c \
		mlp_parser.c \
		mlpdec.c \
		mlpdsp.c \
		mmvideo.c \
		motionpixels.c \
		movsub_bsf.c \
		movtextdec.c \
		mp3_header_compress_bsf.c \
		mp3_header_decompress_bsf.c \
		mpc.c \
		mpc7.c \
		mpc8.c \
		mpeg12.c \
		mpeg12data.c \
		mpeg4audio.c \
		mpeg4video.c \
		mpeg4video_parser.c \
		mpeg4videodec.c \
		mpegaudio.c \
		mpegaudiodsp.c \
		mpegaudiodsp_data.c \
		mpegaudio_parser.c \
		mpegaudiodata.c \
		mpegaudiodec.c \
		mpegaudiodsp_fixed.c \
		mpegaudiodecheader.c \
		mpegvideo.c \
		mpegvideo_motion.c \
		mpegvideo_parser.c \
		mpl2dec.c \
		msgsmdec.c \
		msmpeg4.c \
		msmpeg4data.c \
		msrle.c \
		msrledec.c \
		mss12.c \
		mss1.c \
		mss2.c \
		mss2dsp.c \
		mss34dsp.c \
		mss3.c \
		mss4.c \
		msvideo1.c \
		mqc.c \
		mqcdec.c \
		mvcdec.c \
		nellymoser.c \
		nellymoserdec.c \
		noise_bsf.c \
		nuv.c \
		options.c \
		parser.c \
		paf.c \
		pcm-mpeg.c \
		pcm.c \
		pcx.c \
		pgssubdec.c \
		pictordec.c \
		png.c \
		pngdec.c \
		pngdsp.c \
		png_parser.c \
		pnm.c \
		pnm_parser.c \
		pnmdec.c \
		ptx.c \
		proresdata.c \
		proresdec2.c \
		proresdec_lgpl.c \
		proresdsp.c \
		proresenc_kostya.c \
		qcelpdec.c \
		qdm2.c \
		qdrw.c \
		qpeg.c \
		qtrle.c \
		r210dec.c \
		ra144.c \
		ra144dec.c \
		ra288.c \
		ralf.c \
		rangecoder.c \
		raw.c \
		rawdec.c \
		rdft.c \
		realtextdec.c \
		remove_extradata_bsf.c \
		resample.c \
		resample2.c \
		rl2.c \
		roqvideo.c \
		roqvideodec.c \
		rpza.c \
		rtjpeg.c \
		rv10.c \
		rv30.c \
		rv30dsp.c \
		rv34.c \
		rv34dsp.c \
		rv34_parser.c \
		rv40.c \
		rv40dsp.c \
		samidec.c \
		s3tc.c \
		sanm.c \
		sbrdsp.c \
		sgidec.c \
		sgirledec.c \
		shorten.c \
		simple_idct.c \
		sipr.c \
		sipr16k.c \
		smacker.c \
		smc.c \
		snow.c \
		snowdec.c \
		snow_dwt.c \
		sonic.c \
		srtdec.c \
		sp5xdec.c \
		subviewerdec.c \
		sunrast.c \
		s302m.c \
		svq1.c \
		svq1dec.c \
		svq13.c \
		svq3.c \
		synth_filter.c \
		tak.c \
		takdec.c \
		tak_parser.c \
		targa.c \
		targa_y216dec.c \
		textdec.c \
		tiertexseqv.c \
		timecode.c \
		tiff.c \
		tiff_data.c \
		tmv.c \
		truemotion1.c \
		truemotion2.c \
		truespeech.c \
		tscc.c \
		tscc2.c \
		tta.c \
		twinvq.c \
		txd.c \
		ulti.c \
		utils.c \
		utvideo.c \
		utvideodec.c \
		utvideoenc.c \
		vima.c \
		v210dec.c \
		v210x.c \
		vb.c \
		vc1.c \
		vc1_parser.c \
		vc1data.c \
		vc1dec.c \
		vc1dsp.c \
		vcr1.c \
		videodsp.c \
		vmdav.c \
		vmnc.c \
		vorbis.c \
		vorbis_data.c \
		vorbis_parser.c \
		vorbisdec.c \
		vorbisdsp.c \
		vble.c \
		v308dec.c \
		v408dec.c \
		v408enc.c \
		v410dec.c \
		vp3.c \
		vp3_parser.c \
		vp3dsp.c \
		vp5.c \
		vp56.c \
		vp56data.c \
		vp56dsp.c \
		vp56rac.c \
		vp6.c \
		vp6dsp.c \
		vqavideo.c \
		wavpack.c \
		webvttdec.c \
		wma.c \
		wma_common.c \
		wmadec.c \
		wmaprodec.c \
		wmalosslessdec.c \
		wmavoice.c \
		wmv2.c \
		wmv2dec.c \
		wmv2dsp.c \
		wnv1.c \
		ws-snd1.c \
		xan.c \
		xbmdec.c \
		xiph.c \
		xface.c \
		xfacedec.c \
		xl.c \
		xsubdec.c \
		xxan.c \
		xwddec.c \
		y41pdec.c \
		yuv4dec.c \
		zerocodec.c \
		zmbv.c \
		dcadsp.c \
		pthread.c \
		fmtconvert.c \
		kbdwin.c \
		cos_tables.c \
		sin_tables.c \
		sinewin_tables.c \


ARMV5_LOCAL_SRC_FILES := \
		arm/aacpsdsp_init_arm.c \
		arm/ac3dsp_arm.S \
		arm/ac3dsp_init_arm.c \
		arm/dcadsp_init_arm.c \
		arm/dsputil_arm.S \
		arm/dsputil_init_arm.c \
		arm/dsputil_init_armv5te.c \
		arm/flacdsp_arm.S \
		arm/flacdsp_init_arm.c \
		arm/fft_init_arm.c \
		arm/fft_fixed_init_arm.c \
		arm/h264chroma_init_arm.c \
		arm/h264dsp_init_arm.c \
		arm/h264pred_init_arm.c \
		arm/h264qpel_init_arm.c \
		arm/jrevdct_arm.S \
		arm/mpegaudiodsp_init_arm.c \
		arm/mpegvideo_arm.c \
		arm/mpegvideo_armv5te.c \
		arm/mpegvideo_armv5te_s.S \
		arm/rv34dsp_init_arm.c \
		arm/rv40dsp_init_arm.c \
		arm/sbrdsp_init_arm.c \
		arm/simple_idct_arm.S \
		arm/simple_idct_armv5te.S \
		arm/fmtconvert_init_arm.c \
		arm/videodsp_init_arm.c \
		arm/videodsp_armv5te.S \
		arm/videodsp_init_armv5te.c \
		arm/vorbisdsp_init_arm.c \
		arm/vp3dsp_init_arm.c \
		arm/vp56dsp_init_arm.c \
		arm/vp8dsp_init_arm.c \
		$(LIBAVFORMAT_SRC_FILES) \
		$(LIBAVUTIL_SRC_FILES) \
		$(LIBAVCODEC_SRC_CODECS_LIST) \


VP8_SRC_FILES := \
		vp8.c \
		vp8_parser.c \
		vp8dsp.c \


COMMON_ARM_SRC_FILES := $(ARMV5_LOCAL_SRC_FILES)


LOCAL_SRC_FILES += $(COMMON_ARM_SRC_FILES)
LOCAL_SRC_FILES += $(LIBAVCODEC_SRC_FILES)
LOCAL_SRC_FILES += $(VP8_SRC_FILES)

#LOCAL_SRC_FILES += $(ARMV5_SRC_FILES)
#LOCAL_SRC_FILES += $(ARM6_SRC_FILES) ## runtime cpu detection enabled
#LOCAL_SRC_FILES += $(VFP_SRC_FILES) ## runtime cpu detection enabled 
#LOCAL_SRC_FILES += $(NEON_SRC_FILES) ## runtime cpu detection enabled 


LOCAL_SHARED_LIBRARIES := avutil
LOCAL_STATIC_LIBRARIES := avcodec_vfp avcodec_armv6 avcodec_neon

include $(BUILD_SHARED_LIBRARY)
