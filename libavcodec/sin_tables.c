//#include "avfft.h"
//

#define SINTABLE(size) \
    SINTABLE_CONST DECLARE_ALIGNED(16, FFTSample, ff_sin_##size)[size/2]

#define AVCODEC_RDFT_H
#include "config.h"
#include "dsputil.h"
#include <stdint.h>
typedef int16_t FFTSample;
#if CONFIG_HARDCODED_TABLES
#   define SINTABLE_CONST const
#else
#   define SINTABLE_CONST
#endif
#include "sin_tables.h"

extern SINTABLE(16);
extern SINTABLE(32);
extern SINTABLE(64);
extern SINTABLE(128);
extern SINTABLE(256);
extern SINTABLE(512);
extern SINTABLE(1024);
extern SINTABLE(2048);
extern SINTABLE(4096);
extern SINTABLE(8192);
extern SINTABLE(16384);
extern SINTABLE(32768);
extern SINTABLE(65536);


