FATE2_TESTS += fate-twinvq
fate-twinvq: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vqf/achterba.vqf -f s16le -
fate-twinvq: CMP = oneoff
fate-twinvq: REF = $(SAMPLES)/vqf/achterba.pcm

FATE2_TESTS += fate-sipr-16k
fate-sipr-16k: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/sipr/sipr_16k.rm -f s16le -
fate-sipr-16k: CMP = oneoff
fate-sipr-16k: REF = $(SAMPLES)/sipr/sipr_16k.pcm

FATE2_TESTS += fate-sipr-8k5
fate-sipr-8k5: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/sipr/sipr_8k5.rm -f s16le -
fate-sipr-8k5: CMP = oneoff
fate-sipr-8k5: REF = $(SAMPLES)/sipr/sipr_8k5.pcm

FATE2_TESTS += fate-sipr-6k5
fate-sipr-6k5: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/sipr/sipr_6k5.rm -f s16le -
fate-sipr-6k5: CMP = oneoff
fate-sipr-6k5: REF = $(SAMPLES)/sipr/sipr_6k5.pcm

FATE2_TESTS += fate-sipr-5k0
fate-sipr-5k0: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/sipr/sipr_5k0.rm -f s16le -
fate-sipr-5k0: CMP = oneoff
fate-sipr-5k0: REF = $(SAMPLES)/sipr/sipr_5k0.pcm

FATE2_TESTS += fate-aac-al04_44
fate-aac-al04_44: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/aac/al04_44.mp4 -f s16le -
fate-aac-al04_44: CMP = oneoff
fate-aac-al04_44: REF = $(SAMPLES)/aac/al04_44.s16
fate-aac-al04_44: FUZZ = 2

FATE2_TESTS += fate-aac-al07_96
fate-aac-al07_96: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/aac/al07_96.mp4 -f s16le -
fate-aac-al07_96: CMP = oneoff
fate-aac-al07_96: REF = $(SAMPLES)/aac/al07_96.s16
fate-aac-al07_96: FUZZ = 2

FATE2_TESTS += fate-aac-am00_88
fate-aac-am00_88: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/aac/am00_88.mp4 -f s16le -
fate-aac-am00_88: CMP = oneoff
fate-aac-am00_88: REF = $(SAMPLES)/aac/am00_88.s16
fate-aac-am00_88: FUZZ = 2

FATE2_TESTS += fate-aac-al_sbr_hq_cm_48_2
fate-aac-al_sbr_hq_cm_48_2: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/aac/al_sbr_cm_48_2.mp4 -f s16le -
fate-aac-al_sbr_hq_cm_48_2: CMP = oneoff
fate-aac-al_sbr_hq_cm_48_2: REF = $(SAMPLES)/aac/al_sbr_hq_cm_48_2.s16
fate-aac-al_sbr_hq_cm_48_2: FUZZ = 2

FATE2_TESTS += fate-aac-al_sbr_ps_06_ur
fate-aac-al_sbr_ps_06_ur: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/aac/al_sbr_ps_06_new.mp4 -f s16le -
fate-aac-al_sbr_ps_06_ur: CMP = oneoff
fate-aac-al_sbr_ps_06_ur: REF = $(SAMPLES)/aac/al_sbr_ps_06_ur.s16
fate-aac-al_sbr_ps_06_ur: FUZZ = 2

FATE2_TESTS += fate-ra-288
fate-ra-288: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/real/ra_288.rm -f s16le -
fate-ra-288: CMP = oneoff
fate-ra-288: REF = $(SAMPLES)/real/ra_288.pcm

FATE2_TESTS += fate-ra-cook
fate-ra-cook: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/real/ra_cook.rm -f s16le -
fate-ra-cook: CMP = oneoff
fate-ra-cook: REF = $(SAMPLES)/real/ra_cook.pcm

FATE2_TESTS += fate-mpeg2-field-enc
fate-mpeg2-field-enc: CMD = $(TARGET_PATH)/ffmpeg -flags +bitexact -dct fastint -idct simple -i $(SAMPLES)/mpeg2/mpeg2_field_encoding.ts -f framecrc -

FATE2_TESTS += fate-qcelp
fate-qcelp: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/qcp/0036580847.QCP -f s16le -
fate-qcelp: CMP = oneoff
fate-qcelp: REF = $(SAMPLES)/qcp/0036580847.pcm

FATE2_TESTS += fate-qdm2
fate-qdm2: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/qt-surge-suite/surge-2-16-B-QDM2.mov -f s16le -
fate-qdm2: CMP = oneoff
fate-qdm2: REF = $(SAMPLES)/qt-surge-suite/surge-2-16-B-QDM2.pcm
fate-qdm2: FUZZ = 2

