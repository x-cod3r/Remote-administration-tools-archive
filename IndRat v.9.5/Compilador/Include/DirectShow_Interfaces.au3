
	Global const  $CLSCTX_INPROC_SERVER     = 0x1
	Global const $CompressionCaps_CanKeyFrame = 0x04
	Global const $SIID_IMediaEventEx 				= "{56A868C0-0AD4-11CE-B03A-0020AF0BA770}"
	Global const $sIID_IMediaControl 				= '{56A868B1-0AD4-11CE-B03A-0020AF0BA770}'
	Global const $SIID_IBasicAudio 					= "{56A868B3-0AD4-11CE-B03A-0020AF0BA770}"

	Global Const $sCLSID_VideoInputDeviceCategory	= '{860bb310-5d01-11d0-bd3b-00a0c911ce86}'
	Global Const $sCLSID_AudioInputDeviceCategory	= '{33d9a762-90c8-11d0-bd43-00a0c911ce86}'
	Global Const $sCLSID_VideoCompressorCategory	= '{33d9a760-90c8-11d0-bd43-00a0c911ce86}'

	Global Const $S_OK = 0
	Global Const $PIN_CATEGORY_CAPTURE 				= '{fb6c4281-0353-11d1-905f-0000c0cc16ba}'
	Global Const $PIN_CATEGORY_PREVIEW				= '{fb6c4282-0353-11d1-905f-0000c0cc16ba}'
	Global Const $MEDIASUBTYPE_Avi 					= '{e436eb88-524f-11ce-9f53-0020af0ba770}'
	Global Const $MEDIATYPE_Video 					= '{73646976-0000-0010-8000-00aa00389b71}'
	Global Const $MEDIATYPE_Audio 					= '{73647561-0000-0010-8000-00aa00389b71}'
	global const $sCLSID_VideoMixingRenderer9 		= '{51b4abf3-748f-4e3b-a276-c828330e926a}';
	global const $sCLSID_EnhancedVideorenderer 		= '{FA10746C-9B63-4b6c-BC49-FC300EA5F256}'

; ############################ definitions ###############################

	;===============================================================================
	#interface "IGraphBuilder"
		;~ // Create the FGM.
		global const  $sCLSID_FilterGraph = "{E436EBB3-524F-11CE-9F53-0020AF0BA770}"
		global const  $sIID_IGraphBuilder = "{56A868A9-0AD4-11CE-B03A-0020AF0BA770}"

		; Define IGraphBuilder methods
		global const  $tagIGraphBuilder = "AddFilter hresult(ptr;wstr);" & _
				"RemoveFilter hresult(ptr);" & _
				"EnumFilters hresult(ptr*);" & _
				"FindFilterByName hresult(wstr;ptr*);" & _
				"ConnectDirect hresult(ptr;ptr;ptr);" & _
				"Reconnect hresult(ptr);" & _
				"Disconnect hresult(ptr);" & _
				"SetDefaultSyncSource hresult();" & _ ; IFilterGraph
				"Connect hresult(ptr;ptr);" & _
				"Render hresult(ptr);" & _
				"RenderFile hresult(wstr;ptr);" & _
				"AddSourceFilter hresult(wstr;wstr;ptr*);" & _
				"SetLogFile hresult(dword_ptr);" & _
				"Abort hresult();" & _
				"ShouldOperationContinue hresult();" ; IGraphBuilder
	;===============================END=============================================

	;===============================================================================
	#interface "ICaptureGraphBuilder2"
