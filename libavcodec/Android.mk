LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_APP_ABI += $(APP_ABI)
LOCAL_ARM_MODE += arm

LOCAL_MODULE    := avcodec
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)
LOCAL_C_INCLUDES += $(FFMPEG_INCLUDE_DIR)/libavutil

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

LIBAVCODEC_SRC_FILES := \
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
		asv1.c \
		atrac.c \
		atrac1.c \
		atrac3.c \
		audioconvert.c \
		aura.c \
		avfft.c \
		avpacket.c \
		avs.c \
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
		bmv.c \
		c93.c \
		cabac.c \
		cavs.c \
		cavs_parser.c \
		cavsdec.c \
		cavsdsp.c \
		cdgraphics.c \
		celp_filters.c \
		celp_math.c \
		cga_data.c \
		chomp_bsf.c \
		cinepak.c \
		cljr.c \
		cook.c \
		cscd.c \
		cyuv.c \
		dca.c \
		dca_parser.c \
		dct.c \
		dct32_fixed.c \
		dctref.c \
		dfa.c \
		dirac.c \
		diracdsp.c \
		dirac_arith.c \
		diracdec.c \
		dirac_parser.c \
		dnxhd_parser.c \
		dnxhddata.c \
		dnxhddec.c \
		dpcm.c \
		dpx.c \
		dsicinav.c \
		dsputil.c \
		dump_extradata_bsf.c \
		dv.c \
		dvbsub_parser.c \
		dvbsubdec.c \
		dvdata.c \
		dvdsub_parser.c \
		dvdsubdec.c \
		dwt.c \
		dxa.c \
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
		faanidct.c \
		faxcompr.c \
		fft_fixed.c \
		ffv1.c \
		flac.c \
		flacdata.c \
		flacdec.c \
		flac_parser.c \
		flashsv.c \
		flicvideo.c \
		flvdec.c \
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
		gsmdec.c \
		gsmdec_data.c \
		h261.c \
		h261_parser.c \
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
		h264idct.c \
		h264pred.c \
		huffman.c \
		huffyuv.c \
		idcinvideo.c \
		iff.c \
		imc.c \
		imgconvert.c \
		imx_dump_header_bsf.c \
		indeo2.c \
		indeo3.c \
		indeo5.c \
		intelh263dec.c \
		interplayvideo.c \
		intrax8.c \
		intrax8dsp.c \
		ituh263dec.c \
		ivi_common.c \
		ivi_dsp.c \
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
		mdct_fixed.c \
		mdec.c \
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
		mpegaudio_parser.c \
		mpegaudiodata.c \
		mpegaudiodec.c \
		mpegaudiodsp_fixed.c \
		mpegaudiodecheader.c \
		mpegvideo.c \
		mpegvideo_parser.c \
		msgsmdec.c \
		msmpeg4.c \
		msmpeg4data.c \
		msrle.c \
		msrledec.c \
		msvideo1.c \
		mqc.c \
		mqcdec.c \
		nellymoser.c \
		nellymoserdec.c \
		noise_bsf.c \
		nuv.c \
		options.c \
		parser.c \
		pcm-mpeg.c \
		pcm.c \
		pcx.c \
		pgssubdec.c \
		pictordec.c \
		png.c \
		pngdec.c \
		pnm.c \
		pnm_parser.c \
		pnmdec.c \
		ptx.c \
		proresdsp.c \
		proresdec2.c \
		proresdec_lgpl.c \
		qcelpdec.c \
		qdm2.c \
		qdrw.c \
		qpeg.c \
		qtrle.c \
		r210dec.c \
		ra144.c \
		ra144dec.c \
		ra288.c \
		rangecoder.c \
		raw.c \
		rawdec.c \
		rdft.c \
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
		s3tc.c \
		sgidec.c \
		shorten.c \
		simple_idct.c \
		sipr.c \
		sipr16k.c \
		smacker.c \
		smc.c \
		snow.c \
		snowdec.c \
		sonic.c \
		srtdec.c \
		sp5xdec.c \
		sunrast.c \
		s302m.c \
		svq1.c \
		svq1dec.c \
		svq3.c \
		synth_filter.c \
		targa.c \
		tiertexseqv.c \
		tiff.c \
		tmv.c \
		truemotion1.c \
		truemotion2.c \
		truespeech.c \
		tscc.c \
		tta.c \
		twinvq.c \
		txd.c \
		ulti.c \
		utils.c \
		utvideo.c \
		v210dec.c \
		v210x.c \
		vb.c \
		vc1.c \
		vc1_parser.c \
		vc1data.c \
		vc1dec.c \
		vc1dsp.c \
		vcr1.c \
		vmdav.c \
		vmnc.c \
		vorbis.c \
		vorbis_data.c \
		vorbisdec.c \
		vble.c \
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
		wma.c \
		wmadec.c \
		wmaprodec.c \
		wmalosslessdec.c \
		wmavoice.c \
		wmv2.c \
		wmv2dec.c \
		wnv1.c \
		ws-snd1.c \
		xan.c \
		xiph.c \
		xl.c \
		xsubdec.c \
		xxan.c \
		zmbv.c \
		dcadsp.c \
		pthread.c \
		fmtconvert.c \
		kbdwin.c \
		cos_tables.c \
		sin_tables.c \
		sinewin_tables.c \




