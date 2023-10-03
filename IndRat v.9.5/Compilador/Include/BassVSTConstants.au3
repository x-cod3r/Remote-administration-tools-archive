#include-once
Global Const $BASS_VST_PARAM_CHANGED = 1;
Global Const $BASS_VST_EDITOR_RESIZED = 2;
Global Const $BASS_VST_AUDIO_MASTER = 3;

Global Const $BASS_VST_ERROR_NOINPUTS     = 3000;;the given effect has no inputs and is probably a VST instrument and no effect
Global Const $BASS_VST_ERROR_NOOUTPUTS    = 3001; ;the given effect has no outputs
Global Const $BASS_VST_ERROR_NOREALTIME   = 3002; ;the given effect does not support realtime processing

Global $BASS_VST_PARAM_INFO = 	"char[15]  name;" & _	;examples" & _ Time, Gain, RoomType
								"char[15] FUnit;" & _ 	;examples" & _ sec, dB, type
								"char[15] Display;" & _	;the current value in a readable format, examples" & _ 0.5, -3, PLATE
								"float defaultValue;" & _	;the default value
								"char[255] rsvd;"


GLOBAL $BASS_VST_INFO = "dword ChannelHandle" & _	 	;the channelHandle as given to BASS_VST_ChannelSetDSP()
						"dword uniqueID" & _ 			;a unique ID for the effect (the IDs are registered at Steinberg)
						"char[79] effectName" & _		;the effect name
						"dword effectVersion" & _		;the effect version
						"dword effectVstVersion" & _ 	;the VST version, the effect was written for
						"dword hostVstVersion" & _		;the VST version supported by BASS_VST, currently 2.4
						"char[79] productName" & _		;the product name, may be empty
						"char[79] vendorName" & _		;the vendor name, may be empty
						"dword vendorVersion" & _		;vendor-specific version number
						"dword chansIn" & _      		;max. number of possible input channels
						"dword chansOut" & _     		;max. number of possible output channels
						"dword initialDelay" & _ 		;for algorithms which need input in the first place, in milliseconds
						"dword hasEditor" & _   		;can the BASS_VST_EmbedEditor() function be called?
						"dword editorWidth" & _  		;initial/current width of the editor, also note BASS_VST_EDITOR_RESIZED
						"dword editorHeight" & _ 		;initial/current height of the editor, also note BASS_VST_EDITOR_RESIZED
						"ptr aeffect" & _				;the underlying AEffect object (see the VST SDK)
						"char[255] rsvd"