FATE2_TESTS += fate-imc
fate-imc: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/imc/imc.avi -f s16le -
fate-imc: CMP = oneoff
fate-imc: REF = $(SAMPLES)/imc/imc.pcm

FATE2_TESTS += fate-yop
fate-yop: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/yop/test1.yop -pix_fmt rgb24 -an -f framecrc -

FATE2_TESTS += fate-pictor
fate-pictor: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/pictor/MFISH.PIC -pix_fmt rgb24 -an -f framecrc -

FATE2_TESTS += fate-dts
fate-dts: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/dts/dts.ts -f s16le -
fate-dts: CMP = oneoff
fate-dts: REF = $(SAMPLES)/dts/dts.pcm

FATE2_TESTS += fate-nellymoser
fate-nellymoser: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/nellymoser/nellymoser.flv -f s16le -
fate-nellymoser: CMP = oneoff
fate-nellymoser: REF = $(SAMPLES)/nellymoser/nellymoser.pcm

FATE2_TESTS += fate-truespeech
fate-truespeech: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/truespeech/a6.wav -f s16le -
fate-truespeech: CMP = oneoff
fate-truespeech: REF = $(SAMPLES)/truespeech/a6.pcm

FATE2_TESTS += fate-ac3-2.0
fate-ac3-2.0: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/ac3/monsters_inc_2.0_192_small.ac3 -f s16le -
fate-ac3-2.0: CMP = oneoff
fate-ac3-2.0: REF = $(SAMPLES)/ac3/monsters_inc_2.0_192_small.pcm

FATE2_TESTS += fate-ac3-5.1
fate-ac3-5.1: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/ac3/monsters_inc_5.1_448_small.ac3 -f s16le -
fate-ac3-5.1: CMP = oneoff
fate-ac3-5.1: REF = $(SAMPLES)/ac3/monsters_inc_5.1_448_small.pcm

FATE2_TESTS += fate-eac3-1
fate-eac3-1: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/eac3/csi_miami_5.1_256_spx_small.eac3 -f s16le -
fate-eac3-1: CMP = oneoff
fate-eac3-1: REF = $(SAMPLES)/eac3/csi_miami_5.1_256_spx_small.pcm

FATE2_TESTS += fate-eac3-2
fate-eac3-2: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/eac3/csi_miami_stereo_128_spx_small.eac3 -f s16le -
fate-eac3-2: CMP = oneoff
fate-eac3-2: REF = $(SAMPLES)/eac3/csi_miami_stereo_128_spx_small.pcm

FATE2_TESTS += fate-eac3-3
fate-eac3-3: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/eac3/matrix2_commentary1_stereo_192_small.eac3 -f s16le -
fate-eac3-3: CMP = oneoff
fate-eac3-3: REF = $(SAMPLES)/eac3/matrix2_commentary1_stereo_192_small.pcm

FATE2_TESTS += fate-eac3-4
fate-eac3-4: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/eac3/serenity_english_5.1_1536_small.eac3 -f s16le -
fate-eac3-4: CMP = oneoff
fate-eac3-4: REF = $(SAMPLES)/eac3/serenity_english_5.1_1536_small.pcm

FATE2_TESTS += fate-atrac1
fate-atrac1: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/atrac1/test_tones_small.aea -f s16le -
fate-atrac1: CMP = oneoff
fate-atrac1: REF = $(SAMPLES)/atrac1/test_tones_small.pcm

FATE2_TESTS += fate-atrac3-1
fate-atrac3-1: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/atrac3/mc_sich_at3_066_small.wav -f s16le -
fate-atrac3-1: CMP = oneoff
fate-atrac3-1: REF = $(SAMPLES)/atrac3/mc_sich_at3_066_small.pcm

FATE2_TESTS += fate-atrac3-2
fate-atrac3-2: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/atrac3/mc_sich_at3_105_small.wav -f s16le -
fate-atrac3-2: CMP = oneoff
fate-atrac3-2: REF = $(SAMPLES)/atrac3/mc_sich_at3_105_small.pcm

FATE2_TESTS += fate-atrac3-3
fate-atrac3-3: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/atrac3/mc_sich_at3_132_small.wav -f s16le -
fate-atrac3-3: CMP = oneoff
fate-atrac3-3: REF = $(SAMPLES)/atrac3/mc_sich_at3_132_small.pcm

FATE2_TESTS += fate-gsm
fate-gsm: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/gsm/ciao.wav -f framecrc -

FATE2_TESTS += fate-vorbis-1
fate-vorbis-1: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/1.0.1-test_small.ogg -f s16le -
fate-vorbis-1: CMP = oneoff
fate-vorbis-1: REF = $(SAMPLES)/vorbis/1.0.1-test_small.pcm

FATE2_TESTS += fate-vorbis-2
fate-vorbis-2: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/1.0-test_small.ogg -f s16le -
fate-vorbis-2: CMP = oneoff
fate-vorbis-2: REF = $(SAMPLES)/vorbis/1.0-test_small.pcm

