#include-once

; ===============================================================================================================================
; Error codes returned by $BASS_ErrorGetCode
; ===============================================================================================================================
Global Const $BASS_ERROR_ACM_CANCEL = 2000; // ACM codec selection cancelled
Global Const $BASS_ERROR_CAST_DENIED = 2100; // access denied (invalid password)

; ===============================================================================================================================
; Additional BASS_SetConfig options
; ===============================================================================================================================
Global Const $BASS_CONFIG_ENCODE_PRIORITY = 0x10300; // encoder DSP priority
Global Const $BASS_CONFIG_ENCODE_CAST_TIMEOUT = 0x10310; // cast timeout

; ===============================================================================================================================
; BASS_Encode_Start flags
; ===============================================================================================================================
Global Const $BASS_ENCODE_NOHEAD = 1;	// do NOT send a WAV header to the encoder
Global Const $BASS_ENCODE_FP_8BIT = 2;	// convert floating-point sample data to 8-bit integer
Global Const $BASS_ENCODE_FP_16BIT = 4;	// convert floating-point sample data to 16-bit integer
Global Const $BASS_ENCODE_FP_24BIT = 6;	// convert floating-point sample data to 24-bit integer
Global Const $BASS_ENCODE_FP_32BIT = 8;	// convert floating-point sample data to 32-bit integer
Global Const $BASS_ENCODE_BIGEND = 16;	// big-endian sample data
Global Const $BASS_ENCODE_PAUSE = 32;	// start encording paused
Global Const $BASS_ENCODE_PCM = 64;	// write PCM sample data (no encoder)
Global Const $BASS_ENCODE_AUTOFREE = 0x40000; // free the encoder when the channel is freed

; ===============================================================================================================================
; BASS_Encode_GetACMFormat flags
; ===============================================================================================================================
Global Const $BASS_ACM_DEFAULT = 1; // use the format as default selection
Global Const $BASS_ACM_RATE = 2; // only list formats with same sample rate as the source channel
Global Const $BASS_ACM_CHANS = 4; // only list formats with same number of channels (eg. mono/stereo)
Global Const $BASS_ACM_SUGGEST = 8; // suggest a format (HIWORD=format tag)

; ===============================================================================================================================
; BASS_Encode_GetCount counts
; ===============================================================================================================================
Global Const $BASS_ENCODE_COUNT_IN = 0; // sent to encoder
Global Const $BASS_ENCODE_COUNT_OUT = 1; // received from encoder
Global Const $BASS_ENCODE_COUNT_CAST = 2; // sent to cast server

; ===============================================================================================================================
; BASS_Encode_CastInit content MIME types
; ===============================================================================================================================
Global Const $BASS_ENCODE_TYPE_MP3 = 'audio/mpeg';
Global Const $BASS_ENCODE_TYPE_OGG = 'application/ogg';
Global Const $BASS_ENCODE_TYPE_AAC = 'audio/aacp';

; ===============================================================================================================================
; BASS_Encode_CastGetStats types
; ===============================================================================================================================
Global Const $BASS_ENCODE_STATS_SHOUT = 0; // Shoutcast stats
Global Const $BASS_ENCODE_STATS_ICE = 1; // Icecast mount-point stats
Global Const $BASS_ENCODE_STATS_ICESERV = 2; // Icecast server stats

; ===============================================================================================================================
; Encoder notifications
; ===============================================================================================================================
Global Const $BASS_ENCODE_NOTIFY_ENCODER = 1; // encoder died
Global Const $BASS_ENCODE_NOTIFY_CAST = 2; // cast server connection died
Global Const $BASS_ENCODE_NOTIFY_CAST_TIMEOUT = 0x10000; // cast timeout