;~ 		global const  $sCLSID_CaptureGraphBuilder  = '{BF87B6E0-8C27-11D0-B3F0-00AA003761C5}'
		global const  $sCLSID_CaptureGraphBuilder2 = '{BF87B6E1-8C27-11D0-B3F0-00AA003761C5}'
		global const  $sIID_ICaptureGraphBuilder2   = '{93e5a4e0-2d50-11d2-abfa-00a0c9c6e38d}'

		; Definition
		Global Const $tagICaptureGraphBuilder2 = "SetFiltergraph hresult(ptr);" & _
			"GetFiltergraph hresult(ptr*);" & _
			"SetOutputFileName hresult(clsid;wstr;ptr*;ptr*);" & _
			"FindInterface hresult(clsid;clsid;ptr;clsid;ptr*);" & _
			"RenderStream hresult(clsid;clsid;ptr;ptr;ptr);" & _
			"ControlStream hresult(clsid;clsid;ptr;ptr;ptr;word;word);" & _
			"AllocCapFile hresult(wstr;int64);" & _
			"CopyCaptureFile hresult(wstr;wstr;int;ptr*);" & _
			"FindPin hresult(ptr;int;clsid;clsid;bool;int;ptr*);"
	;===============================END=============================================

	;===============================================================================
	#interface "ICreateDevEnum"
		Global Const $sCLSID_SystemDeviceEnum			= '{62BE5D10-60EB-11d0-BD3B-00A0C911CE86}'
		Global Const $sIID_ICreateDevEnum				= '{29840822-5b84-11d0-bd3b-00a0c911ce86}'

		; Definition
		Global Const $tagICreateDevEnum = "CreateClassEnumerator hresult( clsid ; ptr*; dword );"
	;===============================END=============================================

	;===============================================================================
	#interface "IEnumMoniker"
		Global Const $sCLSID_IEnumMoniker				= '{56a86895-0ad4-11ce-b03a-0020af0ba770}'
		Global Const $sIID_IEnumMoniker					= '{00000102-0000-0000-c000-000000000046}'

		; Definition
		Global Const $tagIEnumMoniker = "Next hresult(dword;ptr*;dword*);" & _
        "Skip hresult(dword);" & _
        "Reset hresult();" & _
        "Clone hresult(ptr*);"

	;===============================END=============================================

	;===============================================================================
	#interface "IBaseFilter"
		Global Const $sIID_IBaseFilter					= '{56a86895-0ad4-11ce-b03a-0020af0ba770}'

		; Definition
		Global Const $tagIBaseFilter = "GetClassID hresult(ptr*);" & _; IPersist
        "Stop hresult();" & _
        "Pause hresult();" & _
        "Run hresult(int64);" & _
        "GetState hresult(dword;dword*);" & _
        "SetSyncSource hresult(ptr);" & _
        "GetSyncSource hresult(ptr*);" & _ ; IMediaFilter
        "EnumPins hresult(ptr*);" & _
        "FindPin hresult(wstr;ptr*);" & _
        "QueryFilterInfo hresult(ptr*);" & _
        "JoinFilterGraph hresult(ptr;wstr);" & _
        "QueryVendorInfo hresult(wstr*);" ; IBaseFilter

	;===============================END=============================================

	;===============================================================================
	#interface "IMoniker"
		Global Const $sCLSID_IMoniker				= '{79eac9e0-baf9-11ce-8c82-00aa004ba90b}'
		Global Const $sIID_IMoniker					= '{0000000f-0000-0000-C000-000000000046}'

		; Definition
		Global Const $tagIMoniker = "GetClassID hresult( clsid )" & _
		"IsDirty hresult(  );" & _
		"Load hresult( ptr );" & _
		"Save hresult( ptr, bool );" & _
		"GetSizeMax hresult( uint64 );" & _
		"BindToObject hresult( ptr;ptr;clsid;ptr*);" & _
		"BindToStorage hresult( ptr;ptr;clsid;ptr*);" & _
		"Reduce hresult( ptr;dword;ptr*;ptr*);" & _
		"ComposeWith hresult( ptr;bool;ptr*);" & _
		"Enum hresult( bool;ptr*);" & _
		"IsEqual hresult( ptr);" & _
		"Hash hresult( dword*);" & _
		"IsRunning hresult( ptr;ptr;ptr);" & _
		"GetTimeOfLastChange hresult( ptr;ptr;int64*);" & _
		"Inverse hresult( ptr*);" & _
		"CommonPrefixWith hresult( ptr;ptr*);" & _
		"RelativePathTo hresult( ptr;ptr*);" & _
 		"GetDisplayName hresult( ptr;ptr;wstr*);" & _
		"ParseDisplayName hresult( ptr;ptr;wstr;ulong*;ptr*);" & _
		"IsSystemMoniker hresult( dword*);"
	;===============================END=============================================

	;===============================================================================
	global const $s_IID_IDispatch = "{00020400-0000-0000-C000-000000000046}"
	Global Const $tagIDispatch = "GetTypeInfoCount hresult(dword*);" & _
	   "GetTypeInfo hresult(dword;dword;ptr*);" & _
	   "GetIDsOfNames hresult(clsid;ptr;dword;dword;ptr);" & _
	   "Invoke hresult(dword;clsid;dword;word;ptr;ptr;ptr;dword*);"
	;===============================END=============================================

	;===============================================================================
	#interface "IVideoWindow"
		Global Const $sIID_IVideoWindow		= "{56A868B4-0AD4-11CE-B03A-0020AF0BA770}"

		; IVideoWindow is dual interface.
		global const  $tagIVideoWindow = $tagIDispatch & _
			"put_Caption hresult(bstr);" & _
			"get_Caption hresult(bstr*);" & _
			"put_WindowStyle hresult(long);" & _
			"get_WindowStyle hresult(long*);" & _
			"put_WindowStyleEx hresult(long);" & _
			"put_WindowStyleEx hresult(long*);" & _
			"put_AutoShow hresult(long);" & _
			"get_AutoShow hresult(long*);" & _
			"put_WindowState hresult(long);" & _
			"get_WindowState hresult(long*);" & _
			"put_BackgroundPalette hresult(long);" & _
			"get_BackgroundPalette hresult(long*);" & _
			"put_Visible hresult(long);" & _
			"get_Visible hresult(long*);" & _
			"put_Left hresult(long);" & _
			"get_Left hresult(long*);" & _
			"put_Width hresult(long);" & _
			"get_Width hresult(long*);" & _
			"put_Top hresult(long);" & _
			"get_Top hresult(long*);" & _
			"put_Height hresult(long);" & _
			"get_Height hresult(long*);" & _
			"put_Owner hresult(long_ptr);" & _
			"get_Owner hresult(long_ptr*);" & _
			"put_MessageDrain hresult(long_ptr);" & _
			"get_MessageDrain hresult(long_ptr*);" & _
			"get_BorderColor hresult(long*);" & _
			"put_BorderColor hresult(long);" & _
			"get_FullScreenMode hresult(long*);" & _
			"put_FullScreenMode hresult(long);" & _
			"SetWindowForeground hresult(long);" & _
			"NotifyOwnerMessage hresult(long_ptr;long;long_ptr;long_ptr);" & _
			"SetWindowPosition hresult(long;long;long;long);" & _
			"GetWindowPosition hresult(long*;long*;long*;long*);" & _
			"GetMinIdealImageSize hresult(long*;long*);" & _
			"GetMaxIdealImageSize hresult(long*;long*);" & _
			"GetRestorePosition hresult(long*;long*;long*;long*);" & _
			"HideCursor hresult(long);" & _
			"IsCursorHidden hresult(long*);" ; IVideoWindow
	;===============================END=============================================

	;===============================================================================
	#interface "IBasicVideo"
		Global Const  $sIID_IBasicVideo = "{56A868B5-0AD4-11CE-B03A-0020AF0BA770}"

		global const  $tagIBasicVideo = $tagIDispatch & _
			"get_AvgTimePerFrame hresult(double*);" & _
			"get_BitRate hresult(long*);" & _
			"get_BitErrorRate hresult(long*);" & _
			"get_VideoWidth hresult(long*);" & _
			"get_VideoHeight hresult(long*);" & _
			"put_SourceLeft hresult(long);" & _
			"get_SourceLeft hresult(long*);" & _
			"put_SourceWidth hresult(long);" & _
			"get_SourceWidth hresult(long*);" & _
			"put_SourceTop hresult(long);" & _
			"get_SourceTop hresult(long*);" & _
			"put_SourceHeight hresult(long);" & _
			"get_SourceHeight hresult(long*);" & _
			"put_DestinationLeft hresult(long);" & _
			"get_DestinationLeft hresult(long*);" & _
			"put_DestinationWidth hresult(long);" & _
			"get_DestinationWidth hresult(long*);" & _
			"put_DestinationTop hresult(long);" & _
			"get_DestinationTop hresult(long*);" & _
			"put_DestinationHeight hresult(long);" & _
			"get_DestinationHeight hresult(long*);" & _
			"SetSourcePosition hresult(long;long;long;long);" & _
			"GetSourcePosition hresult(long*;long*;long*;long*);" & _
			"SetDefaultSourcePosition hresult();" & _
			"SetDestinationPosition hresult(long;long;long;long);" & _
			"GetDestinationPosition hresult(long*;long*;long*;long*);" & _
			"SetDefaultDestinationPosition hresult();" & _
			"GetVideoSize hresult(long*;long*);" & _
			"GetVideoPaletteEntries hresult(long;long;long*;long*);" & _
			"GetCurrentImage hresult(long*;long*);" & _
			"IsUsingDefaultSource hresult();" & _
			"IsUsingDefaultDestination hresult();" ; IBasicVideo
	;===============================END=============================================
	;===============================================================================
		global const $sIID_IPropertyBag =  '{55272a00-42cb-11ce-8135-00aa004bb851}';
		;define PropertyBag
		global const $tagIPropertyBag = 'Read hresult(wstr;variant*;ptr*);' & _
			'Write hresult(wstr;variant);'
	;===============================END=============================================
	;===============================================================================
		global const $sIID_IVMRWindowlessControl 	= '{0eb1088c-4dcd-46f0-878f-39dae86a51b7}'
		;define
		global const $tagIVMRWindowlessControl = 'GetNativeVideoSize hresult(long*;long*;long*;long*);' & _
			'GetMinIdealVideoSize hresult(long*;long*);' & _
			'GetMaxIdealVideoSize hresult(long*;long*);' & _
			'SetVideoPosition hresult(ptr;ptr);' & _
			'GetVideoPosition hresult(ptr*;ptr*);' & _
			'GetAspectRatioMode hresult(dword*);' & _
			'SetAspectRatioMode hresult(dword);' & _
			'SetVideoClippingWindow hresult(hwnd);' & _
			'RepaintVideo hresult(hwnd;handle);' & _
			'DisplayModeChanged hresult();' & _
			'GetCurrentImage hresult(byte*);' & _
			'SetBorderColor hresult(clr);' & _
			'GetBorderColor hresult(clr*);' & _
			'SetColorKey hresult(clr);' & _
			'GetColorKey hresult(clr*);'
	;===============================END=============================================
	;===============================================================================
		global const $sIID_IVMRFilterConfig 		= '{9e5530c5-7034-48b4-bb46-0b8a6efc8e36}'
		;define
		global const $tagIVMRFilterConfig = 'SetImageCompositor hresult(ptr);' & _
			'GetNumberOfStreams hresult(dword*);' & _
			'SetRenderingPrefs hresult(dword);' & _
			'GetRenderingPrefs hresult(dword*);' & _
			'SetRenderingMode hresult(dword);' & _
			'GetrenderingMode hresult(dword*);'
	;===============================END=============================================
	;===============================================================================
		global const $sIID_IAMStreamConfig = '{c6e13340-30ac-11d0-a18c-00a0c9118956}'
		;define IAMStreamConfig interface
		global Const $tagIAMStreamConfig = 'SetFormat hresult(ptr);' & _
			'GetFormat hresult(ptr*);' & _
			'GetNumberOfCapabilities hresult(int*;int*);' & _
			'GetStreamCaps hresult(int;ptr*;struct*);'
	;===============================END=============================================

	;===============================================================================
		global const $sIID_IAMVideoCompression = '{c6e13343-30ac-11d0-a18c-00a0c9118956}'
		;define IAMVideoCompression interface
		global const $tagIAMVideoCompression = 'put_KeyFrameRate hresult(int);' & _
			'get_KeyFrameRate hresult(int*);' & _
			'put_PFramesPerKeyFrame hresult(int);' & _
			'get_PFramesPerKeyFrame hresult(int*);' & _
			'put_Quality hresult(double);' & _
			'get_Quality hresult(double*);' & _
			'put_WindowSize hresult();' & _
			'get_WindowSize hresult(uint64*);' & _
			'getInfo hresult(ptr*;int;ptr*;int*;int*;int*;double*;int*);' & _
			'OverrideKeyFrame hresult(int);' & _
			'OverrideFrameSize hresult(int;int);'
			;~ 			'getInfo hresult(wstr*;int;wstr*;int*;int*;int*;double*;int*);' & _
	;===============================END=============================================
	;===============================================================================
		global const $sIID_IEnumPins = '{56a86892-0ad4-11ce-b03a-0020af0ba770}'
		;define IEnumPins interface
		global const $tagIEnumPins = 'Next hresult(dword;ptr*;dword*);' & _
			'Skip hresult(dword);' & _
			'Reset hresult();' & _
			'Clone hresult(ptr*);'
	;===============================END=============================================
	;===============================================================================
		global const $sIID_IPin = '{56a86891-0ad4-11ce-b03a-0020af0ba770}'
		;define IPin interface
		global const $tagIPin = 'Connect hresult(ptr;ptr);' & _
			'ReceiveConnection hresult(ptr;ptr);' & _
			'Disconnect hresult();' & _
			'ConnectedTo hresult(ptr*);' & _
			"ConnectionMediaType hresult(ptr*);" & _
			"QueryPinInfo hresult(ptr*);" & _
			"QueryDirection hresult(int*);" & _
			"QueryId hresult(wstr*);" & _
			"QueryAccept hresult(ptr);" & _
			"EnumMediaTypes hresult(ptr*);" & _
			"QueryInternalConnections hresult(ptr*;dword*);" & _
			"EndOfStream hresult();" & _
			"BeginFlush hresult();" & _
			"EndFlush hresult();" & _
			"NewSegment hresult(int64;int64;double);"
	;===============================END=============================================
	;===============================================================================
		global const $sIID_IAMAudioInputMixer = '{54C39221-8380-11d0-B3F0-00AA003761C5}'
		; property... CLSID_AudioInputMixerProperties 2CA8CA52-3C3F-11d2-B73D-00C04FB6BD3D
		;define IAMAudioInputMixer interface
		global const $tagIAMAudioInputMixer = 'put_Enable hresult(bool);' & _
			'get_Enable hresult(bool*);' & _
			'put_Mono hresult(bool);' & _
			'get_Mono hresult(bool*);' & _
			'put_MixLevel hresult(double);' & _
			'get_MixLevel hresult(double*);' & _
			'put_Pan hresult(double);' & _
			'get_Pan hresult(double*);' & _
			'put_Loudness hresult(bool);' & _
			'get_Loudness hresult(bool*);' & _
			'put_Treble hresult(double);' & _
			'get_Treble hresult(double*);' & _
			'get_TrebleRange hresult(double*);' & _
			'put_Bass hresult(double);' & _
			'get_Bass hresult(double*);' & _
			'get_BassRange hresult(double*);'
	;===============================END=============================================

; ############################ end definitions ###############################