ARMV5_LOCAL_SRC_FILES := \
		arm/asm.S \
		arm/ac3dsp_arm.S \
		arm/ac3dsp_init_arm.c \
		arm/dcadsp_init_arm.c \
		arm/dsputil_arm.S \
		arm/dsputil_init_arm.c \
		arm/dsputil_init_armv5te.c \
		arm/fft_init_arm.c \
		arm/fft_fixed_init_arm.c \
		arm/h264dsp_init_arm.c \
		arm/h264pred_init_arm.c \
		arm/jrevdct_arm.S \
		arm/mpegvideo_arm.c \
		arm/mpegvideo_armv5te.c \
		arm/mpegvideo_armv5te_s.S \
		arm/simple_idct_arm.S \
		arm/simple_idct_armv5te.S \
		arm/fmtconvert_init_arm.c \
		arm/vp56dsp_init_arm.c \
		arm/vp8dsp_init_arm.c \
		$(LIBAVFORMAT_SRC_FILES) \
		$(LIBAVUTIL_SRC_FILES) \
		$(LIBAVCODEC_SRC_CODECS_LIST) \


VP8_SRC_FILES := \
		arm/vp8dsp_init_arm.c \
		vp8.c \
		vp8_parser.c \
		vp8dsp.c \


COMMON_ARM_SRC_FILES := \
		arm/asm.S \
		arm/ac3dsp_arm.S \
		arm/ac3dsp_init_arm.c \
		arm/dcadsp_init_arm.c \
		arm/dsputil_arm.S \
		arm/dsputil_init_arm.c \
		arm/fft_init_arm.c \
		arm/fft_fixed_init_arm.c \
		arm/h264dsp_init_arm.c \
		arm/h264pred_init_arm.c \
		arm/jrevdct_arm.S \
		arm/mpegvideo_arm.c \
		arm/simple_idct_arm.S \
		arm/fmtconvert_init_arm.c \
		arm/vp56dsp_init_arm.c \
		arm/mpegaudiodsp_init_arm.c \


ARMV5_SRC_FILES := \
		arm/dsputil_init_armv5te.c \
		arm/mpegvideo_armv5te.c \
		arm/mpegvideo_armv5te_s.S \
		arm/simple_idct_armv5te.S \

VFP_SRC_FILES := \
		arm/dsputil_init_vfp.c \
		arm/dsputil_vfp.S \
		fmtconvert_vfp.S \
		$(VP8_SRC_FILES) \
		arm/vp8dsp_armv6.S \


ARM6_SRC_FILES := \
		arm/dsputil_armv6.S \
		arm/dsputil_init_armv6.c \
		arm/simple_idct_armv6.S \
		$(VP8_SRC_FILES) \
		arm/vp8dsp_armv6.S \


NEON_SRC_FILES := \
		arm/ac3dsp_neon.S.neon \
		arm/dcadsp_neon.S.neon \
		arm/dsputil_init_neon.c.neon \
		arm/dsputil_neon.S.neon \
		arm/fft_neon.S.neon \
		arm/fft_fixed_neon.S.neon \
		arm/fmtconvert_neon.S.neon \
		arm/h264dsp_neon.S.neon \
		arm/h264idct_neon.S.neon \
		arm/h264pred_neon.S.neon \
		arm/int_neon.S.neon \
		arm/mdct_neon.S.neon \
		arm/mdct_fixed_neon.S.neon \
		arm/mpegvideo_neon.S.neon \
		arm/rdft_neon.S.neon \
		arm/simple_idct_neon.S.neon \
		arm/synth_filter_neon.S.neon \
		arm/vp3dsp_neon.S.neon \
		arm/vp56dsp_neon.S.neon \
		$(VP8_SRC_FILES) \
		arm/vp8dsp_neon.S.neon \


LOCAL_SRC_FILES += $(COMMON_ARM_SRC_FILES)
LOCAL_SRC_FILES += $(LIBAVCODEC_SRC_FILES)


LOCAL_SRC_FILES += $(ARMV5_SRC_FILES)
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_CFLAGS += -DHAVE_NEON=1
    LOCAL_CFLAGS += -fPIC
    LOCAL_NEON_EXT_FILES += $(LOCAL_SRC_FILES:%=%.neon)
    LOCAL_SRC_FILES := $(LOCAL_NEON_EXT_FILES) 
    LOCAL_SRC_FILES += $(NEON_SRC_FILES)
else
#    LOCAL_SRC_FILES += $(ARMV5_SRC_FILES)
endif




LOCAL_SHARED_LIBRARIES := avutil 

include $(BUILD_SHARED_LIBRARY)