FATE2_TESTS += fate-vorbis-3
fate-vorbis-3: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/beta3-test_small.ogg -f s16le -
fate-vorbis-3: CMP = oneoff
fate-vorbis-3: REF = $(SAMPLES)/vorbis/beta3-test_small.pcm

FATE2_TESTS += fate-vorbis-4
fate-vorbis-4: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/beta4-test_small.ogg -f s16le -
fate-vorbis-4: CMP = oneoff
fate-vorbis-4: REF = $(SAMPLES)/vorbis/beta4-test_small.pcm

FATE2_TESTS += fate-vorbis-5
fate-vorbis-5: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/chain-test1_small.ogg -f s16le -
fate-vorbis-5: CMP = oneoff
fate-vorbis-5: REF = $(SAMPLES)/vorbis/chain-test1_small.pcm

FATE2_TESTS += fate-vorbis-6
fate-vorbis-6: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/chain-test2_small.ogg -f s16le -
fate-vorbis-6: CMP = oneoff
fate-vorbis-6: REF = $(SAMPLES)/vorbis/chain-test2_small.pcm

FATE2_TESTS += fate-vorbis-7
fate-vorbis-7: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/highrate-test_small.ogg -f s16le -
fate-vorbis-7: CMP = oneoff
fate-vorbis-7: REF = $(SAMPLES)/vorbis/highrate-test_small.pcm

FATE2_TESTS += fate-vorbis-8
fate-vorbis-8: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/lsp-test2_small.ogg -f s16le -
fate-vorbis-8: CMP = oneoff
fate-vorbis-8: REF = $(SAMPLES)/vorbis/lsp-test2_small.pcm

FATE2_TESTS += fate-vorbis-9
fate-vorbis-9: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/lsp-test3_small.ogg -f s16le -
fate-vorbis-9: CMP = oneoff
fate-vorbis-9: REF = $(SAMPLES)/vorbis/lsp-test3_small.pcm

FATE2_TESTS += fate-vorbis-10
fate-vorbis-10: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/lsp-test4_small.ogg -f s16le -
fate-vorbis-10: CMP = oneoff
fate-vorbis-10: REF = $(SAMPLES)/vorbis/lsp-test4_small.pcm

FATE2_TESTS += fate-vorbis-11
fate-vorbis-11: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/lsp-test_small.ogg -f s16le -
fate-vorbis-11: CMP = oneoff
fate-vorbis-11: REF = $(SAMPLES)/vorbis/lsp-test_small.pcm

FATE2_TESTS += fate-vorbis-12
fate-vorbis-12: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/mono_small.ogg -f s16le -
fate-vorbis-12: CMP = oneoff
fate-vorbis-12: REF = $(SAMPLES)/vorbis/mono_small.pcm

FATE2_TESTS += fate-vorbis-13
fate-vorbis-13: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/moog_small.ogg -f s16le -
fate-vorbis-13: CMP = oneoff
fate-vorbis-13: REF = $(SAMPLES)/vorbis/moog_small.pcm

FATE2_TESTS += fate-vorbis-14
fate-vorbis-14: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/rc1-test_small.ogg -f s16le -
fate-vorbis-14: CMP = oneoff
fate-vorbis-14: REF = $(SAMPLES)/vorbis/rc1-test_small.pcm

FATE2_TESTS += fate-vorbis-15
fate-vorbis-15: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/rc2-test2_small.ogg -f s16le -
fate-vorbis-15: CMP = oneoff
fate-vorbis-15: REF = $(SAMPLES)/vorbis/rc2-test2_small.pcm

FATE2_TESTS += fate-vorbis-16
fate-vorbis-16: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/rc2-test_small.ogg -f s16le -
fate-vorbis-16: CMP = oneoff
fate-vorbis-16: REF = $(SAMPLES)/vorbis/rc2-test_small.pcm

FATE2_TESTS += fate-vorbis-17
fate-vorbis-17: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/rc3-test_small.ogg -f s16le -
fate-vorbis-17: CMP = oneoff
fate-vorbis-17: REF = $(SAMPLES)/vorbis/rc3-test_small.pcm

FATE2_TESTS += fate-vorbis-18
fate-vorbis-18: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/sleepzor_small.ogg -f s16le -
fate-vorbis-18: CMP = oneoff
fate-vorbis-18: REF = $(SAMPLES)/vorbis/sleepzor_small.pcm

FATE2_TESTS += fate-vorbis-19
fate-vorbis-19: CMD = $(TARGET_PATH)/ffmpeg -i $(SAMPLES)/vorbis/test-short2_small.ogg -f s16le -
fate-vorbis-19: CMP = oneoff
fate-vorbis-19: REF = $(SAMPLES)/vorbis/test-short2_small.pcm