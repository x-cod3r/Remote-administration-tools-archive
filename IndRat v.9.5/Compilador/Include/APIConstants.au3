#Region Header

#cs

    Title:          API Constants UDF Library for AutoIt3
    Filename:       APIConstants.au3
    Description:    Constants that can be used with WinAPIEx UDF library
    Author:         Yashied
    Version:        3.8 / 3.3.8.0
    Requirements:   AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
    Uses:           BorderConstants.au3, Constants.au3, FileConstants.au3, FontConstants.au3, FrameConstants.au3, MemoryConstants.au3, MenuConstants.au3, ProcessConstants.au3, SecurityConstants.au3, WindowsConstants.au3
    Note:           -

#ce

#Include-once

#Include <BorderConstants.au3>
#Include <Constants.au3>
#Include <FileConstants.au3>
#Include <FontConstants.au3>
#Include <FrameConstants.au3>
#Include <MemoryConstants.au3>
#Include <MenuConstants.au3>
#Include <ProcessConstants.au3>
#Include <SecurityConstants.au3>
#Include <WindowsConstants.au3>

#EndRegion Header

#Region Global Variables and Constants

; ===============================================================================================================================
; Standard Access Rights
; ===============================================================================================================================

;Global Const $DELETE = 0x00010000
;Global Const $READ_CONTROL = 0x00020000
;Global Const $WRITE_DAC = 0x00040000
;Global Const $WRITE_OWNER = 0x00080000
;Global Const $SYNCHRONIZE = 0x00100000
Global Const $ACCESS_SYSTEM_SECURITY = 0x01000000

;Global Const $STANDARD_RIGHTS_ALL = BitOR($DELETE, $READ_CONTROL, $SYNCHRONIZE, $WRITE_DAC, $WRITE_OWNER)
;Global Const $STANDARD_RIGHTS_EXECUTE = $READ_CONTROL
;Global Const $STANDARD_RIGHTS_READ = $READ_CONTROL
;Global Const $STANDARD_RIGHTS_REQUIRED = BitOR($DELETE, $READ_CONTROL, $WRITE_DAC, $WRITE_OWNER)
;Global Const $STANDARD_RIGHTS_WRITE = $READ_CONTROL

; ===============================================================================================================================
; Window Classes
; ===============================================================================================================================

Global Const $WC_ANIMATE = 'SysAnimate32'
Global Const $WC_BUTTON = 'Button'
Global Const $WC_COMBOBOX = 'ComboBox'
Global Const $WC_COMBOBOXEX = 'ComboBoxEx32'
Global Const $WC_DATETIMEPICK = 'SysDateTimePick32'
Global Const $WC_EDIT = 'Edit'
Global Const $WC_HEADER = 'SysHeader32'
Global Const $WC_HOTKEY = 'msctls_hotkey32'
Global Const $WC_IPADDRESS = 'SysIPAddress32'
Global Const $WC_LINK = 'SysLink'
Global Const $WC_LISTBOX = 'ListBox'
Global Const $WC_LISTVIEW = 'SysListView32'
Global Const $WC_MONTHCAL = 'SysMonthCal32'
Global Const $WC_NATIVEFONTCTL = 'NativeFontCtl'
Global Const $WC_PAGESCROLLER = 'SysPager'
Global Const $WC_PROGRESS = 'msctls_progress32'
Global Const $WC_REBAR = 'ReBarWindow32'
Global Const $WC_SCROLLBAR = 'ScrollBar'
Global Const $WC_STATIC = 'Static'
Global Const $WC_STATUSBAR = 'msctls_statusbar32'
Global Const $WC_TABCONTROL = 'SysTabControl32'
Global Const $WC_TOOLBAR = 'ToolbarWindow32'
Global Const $WC_TOOLTIPS = 'tooltips_class32'
Global Const $WC_TRACKBAR = 'msctls_trackbar32'
Global Const $WC_TREEVIEW = 'SysTreeView32'
Global Const $WC_UPDOWN = 'msctls_updown32'

; ===============================================================================================================================
; Dialog Box Styles
; ===============================================================================================================================

Global Const $DS_3DLOOK = 0x0004
Global Const $DS_ABSALIGN = 0x0001
Global Const $DS_CENTER = 0x0800
Global Const $DS_CENTERMOUSE = 0x1000
;Global Const $DS_CONTEXTHELP = 0x2000
Global Const $DS_CONTROL = 0x0400
Global Const $DS_FIXEDSYS = 0x0008
Global Const $DS_LOCALEDIT = 0x0020
;Global Const $DS_MODALFRAME = 0x0080
Global Const $DS_NOFAILCREATE = 0x0010
Global Const $DS_NOIDLEMSG = 0x0100
Global Const $DS_SETFONT = 0x0040
;Global Const $DS_SETFOREGROUND = 0x0200
Global Const $DS_SHELLFONT = BitOR($DS_FIXEDSYS, $DS_SETFONT)
Global Const $DS_SYSMODAL = 0x0002

; ===============================================================================================================================
; Window Styles
; ===============================================================================================================================

;Global Const $WS_BORDER = 0x00800000
;Global Const $WS_CAPTION = 0x00C00000
;Global Const $WS_CHILD = 0x40000000
Global Const $WS_CHILDWINDOW = $WS_CHILD
;Global Const $WS_CLIPCHILDREN = 0x02000000
;Global Const $WS_CLIPSIBLINGS = 0x04000000
;Global Const $WS_DISABLED = 0x08000000
;Global Const $WS_DLGFRAME = 0x00400000
;Global Const $WS_GROUP = 0x00020000
;Global Const $WS_HSCROLL = 0x00100000
Global Const $WS_ICONIC = 0x20000000
;Global Const $WS_MAXIMIZE = 0x01000000
;Global Const $WS_MAXIMIZEBOX = 0x00010000
;Global Const $WS_MINIMIZE = $WS_ICONIC
;Global Const $WS_MINIMIZEBOX = 0x00020000
;Global Const $WS_OVERLAPPED = 0x00000000
;Global Const $WS_OVERLAPPEDWINDOW = BitOR($WS_CAPTION, $WS_MAXIMIZEBOX, $WS_MINIMIZEBOX, $WS_OVERLAPPED, $WS_SYSMENU, $WS_THICKFRAME)
;Global Const $WS_POPUP = 0x80000000
;Global Const $WS_POPUPWINDOW = BitOR($WS_BORDER, $WS_POPUP, $WS_SYSMENU)
;Global Const $WS_SIZEBOX = 0x00040000
;Global Const $WS_SYSMENU = 0x00080000
;Global Const $WS_TABSTOP = 0x00010000
;Global Const $WS_THICKFRAME = $WS_SIZEBOX
;Global Const $WS_TILED = $WS_OVERLAPPED
;Global Const $WS_TILEDWINDOW = $WS_OVERLAPPEDWINDOW
;Global Const $WS_VISIBLE = 0x10000000
;Global Const $WS_VSCROLL = 0x00200000

; ===============================================================================================================================
; Extended Window Styles
; ===============================================================================================================================

;Global Const $WS_EX_ACCEPTFILES = 0x00000010
;Global Const $WS_EX_APPWINDOW = 0x00040000
;Global Const $WS_EX_CLIENTEDGE = 0x00000200
;Global Const $WS_EX_COMPOSITED = 0x02000000
;Global Const $WS_EX_CONTEXTHELP = 0x00000400
;Global Const $WS_EX_CONTROLPARENT = 0x00010000
;Global Const $WS_EX_DLGMODALFRAME = 0x00000001
;Global Const $WS_EX_LAYERED = 0x00080000
;Global Const $WS_EX_LAYOUTRTL = 0x00400000
Global Const $WS_EX_LEFT = 0x00000000
;Global Const $WS_EX_LEFTSCROLLBAR = 0x00004000
Global Const $WS_EX_LTRREADING = 0x00000000
;Global Const $WS_EX_MDICHILD = 0x00000040
Global Const $WS_EX_NOACTIVATE = 0x08000000
Global Const $WS_EX_NOINHERITLAYOUT = 0x00100000
Global Const $WS_EX_NOPARENTNOTIFY = 0x00000004
;Global Const $WS_EX_OVERLAPPEDWINDOW = BitOR($WS_EX_CLIENTEDGE, $WS_EX_WINDOWEDGE)
Global Const $WS_EX_PALETTEWINDOW = BitOR($WS_EX_TOOLWINDOW, $WS_EX_TOPMOST, $WS_EX_WINDOWEDGE)
;Global Const $WS_EX_RIGHT = 0x00001000
Global Const $WS_EX_RIGHTSCROLLBAR = 0x00000000
;Global Const $WS_EX_RTLREADING = 0x00002000
;Global Const $WS_EX_STATICEDGE = 0x00020000
;Global Const $WS_EX_TOOLWINDOW = 0x00000080
;Global Const $WS_EX_TOPMOST = 0x00000008
;Global Const $WS_EX_TRANSPARENT = 0x00000020
;Global Const $WS_EX_WINDOWEDGE = 0x00000100

; ===============================================================================================================================
; Window Messages
; ===============================================================================================================================

Global Const $WM_NULL = 0x0000
;Global Const $WM_CREATE = 0x0001
;Global Const $WM_DESTROY = 0x0002
;Global Const $WM_MOVE = 0x0003
Global Const $WM_SIZEWAIT = 0x0004
;Global Const $WM_SIZE = 0x0005
;Global Const $WM_ACTIVATE = 0x0006
;Global Const $WM_SETFOCUS = 0x0007
;Global Const $WM_KILLFOCUS = 0x0008
Global Const $WM_SETVISIBLE = 0x0009
;Global Const $WM_ENABLE = 0x000A
;Global Const $WM_SETREDRAW = 0x000B
;Global Const $WM_SETTEXT = 0x000C
;Global Const $WM_GETTEXT = 0x000D
;Global Const $WM_GETTEXTLENGTH = 0x000E
;Global Const $WM_PAINT = 0x000F
;Global Const $WM_CLOSE = 0x0010
;Global Const $WM_QUERYENDSESSION = 0x0011
;Global Const $WM_QUIT = 0x0012
;Global Const $WM_QUERYOPEN = 0x0013
;Global Const $WM_ERASEBKGND = 0x0014
;Global Const $WM_SYSCOLORCHANGE = 0x0015
;Global Const $WM_ENDSESSION = 0x0016
Global Const $WM_SYSTEMERROR = 0x0017
;Global Const $WM_SHOWWINDOW = 0x0018
;Global Const $WM_CTLCOLOR = 0x0019
;Global Const $WM_SETTINGCHANGE = 0x001A
;Global Const $WM_DEVMODECHANGE = 0x001B
;Global Const $WM_ACTIVATEAPP = 0x001C
;Global Const $WM_FONTCHANGE = 0x001D
;Global Const $WM_TIMECHANGE = 0x001E
;Global Const $WM_CANCELMODE = 0x001F
;Global Const $WM_SETCURSOR = 0x0020
;Global Const $WM_MOUSEACTIVATE = 0x0021
;Global Const $WM_CHILDACTIVATE = 0x0022
;Global Const $WM_QUEUESYNC = 0x0023
;Global Const $WM_GETMINMAXINFO = 0x0024
Global Const $WM_LOGOFF = 0x0025
;Global Const $WM_PAINTICON = 0x0026
;Global Const $WM_ICONERASEBKGND = 0x0027
;Global Const $WM_NEXTDLGCTL = 0x0028
Global Const $WM_ALTTABACTIVE = 0x0029
;Global Const $WM_SPOOLERSTATUS = 0x002A
;Global Const $WM_DRAWITEM = 0x002B
;Global Const $WM_MEASUREITEM = 0x002C
;Global Const $WM_DELETEITEM = 0x002D
;Global Const $WM_VKEYTOITEM = 0x002E
;Global Const $WM_CHARTOITEM = 0x002F
;Global Const $WM_SETFONT = 0x0030
;Global Const $WM_GETFONT = 0x0031
;Global Const $WM_SETHOTKEY = 0x0032
;Global Const $WM_GETHOTKEY = 0x0033
Global Const $WM_FILESYSCHANGE = 0x0034
Global Const $WM_ISACTIVEICON = 0x0035
Global Const $WM_QUERYPARKICON = 0x0036
;Global Const $WM_QUERYDRAGICON = 0x0037
Global Const $WM_WINHELP = 0x0038
;Global Const $WM_COMPAREITEM = 0x0039
Global Const $WM_FULLSCREEN = 0x003A
Global Const $WM_CLIENTSHUTDOWN = 0x003B
Global Const $WM_DDEMLEVENT = 0x003C
;Global Const $WM_GETOBJECT = 0x003D
Global Const $WM_CALCSCROLL = 0x003F
Global Const $WM_TESTING = 0x0040
;Global Const $WM_COMPACTING = 0x0041
Global Const $WM_OTHERWINDOWCREATED = 0x0042
Global Const $WM_OTHERWINDOWDESTROYED = 0x0043
;Global Const $WM_COMMNOTIFY = 0x0044
Global Const $WM_MEDIASTATUSCHANGE = 0x0045
;Global Const $WM_WINDOWPOSCHANGING = 0x0046
;Global Const $WM_WINDOWPOSCHANGED = 0x0047
;Global Const $WM_POWER = 0x0048
Global Const $WM_COPYGLOBALDATA = 0x0049
;Global Const $WM_COPYDATA = 0x004A
;Global Const $WM_CANCELJOURNAL = 0x004B
Global Const $WM_LOGONNOTIFY = 0x004C
Global Const $WM_KEYF1 = 0x004D
;Global Const $WM_NOTIFY = 0x004E
Global Const $WM_ACCESS_WINDOW = 0x004F
;Global Const $WM_INPUTLANGCHANGEREQUEST = 0x0050
;Global Const $WM_INPUTLANGCHANGE = 0x0051
;Global Const $WM_TCARD = 0x0052
;Global Const $WM_HELP = 0x0053
;Global Const $WM_USERCHANGED = 0x0054
;Global Const $WM_NOTIFYFORMAT = 0x0055
Global Const $WM_QM_ACTIVATE = 0x0060
Global Const $WM_HOOK_DO_CALLBACK = 0x0061
Global Const $WM_SYSCOPYDATA = 0x0062
Global Const $WM_FINALDESTROY = 0x0070
Global Const $WM_MEASUREITEM_CLIENTDATA = 0x0071
;Global Const $WM_CONTEXTMENU = 0x007B
;Global Const $WM_STYLECHANGING = 0x007C
;Global Const $WM_STYLECHANGED = 0x007D
;Global Const $WM_DISPLAYCHANGE = 0x007E
;Global Const $WM_GETICON = 0x007F
;Global Const $WM_SETICON = 0x0080
;Global Const $WM_NCCREATE = 0x0081
;Global Const $WM_NCDESTROY = 0x0082
;Global Const $WM_NCCALCSIZE = 0x0083
;Global Const $WM_NCHITTEST = 0x0084
;Global Const $WM_NCPAINT = 0x0085
;Global Const $WM_NCACTIVATE = 0x0086
;Global Const $WM_GETDLGCODE = 0x0087
;Global Const $WM_SYNCPAINT = 0x0088
Global Const $WM_SYNCTASK = 0x0089
Global Const $WM_KLUDGEMINRECT = 0x008B
Global Const $WM_LPKDRAWSWITCHWND = 0x008C
Global Const $WM_UAHDESTROYWINDOW = 0x0090
Global Const $WM_UAHDRAWMENU = 0x0091
Global Const $WM_UAHDRAWMENUITEM = 0x0092
Global Const $WM_UAHINITMENU = 0x0093
Global Const $WM_UAHMEASUREMENUITEM = 0x0094
Global Const $WM_UAHNCPAINTMENUPOPUP = 0x0095
;Global Const $WM_NCMOUSEMOVE = 0x00A0
;Global Const $WM_NCLBUTTONDOWN = 0x00A1
;Global Const $WM_NCLBUTTONUP = 0x00A2
;Global Const $WM_NCLBUTTONDBLCLK = 0x00A3
;Global Const $WM_NCRBUTTONDOWN = 0x00A4
;Global Const $WM_NCRBUTTONUP = 0x00A5
;Global Const $WM_NCRBUTTONDBLCLK = 0x00A6
;Global Const $WM_NCMBUTTONDOWN = 0x00A7
;Global Const $WM_NCMBUTTONUP = 0x00A8
;Global Const $WM_NCMBUTTONDBLCLK = 0x00A9
;Global Const $WM_NCXBUTTONDOWN = 0x00AB
;Global Const $WM_NCXBUTTONUP = 0x00AC
;Global Const $WM_NCXBUTTONDBLCLK = 0x00AD
Global Const $WM_NCUAHDRAWCAPTION = 0x00AE
Global Const $WM_NCUAHDRAWFRAME = 0x00AF
Global Const $WM_INPUT_DEVICE_CHANGE = 0x00FE
Global Const $WM_INPUT = 0x00FF
;Global Const $WM_KEYDOWN = 0x0100
;Global Const $WM_KEYUP = 0x0101
;Global Const $WM_CHAR = 0x0102
;Global Const $WM_DEADCHAR = 0x0103
;Global Const $WM_SYSKEYDOWN = 0x0104
;Global Const $WM_SYSKEYUP = 0x0105
;Global Const $WM_SYSCHAR = 0x0106
;Global Const $WM_SYSDEADCHAR = 0x0107
Global Const $WM_YOMICHAR = 0x0108
;Global Const $WM_UNICHAR = 0x0109
Global Const $WM_CONVERTREQUEST = 0x010A
Global Const $WM_CONVERTRESULT = 0x010B
Global Const $WM_IM_INFO = 0x010C
;Global Const $WM_IME_STARTCOMPOSITION = 0x010D
;Global Const $WM_IME_ENDCOMPOSITION = 0x010E
;Global Const $WM_IME_COMPOSITION = 0x010F
;Global Const $WM_INITDIALOG = 0x0110
;Global Const $WM_COMMAND = 0x0111
;Global Const $WM_SYSCOMMAND = 0x0112
;Global Const $WM_TIMER = 0x0113
;Global Const $WM_HSCROLL = 0x0114
;Global Const $WM_VSCROLL = 0x0115
;Global Const $WM_INITMENU = 0x0116
;Global Const $WM_INITMENUPOPUP = 0x0117
Global Const $WM_SYSTIMER = 0x0118
Global Const $WM_GESTURE = 0x0119
Global Const $WM_GESTURENOTIFY = 0x011A
Global Const $WM_GESTUREINPUT = 0x011B
Global Const $WM_GESTURENOTIFIED = 0x011C
;Global Const $WM_MENUSELECT = 0x011F
;Global Const $WM_MENUCHAR = 0x0120
;Global Const $WM_ENTERIDLE = 0x0121
;Global Const $WM_MENURBUTTONUP = 0x0122
;Global Const $WM_MENUDRAG = 0x0123
;Global Const $WM_MENUGETOBJECT = 0x0124
;Global Const $WM_UNINITMENUPOPUP = 0x0125
;Global Const $WM_MENUCOMMAND = 0x0126
;Global Const $WM_CHANGEUISTATE = 0x0127
;Global Const $WM_UPDATEUISTATE = 0x0128
;Global Const $WM_QUERYUISTATE = 0x0129
Global Const $WM_LBTRACKPOINT = 0x0131
;Global Const $WM_CTLCOLORMSGBOX = 0x0132
;Global Const $WM_CTLCOLOREDIT = 0x0133
;Global Const $WM_CTLCOLORLISTBOX = 0x0134
;Global Const $WM_CTLCOLORBTN = 0x0135
;Global Const $WM_CTLCOLORDLG = 0x0136
;Global Const $WM_CTLCOLORSCROLLBAR = 0x0137
;Global Const $WM_CTLCOLORSTATIC = 0x0138
;Global Const $WM_MOUSEMOVE = 0x0200
;Global Const $WM_LBUTTONDOWN = 0x0201
;Global Const $WM_LBUTTONUP = 0x0202
;Global Const $WM_LBUTTONDBLCLK = 0x0203
;Global Const $WM_RBUTTONDOWN = 0x0204
;Global Const $WM_RBUTTONUP = 0x0205
;Global Const $WM_RBUTTONDBLCLK = 0x0206
;Global Const $WM_MBUTTONDOWN = 0x0207
;Global Const $WM_MBUTTONUP = 0x0208
;Global Const $WM_MBUTTONDBLCLK = 0x0209
;Global Const $WM_MOUSEWHEEL = 0x020A
;Global Const $WM_XBUTTONDOWN = 0x020B
;Global Const $WM_XBUTTONUP = 0x020C
;Global Const $WM_XBUTTONDBLCLK = 0x020D
;Global Const $WM_MOUSEHWHEEL = 0x020E
;Global Const $WM_PARENTNOTIFY = 0x0210
;Global Const $WM_ENTERMENULOOP = 0x0211
;Global Const $WM_EXITMENULOOP = 0x0212
;Global Const $WM_NEXTMENU = 0x0213
;Global Const $WM_SIZING = 0x0214
;Global Const $WM_CAPTURECHANGED = 0x0215
;Global Const $WM_MOVING = 0x0216
;Global Const $WM_POWERBROADCAST = 0x0218
;Global Const $WM_DEVICECHANGE = 0x0219
;Global Const $WM_MDICREATE = 0x0220
;Global Const $WM_MDIDESTROY = 0x0221
;Global Const $WM_MDIACTIVATE = 0x0222
;Global Const $WM_MDIRESTORE = 0x0223
;Global Const $WM_MDINEXT = 0x0224
;Global Const $WM_MDIMAXIMIZE = 0x0225
;Global Const $WM_MDITILE = 0x0226
;Global Const $WM_MDICASCADE = 0x0227
;Global Const $WM_MDIICONARRANGE = 0x0228
;Global Const $WM_MDIGETACTIVE = 0x0229
Global Const $WM_DROPOBJECT = 0x022A
Global Const $WM_QUERYDROPOBJECT = 0x022B
Global Const $WM_BEGINDRAG = 0x022C
Global Const $WM_DRAGLOOP = 0x022D
Global Const $WM_DRAGSELECT = 0x022E
Global Const $WM_DRAGMOVE = 0x022F
;Global Const $WM_MDISETMENU = 0x0230
;Global Const $WM_ENTERSIZEMOVE = 0x0231
;Global Const $WM_EXITSIZEMOVE = 0x0232
;Global Const $WM_DROPFILES = 0x0233
;Global Const $WM_MDIREFRESHMENU = 0x0234
Global Const $WM_TOUCH = 0x0240
;Global Const $WM_IME_SETCONTEXT = 0x0281
;Global Const $WM_IME_NOTIFY = 0x0282
;Global Const $WM_IME_CONTROL = 0x0283
;Global Const $WM_IME_COMPOSITIONFULL = 0x0284
;Global Const $WM_IME_SELECT = 0x0285
;Global Const $WM_IME_CHAR = 0x0286
Global Const $WM_IME_SYSTEM = 0x0287
;Global Const $WM_IME_REQUEST = 0x0288
;Global Const $WM_IME_KEYDOWN = 0x0290
;Global Const $WM_IME_KEYUP = 0x0291
;Global Const $WM_NCMOUSEHOVER = 0x02A0
;Global Const $WM_MOUSEHOVER = 0x02A1
;Global Const $WM_NCMOUSELEAVE = 0x02A2
;Global Const $WM_MOUSELEAVE = 0x02A3
;Global Const $WM_WTSSESSION_CHANGE = 0x02B1
;Global Const $WM_TABLET_FIRST = 0x02C0
;Global Const $WM_TABLET_LAST = 0x02DF
;Global Const $WM_CUT = 0x0300
;Global Const $WM_COPY = 0x0301
;Global Const $WM_PASTE = 0x0302
;Global Const $WM_CLEAR = 0x0303
;Global Const $WM_UNDO = 0x0304
;Global Const $WM_RENDERFORMAT = 0x0305
;Global Const $WM_RENDERALLFORMATS = 0x0306
;Global Const $WM_DESTROYCLIPBOARD = 0x0307
;Global Const $WM_DRAWCLIPBOARD = 0x0308
;Global Const $WM_PAINTCLIPBOARD = 0x0309
;Global Const $WM_VSCROLLCLIPBOARD = 0x030A
;Global Const $WM_SIZECLIPBOARD = 0x030B
;Global Const $WM_ASKCBFORMATNAME = 0x030C
;Global Const $WM_CHANGECBCHAIN = 0x030D
;Global Const $WM_HSCROLLCLIPBOARD = 0x030E
;Global Const $WM_QUERYNEWPALETTE = 0x030F
;Global Const $WM_PALETTEISCHANGING = 0x0310
;Global Const $WM_PALETTECHANGED = 0x0311
;Global Const $WM_HOTKEY = 0x0312
Global Const $WM_SYSMENU = 0x0313
Global Const $WM_HOOKMSG = 0x0314
Global Const $WM_EXITPROCESS = 0x0315
Global Const $WM_WAKETHREAD = 0x0316
;Global Const $WM_PRINT = 0x0317
;Global Const $WM_PRINTCLIENT = 0x0318
;Global Const $WM_APPCOMMAND = 0x0319
;Global Const $WM_THEMECHANGED = 0x031A
Global Const $WM_UAHINIT = 0x031B
Global Const $WM_DESKTOPNOTIFY = 0x031C
Global Const $WM_CLIPBOARDUPDATE = 0x031D
Global Const $WM_DWMCOMPOSITIONCHANGED = 0x031E
Global Const $WM_DWMNCRENDERINGCHANGED = 0x031F
Global Const $WM_DWMCOLORIZATIONCOLORCHANGED = 0x0320
Global Const $WM_DWMWINDOWMAXIMIZEDCHANGE = 0x0321
Global Const $WM_DWMEXILEFRAME = 0x0322
Global Const $WM_DWMSENDICONICTHUMBNAIL = 0x0323
Global Const $WM_MAGNIFICATION_STARTED = 0x0324
Global Const $WM_MAGNIFICATION_ENDED = 0x0325
Global Const $WM_DWMSENDICONICLIVEPREVIEWBITMAP = 0x0326
Global Const $WM_DWMTHUMBNAILSIZECHANGED = 0x0327
Global Const $WM_MAGNIFICATION_OUTPUT = 0x0328
Global Const $WM_MEASURECONTROL = 0x0330
Global Const $WM_GETACTIONTEXT = 0x0331
Global Const $WM_FORWARDKEYDOWN = 0x0333
Global Const $WM_FORWARDKEYUP = 0x0334
Global Const $WM_GETTITLEBARINFOEX = 0x033F
Global Const $WM_NOTIFYWOW = 0x0340
;Global Const $WM_HANDHELDFIRST = 0x0358
;Global Const $WM_HANDHELDLAST = 0x035F
;Global Const $WM_AFXFIRST = 0x0360
;Global Const $WM_AFXLAST = 0x037F
;Global Const $WM_PENWINFIRST = 0x0380
;Global Const $WM_PENWINLAST = 0x038F
Global Const $WM_DDE_INITIATE = 0x03E0
Global Const $WM_DDE_TERMINATE = 0x03E1
Global Const $WM_DDE_ADVISE = 0x03E2
Global Const $WM_DDE_UNADVISE = 0x03E3
Global Const $WM_DDE_ACK = 0x03E4
Global Const $WM_DDE_DATA = 0x03E5
Global Const $WM_DDE_REQUEST = 0x03E6
Global Const $WM_DDE_POKE = 0x03E7
Global Const $WM_DDE_EXECUTE = 0x03E8
Global Const $WM_DBNOTIFICATION = 0x03FD
Global Const $WM_NETCONNECT = 0x03FE
Global Const $WM_HIBERNATE = 0x03FF
;Global Const $WM_USER = 0x0400

; ===============================================================================================================================
; Common HRESULT errors
; ===============================================================================================================================

Global Const $S_OK = 0x00000000
Global Const $E_ABORT = 0x80004004
Global Const $E_ACCESSDENIED = 0x80070005
Global Const $E_FAIL = 0x80004005
Global Const $E_HANDLE = 0x80070006
;Global Const $E_INVALIDARG = 0x80070057
Global Const $E_NOINTERFACE = 0x80004002
Global Const $E_NOTIMPL = 0x80004001
Global Const $E_OUTOFMEMORY = 0x8007000E
Global Const $E_POINTER = 0x80004003
Global Const $E_UNEXPECTED = 0x8000FFFF

; ===============================================================================================================================
; DEVMODE structure
; ===============================================================================================================================

Global Const $DM_BITSPERPEL = 0x00040000
Global Const $DM_COLLATE = 0x0008000
Global Const $DM_COLOR = 0x00000800
Global Const $DM_COPIES = 0x00000100
Global Const $DM_DEFAULTSOURCE = 0x00000200
Global Const $DM_DISPLAYFIXEDOUTPUT = 0x20000000
Global Const $DM_DISPLAYFLAGS = 0x00200000
Global Const $DM_DISPLAYFREQUENCY = 0x00400000
Global Const $DM_DISPLAYORIENTATION = 0x00000080
Global Const $DM_DITHERTYPE = 0x04000000
Global Const $DM_DUPLEX = 0x0001000
Global Const $DM_FORMNAME = 0x00010000
Global Const $DM_ICMINTENT = 0x01000000
Global Const $DM_ICMMETHOD = 0x00800000
Global Const $DM_LOGPIXELS = 0x00020000
Global Const $DM_MEDIATYPE = 0x02000000
Global Const $DM_NUP = 0x00000040
Global Const $DM_ORIENTATION = 0x00000001
Global Const $DM_PANNINGHEIGHT = 0x10000000
Global Const $DM_PANNINGWIDTH = 0x08000000
Global Const $DM_PAPERLENGTH = 0x00000004
Global Const $DM_PAPERSIZE = 0x00000002
Global Const $DM_PAPERWIDTH = 0x00000008
Global Const $DM_PELSHEIGHT = 0x00100000
Global Const $DM_PELSWIDTH = 0x00080000
Global Const $DM_POSITION = 0x00000020
Global Const $DM_PRINTQUALITY = 0x00000400
Global Const $DM_SCALE = 0x00000010
Global Const $DM_TTOPTION = 0x0004000
Global Const $DM_YRESOLUTION = 0x0002000

Global Const $DMPAPER_LETTER = 1 ; US Letter 8 1/2 x 11 in
Global Const $DMPAPER_LETTERSMALL = 2 ; US Letter Small 8 1/2 x 11 in
Global Const $DMPAPER_TABLOID = 3 ; US Tabloid 11 x 17 in
Global Const $DMPAPER_LEDGER = 4 ; US Ledger 17 x 11 in
Global Const $DMPAPER_LEGAL = 5 ; US Legal 8 1/2 x 14 in
Global Const $DMPAPER_STATEMENT = 6 ; US Statement 5 1/2 x 8 1/2 in
Global Const $DMPAPER_EXECUTIVE = 7 ; US Executive 7 1/4 x 10 1/2 in
Global Const $DMPAPER_A3 = 8 ; A3 297 x 420 mm
Global Const $DMPAPER_A4 = 9 ; A4 210 x 297 mm
Global Const $DMPAPER_A4SMALL = 10 ; A4 Small 210 x 297 mm
Global Const $DMPAPER_A5 = 11 ; A5 148 x 210 mm
Global Const $DMPAPER_B4 = 12 ; B4 (JIS) 257 x 364 mm
Global Const $DMPAPER_B5 = 13 ; B5 (JIS) 182 x 257 mm
Global Const $DMPAPER_FOLIO = 14 ; Folio 8 1/2 x 13 in
Global Const $DMPAPER_QUARTO = 15 ; Quarto 215 x 275 mm
Global Const $DMPAPER_10X14 = 16 ; 10 x 14 in
Global Const $DMPAPER_11X17 = 17 ; 11 x 17 in
Global Const $DMPAPER_NOTE = 18 ; US Note 8 1/2 x 11 in
Global Const $DMPAPER_ENV_9 = 19 ; US Envelope #9 3 7/8 x 8 7/8
Global Const $DMPAPER_ENV_10 = 20 ; US Envelope #10 4 1/8 x 9 1/2
Global Const $DMPAPER_ENV_11 = 21 ; US Envelope #11 4 1/2 x 10 3/8
Global Const $DMPAPER_ENV_12 = 22 ; US Envelope #12 4 3/4 x 11 in
Global Const $DMPAPER_ENV_14 = 23 ; US Envelope #14 5 x 11 1/2
Global Const $DMPAPER_CSHEET = 24 ; C size sheet
Global Const $DMPAPER_DSHEET = 25 ; D size sheet
Global Const $DMPAPER_ESHEET = 26 ; E size sheet
Global Const $DMPAPER_ENV_DL = 27 ; Envelope DL 110 x 220mm
Global Const $DMPAPER_ENV_C5 = 28 ; Envelope C5 162 x 229 mm
Global Const $DMPAPER_ENV_C3 = 29 ; Envelope C3 324 x 458 mm
Global Const $DMPAPER_ENV_C4 = 30 ; Envelope C4 229 x 324 mm
Global Const $DMPAPER_ENV_C6 = 31 ; Envelope C6 114 x 162 mm
Global Const $DMPAPER_ENV_C65 = 32 ; Envelope C65 114 x 229 mm
Global Const $DMPAPER_ENV_B4 = 33 ; Envelope B4 250 x 353 mm
Global Const $DMPAPER_ENV_B5 = 34 ; Envelope B5 176 x 250 mm
Global Const $DMPAPER_ENV_B6 = 35 ; Envelope B6 176 x 125 mm
Global Const $DMPAPER_ENV_ITALY = 36 ; Envelope 110 x 230 mm
Global Const $DMPAPER_ENV_MONARCH = 37 ; US Envelope Monarch 3.875 x 7.5 in
Global Const $DMPAPER_ENV_PERSONAL = 38 ; 6 3/4 US Envelope 3 5/8 x 6 1/2 in
Global Const $DMPAPER_FANFOLD_US = 39 ; US Std Fanfold 14 7/8 x 11 in
Global Const $DMPAPER_FANFOLD_STD_GERMAN = 40 ; German Std Fanfold 8 1/2 x 12 in
Global Const $DMPAPER_FANFOLD_LGL_GERMAN = 41 ; German Legal Fanfold 8 1/2 x 13 in
Global Const $DMPAPER_ISO_B4 = 42 ; B4 (ISO) 250 x 353 mm
Global Const $DMPAPER_JAPANESE_POSTCARD = 43 ; Japanese Postcard 100 x 148 mm
Global Const $DMPAPER_9X11 = 44 ; 9 x 11 in
Global Const $DMPAPER_10X11 = 45 ; 10 x 11 in
Global Const $DMPAPER_15X11 = 46 ; 15 x 11 in
Global Const $DMPAPER_ENV_INVITE = 47 ; Envelope Invite 220 x 220 mm
Global Const $DMPAPER_RESERVED_48 = 48 ; Reserved
Global Const $DMPAPER_RESERVED_49 = 49 ; Reserved
Global Const $DMPAPER_LETTER_EXTRA = 50 ; US Letter Extra 9 1/2 x 12 in
Global Const $DMPAPER_LEGAL_EXTRA = 51 ; US Legal Extra 9 1/2 x 15 in
Global Const $DMPAPER_TABLOID_EXTRA = 52 ; US Tabloid Extra 11.69 x 18 in
Global Const $DMPAPER_A4_EXTRA = 53 ; A4 Extra 9.27 x 12.69 in
Global Const $DMPAPER_LETTER_TRANSVERSE = 54 ; Letter Transverse 8 1/2 x 11 in
Global Const $DMPAPER_A4_TRANSVERSE = 55 ; A4 Transverse 210 x 297 mm
Global Const $DMPAPER_LETTER_EXTRA_TRANSVERSE = 56 ; Letter Extra Transverse 9 1/2 x 12 in
Global Const $DMPAPER_A_PLUS = 57 ; SuperA/SuperA/A4 227 x 356 mm
Global Const $DMPAPER_B_PLUS = 58 ; SuperB/SuperB/A3 305 x 487 mm
Global Const $DMPAPER_LETTER_PLUS = 59 ; US Letter Plus 8.5 x 12.69 in
Global Const $DMPAPER_A4_PLUS = 60 ; A4 Plus 210 x 330 mm
Global Const $DMPAPER_A5_TRANSVERSE = 61 ; A5 Transverse 148 x 210 mm
Global Const $DMPAPER_B5_TRANSVERSE = 62 ; B5 (JIS) Transverse 182 x 257 mm
Global Const $DMPAPER_A3_EXTRA = 63 ; A3 Extra 322 x 445 mm
Global Const $DMPAPER_A5_EXTRA = 64 ; A5 Extra 174 x 235 mm
Global Const $DMPAPER_B5_EXTRA = 65 ; B5 (ISO) Extra 201 x 276 mm
Global Const $DMPAPER_A2 = 66 ; A2 420 x 594 mm
Global Const $DMPAPER_A3_TRANSVERSE = 67 ; A3 Transverse 297 x 420 mm
Global Const $DMPAPER_A3_EXTRA_TRANSVERSE = 68 ; A3 Extra Transverse 322 x 445 mm
Global Const $DMPAPER_DBL_JAPANESE_POSTCARD = 69 ; Japanese Double Postcard 200 x 148 mm
Global Const $DMPAPER_A6 = 70 ; A6 105 x 148 mm
Global Const $DMPAPER_JENV_KAKU2 = 71 ; Japanese Envelope Kaku #2
Global Const $DMPAPER_JENV_KAKU3 = 72  ; Japanese Envelope Kaku #3
Global Const $DMPAPER_JENV_CHOU3 = 73 ; Japanese Envelope Chou #3
Global Const $DMPAPER_JENV_CHOU4 = 74 ; Japanese Envelope Chou #4
Global Const $DMPAPER_LETTER_ROTATED = 75 ; Letter Rotated 11 x 8 1/2 11 in
Global Const $DMPAPER_A3_ROTATED = 76 ; A3 Rotated 420 x 297 mm
Global Const $DMPAPER_A4_ROTATED = 77 ; A4 Rotated 297 x 210 mm
Global Const $DMPAPER_A5_ROTATED = 78 ; A5 Rotated 210 x 148 mm
Global Const $DMPAPER_B4_JIS_ROTATED = 79 ; B4 (JIS) Rotated 364 x 257 mm
Global Const $DMPAPER_B5_JIS_ROTATED = 80 ; B5 (JIS) Rotated 257 x 182 mm
Global Const $DMPAPER_JAPANESE_POSTCARD_ROTATED = 81 ; Japanese Postcard Rotated 148 x 100 mm
Global Const $DMPAPER_DBL_JAPANESE_POSTCARD_ROTATED = 82 ; Double Japanese Postcard Rotated 148 x 200 mm
Global Const $DMPAPER_A6_ROTATED = 83 ; A6 Rotated 148 x 105 mm
Global Const $DMPAPER_JENV_KAKU2_ROTATED = 84 ; Japanese Envelope Kaku #2 Rotated
Global Const $DMPAPER_JENV_KAKU3_ROTATED = 85 ; Japanese Envelope Kaku #3 Rotated
Global Const $DMPAPER_JENV_CHOU3_ROTATED = 86 ; Japanese Envelope Chou #3 Rotated
Global Const $DMPAPER_JENV_CHOU4_ROTATED = 87 ; Japanese Envelope Chou #4 Rotated
Global Const $DMPAPER_B6_JIS = 88 ; B6 (JIS) 128 x 182 mm
Global Const $DMPAPER_B6_JIS_ROTATED = 89 ; B6 (JIS) Rotated 182 x 128 mm
Global Const $DMPAPER_12X11 = 90 ; 12 x 11 in
Global Const $DMPAPER_JENV_YOU4 = 91 ; Japanese Envelope You #4
Global Const $DMPAPER_JENV_YOU4_ROTATED = 92 ; Japanese Envelope You #4 Rotated
Global Const $DMPAPER_P16K = 93 ; PRC 16K 146 x 215 mm
Global Const $DMPAPER_P32K = 94 ; PRC 32K 97 x 151 mm
Global Const $DMPAPER_P32KBIG = 95 ; PRC 32K(Big) 97 x 151 mm
Global Const $DMPAPER_PENV_1 = 96 ; PRC Envelope #1 102 x 165 mm
Global Const $DMPAPER_PENV_2 = 97 ; PRC Envelope #2 102 x 176 mm
Global Const $DMPAPER_PENV_3 = 98 ; PRC Envelope #3 125 x 176 mm
Global Const $DMPAPER_PENV_4 = 99 ; PRC Envelope #4 110 x 208 mm
Global Const $DMPAPER_PENV_5 = 100 ; PRC Envelope #5 110 x 220 mm
Global Const $DMPAPER_PENV_6 = 101 ; PRC Envelope #6 120 x 230 mm
Global Const $DMPAPER_PENV_7 = 102 ; PRC Envelope #7 160 x 230 mm
Global Const $DMPAPER_PENV_8 = 103 ; PRC Envelope #8 120 x 309 mm
Global Const $DMPAPER_PENV_9 = 104 ; PRC Envelope #9 229 x 324 mm
Global Const $DMPAPER_PENV_10 = 105 ; PRC Envelope #10 324 x 458 mm
Global Const $DMPAPER_P16K_ROTATED = 106 ; PRC 16K Rotated
Global Const $DMPAPER_P32K_ROTATED = 107 ; PRC 32K Rotated
Global Const $DMPAPER_P32KBIG_ROTATED = 108 ; PRC 32K(Big) Rotated
Global Const $DMPAPER_PENV_1_ROTATED = 109 ; PRC Envelope #1 Rotated 165 x 102 mm
Global Const $DMPAPER_PENV_2_ROTATED = 110 ; PRC Envelope #2 Rotated 176 x 102 mm
Global Const $DMPAPER_PENV_3_ROTATED = 111 ; PRC Envelope #3 Rotated 176 x 125 mm
Global Const $DMPAPER_PENV_4_ROTATED = 112 ; PRC Envelope #4 Rotated 208 x 110 mm
Global Const $DMPAPER_PENV_5_ROTATED = 113 ; PRC Envelope #5 Rotated 220 x 110 mm
Global Const $DMPAPER_PENV_6_ROTATED = 114 ; PRC Envelope #6 Rotated 230 x 120 mm
Global Const $DMPAPER_PENV_7_ROTATED = 115 ; PRC Envelope #7 Rotated 230 x 160 mm
Global Const $DMPAPER_PENV_8_ROTATED = 116 ; PRC Envelope #8 Rotated 309 x 120 mm
Global Const $DMPAPER_PENV_9_ROTATED = 117 ; PRC Envelope #9 Rotated 324 x 229 mm
Global Const $DMPAPER_PENV_10_ROTATED = 118 ; PRC Envelope #10 Rotated 458 x 324 mm
Global Const $DMPAPER_USER = 256

Global Const $DMBIN_UPPER = 1
Global Const $DMBIN_LOWER = 2
Global Const $DMBIN_MIDDLE = 3
Global Const $DMBIN_MANUAL = 4
Global Const $DMBIN_ENVELOPE = 5
Global Const $DMBIN_ENVMANUAL = 6
Global Const $DMBIN_AUTO = 7
Global Const $DMBIN_TRACTOR = 8
Global Const $DMBIN_SMALLFMT = 9
Global Const $DMBIN_LARGEFMT = 10
Global Const $DMBIN_LARGECAPACITY = 11
Global Const $DMBIN_CASSETTE = 14
Global Const $DMBIN_FORMSOURCE = 15
Global Const $DMBIN_USER = 256

Global Const $DMRES_DRAFT = -1
Global Const $DMRES_LOW = -2
Global Const $DMRES_MEDIUM = -3
Global Const $DMRES_HIGH = -4

Global Const $DMDO_DEFAULT = 0
Global Const $DMDO_90 = 1
Global Const $DMDO_180 = 2
Global Const $DMDO_270 = 3

Global Const $DMDFO_DEFAULT = 0
Global Const $DMDFO_STRETCH = 1
Global Const $DMDFO_CENTER = 2

Global Const $DMCOLOR_MONOCHROME = 1
Global Const $DMCOLOR_COLOR = 2

Global Const $DMDUP_SIMPLEX = 1
Global Const $DMDUP_VERTICAL = 2
Global Const $DMDUP_HORIZONTAL = 3

Global Const $DMTT_BITMAP = 1
Global Const $DMTT_DOWNLOAD = 2
Global Const $DMTT_SUBDEV = 3
Global Const $DMTT_DOWNLOAD_OUTLINE = 4

Global Const $DMCOLLATE_FALSE = 0
Global Const $DMCOLLATE_TRUE = 1

Global Const $DM_GRAYSCALE = 1
Global Const $DM_INTERLACED = 2

Global Const $DMNUP_SYSTEM = 1
Global Const $DMNUP_ONEUP = 2

Global Const $DMICMMETHOD_NONE = 1
Global Const $DMICMMETHOD_SYSTEM = 2
Global Const $DMICMMETHOD_DRIVER = 3
Global Const $DMICMMETHOD_DEVICE = 4
Global Const $DMICMMETHOD_USER = 256

Global Const $DMICM_SATURATE = 1
Global Const $DMICM_CONTRAST = 2
Global Const $DMICM_COLORIMETRIC = 3
Global Const $DMICM_ABS_COLORIMETRIC = 4
Global Const $DMICM_USER = 256

Global Const $DMMEDIA_STANDARD = 1
Global Const $DMMEDIA_TRANSPARENCY = 2
Global Const $DMMEDIA_GLOSSY = 3
Global Const $DMMEDIA_USER = 256

Global Const $DMDITHER_NONE = 1
Global Const $DMDITHER_COARSE = 2
Global Const $DMDITHER_FINE = 3
Global Const $DMDITHER_LINEART = 4
Global Const $DMDITHER_ERRORDIFFUSION = 5
Global Const $DMDITHER_RESERVED6 = 6
Global Const $DMDITHER_RESERVED7 = 7
Global Const $DMDITHER_RESERVED8 = 8
Global Const $DMDITHER_RESERVED9 = 9
Global Const $DMDITHER_GRAYSCALE = 10
Global Const $DMDITHER_USER = 256

; ===============================================================================================================================
; _WinAPI_ActivateKeyboardLayout(), _WinAPI_LoadKeyboardLayout()
; ===============================================================================================================================

Global Const $KLF_ACTIVATE = 0x00000001
Global Const $KLF_NOTELLSHELL = 0x00000080
Global Const $KLF_REORDER = 0x00000008
Global Const $KLF_REPLACELANG = 0x00000010
Global Const $KLF_RESET = 0x40000000
Global Const $KLF_SETFORPROCESS = 0x00000100
Global Const $KLF_SHIFTLOCK = 0x00010000
Global Const $KLF_SUBSTITUTE_OK = 0x00000002

Global Const $HKL_NEXT = 1
Global Const $HKL_PREV = 0

; ===============================================================================================================================
; _WinAPI_AddFontResourceEx(), _WinAPI_RemoveFontResourceEx()
; ===============================================================================================================================

Global Const $FR_PRIVATE = 0x10
Global Const $FR_NOT_ENUM = 0x20

; ===============================================================================================================================
; _WinAPI_AdjustTokenPrivileges()
; ===============================================================================================================================

;Global Const $SE_ASSIGNPRIMARYTOKEN_NAME = 'SeAssignPrimaryTokenPrivilege'
;Global Const $SE_AUDIT_NAME = 'SeAuditPrivilege'
;Global Const $SE_BACKUP_NAME = 'SeBackupPrivilege'
;Global Const $SE_CHANGE_NOTIFY_NAME = 'SeChangeNotifyPrivilege'
;Global Const $SE_CREATE_GLOBAL_NAME = 'SeCreateGlobalPrivilege'
;Global Const $SE_CREATE_PAGEFILE_NAME = 'SeCreatePagefilePrivilege'
;Global Const $SE_CREATE_PERMANENT_NAME = 'SeCreatePermanentPrivilege'
Global Const $SE_CREATE_SYMBOLIC_LINK_NAME = 'SeCreateSymbolicLinkPrivilege'
;Global Const $SE_CREATE_TOKEN_NAME = 'SeCreateTokenPrivilege'
;Global Const $SE_DEBUG_NAME = 'SeDebugPrivilege'
;Global Const $SE_ENABLE_DELEGATION_NAME = 'SeEnableDelegationPrivilege'
;Global Const $SE_IMPERSONATE_NAME = 'SeImpersonatePrivilege'
;Global Const $SE_INC_BASE_PRIORITY_NAME = 'SeIncreaseBasePriorityPrivilege'
;Global Const $SE_INCREASE_QUOTA_NAME = 'SeIncreaseQuotaPrivilege'
Global Const $SE_INC_WORKING_SET_NAME = 'SeIncreaseWorkingSetPrivilege'
;Global Const $SE_LOAD_DRIVER_NAME = 'SeLoadDriverPrivilege'
;Global Const $SE_LOCK_MEMORY_NAME = 'SeLockMemoryPrivilege'
;Global Const $SE_MACHINE_ACCOUNT_NAME = 'SeMachineAccountPrivilege'
;Global Const $SE_MANAGE_VOLUME_NAME = 'SeManageVolumePrivilege'
;Global Const $SE_PROF_SINGLE_PROCESS_NAME = 'SeProfileSingleProcessPrivilege'
Global Const $SE_RELABEL_NAME = 'SeRelabelPrivilege'
;Global Const $SE_REMOTE_SHUTDOWN_NAME = 'SeRemoteShutdownPrivilege'
;Global Const $SE_RESTORE_NAME = 'SeRestorePrivilege'
;Global Const $SE_SECURITY_NAME = 'SeSecurityPrivilege'
;Global Const $SE_SHUTDOWN_NAME = 'SeShutdownPrivilege'
;Global Const $SE_SYNC_AGENT_NAME = 'SeSyncAgentPrivilege'
;Global Const $SE_SYSTEM_ENVIRONMENT_NAME = 'SeSystemEnvironmentPrivilege'
;Global Const $SE_SYSTEM_PROFILE_NAME = 'SeSystemProfilePrivilege'
;Global Const $SE_SYSTEMTIME_NAME = 'SeSystemtimePrivilege'
;Global Const $SE_TAKE_OWNERSHIP_NAME = 'SeTakeOwnershipPrivilege'
;Global Const $SE_TCB_NAME = 'SeTcbPrivilege'
Global Const $SE_TIME_ZONE_NAME = 'SeTimeZonePrivilege'
Global Const $SE_TRUSTED_CREDMAN_ACCESS_NAME = 'SeTrustedCredManAccessPrivilege'
;Global Const $SE_UNDOCK_NAME = 'SeUndockPrivilege'
;Global Const $SE_UNSOLICITED_INPUT_NAME = 'SeUnsolicitedInputPrivilege'

;Global Const $SE_PRIVILEGE_ENABLED = 0x00000002
;Global Const $SE_PRIVILEGE_ENABLED_BY_DEFAULT = 0x00000001
;Global Const $SE_PRIVILEGE_REMOVED = 0x00000004
;Global Const $SE_PRIVILEGE_USED_FOR_ACCESS = 0x80000000

; ===============================================================================================================================
; _WinAPI_AnimateWindow()
; ===============================================================================================================================

Global Const $AW_ACTIVATE = 0x00020000
Global Const $AW_BLEND = 0x00080000
Global Const $AW_CENTER = 0x00000010
Global Const $AW_HIDE = 0x00010000
Global Const $AW_HOR_NEGATIVE = 0x00000002
Global Const $AW_HOR_POSITIVE = 0x00000001
Global Const $AW_SLIDE = 0x00040000
Global Const $AW_VER_NEGATIVE = 0x00000008
Global Const $AW_VER_POSITIVE = 0x00000004

; ===============================================================================================================================
; _WinAPI_AssocGetPerceivedType()
; ===============================================================================================================================

Global Const $PERCEIVED_TYPE_CUSTOM = -3
Global Const $PERCEIVED_TYPE_UNSPECIFIED = -2
Global Const $PERCEIVED_TYPE_FOLDER = -1
Global Const $PERCEIVED_TYPE_UNKNOWN = 0
Global Const $PERCEIVED_TYPE_TEXT = 1
Global Const $PERCEIVED_TYPE_IMAGE = 2
Global Const $PERCEIVED_TYPE_AUDIO = 3
Global Const $PERCEIVED_TYPE_VIDEO = 4
Global Const $PERCEIVED_TYPE_COMPRESSED = 5
Global Const $PERCEIVED_TYPE_DOCUMENT = 6
Global Const $PERCEIVED_TYPE_SYSTEM = 7
Global Const $PERCEIVED_TYPE_APPLICATION = 8
Global Const $PERCEIVED_TYPE_GAMEMEDIA = 9
Global Const $PERCEIVED_TYPE_CONTACTS = 10

Global Const $PERCEIVEDFLAG_UNDEFINED = 0x0000
Global Const $PERCEIVEDFLAG_SOFTCODED = 0x0001
Global Const $PERCEIVEDFLAG_HARDCODED = 0x0002
Global Const $PERCEIVEDFLAG_NATIVESUPPORT = 0x0004
Global Const $PERCEIVEDFLAG_GDIPLUS = 0x0010
Global Const $PERCEIVEDFLAG_WMSDK = 0x0020
Global Const $PERCEIVEDFLAG_ZIPFOLDER = 0x0040

; ===============================================================================================================================
; _WinAPI_AssocQueryString()
; ===============================================================================================================================

Global Const $ASSOCSTR_COMMAND = 1
Global Const $ASSOCSTR_EXECUTABLE = 2
Global Const $ASSOCSTR_FRIENDLYDOCNAME = 3
Global Const $ASSOCSTR_FRIENDLYAPPNAME = 4
Global Const $ASSOCSTR_NOOPEN = 5
Global Const $ASSOCSTR_SHELLNEWVALUE = 6
Global Const $ASSOCSTR_DDECOMMAND = 7
Global Const $ASSOCSTR_DDEIFEXEC = 8
Global Const $ASSOCSTR_DDEAPPLICATION = 9
Global Const $ASSOCSTR_DDETOPIC = 10
Global Const $ASSOCSTR_INFOTIP = 11
Global Const $ASSOCSTR_QUICKTIP = 12
Global Const $ASSOCSTR_TILEINFO = 13
Global Const $ASSOCSTR_CONTENTTYPE = 14
Global Const $ASSOCSTR_DEFAULTICON = 15
Global Const $ASSOCSTR_SHELLEXTENSION = 16

Global Const $ASSOCF_INIT_NOREMAPCLSID = 0x00000001
Global Const $ASSOCF_INIT_BYEXENAME = 0x00000002
Global Const $ASSOCF_OPEN_BYEXENAME = 0x00000002
Global Const $ASSOCF_INIT_DEFAULTTOSTAR = 0x00000004
Global Const $ASSOCF_INIT_DEFAULTTOFOLDER = 0x00000008
Global Const $ASSOCF_NOUSERSETTINGS = 0x00000010
Global Const $ASSOCF_NOTRUNCATE = 0x00000020
Global Const $ASSOCF_VERIFY = 0x00000040
Global Const $ASSOCF_REMAPRUNDLL = 0x00000080
Global Const $ASSOCF_NOFIXUPS = 0x00000100
Global Const $ASSOCF_IGNOREBASECLASS = 0x00000200
Global Const $ASSOCF_INIT_IGNOREUNKNOWN = 0x00000400

; ===============================================================================================================================
; _WinAPI_BackupRead(), _WinAPI_BackupWrite()
; ===============================================================================================================================

Global Const $BACKUP_ALTERNATE_DATA = 0x00000004
Global Const $BACKUP_DATA = 0x00000001
Global Const $BACKUP_EA_DATA = 0x00000002
Global Const $BACKUP_LINK = 0x00000005
Global Const $BACKUP_OBJECT_ID = 0x00000007
Global Const $BACKUP_PROPERTY_DATA = 0x00000006
Global Const $BACKUP_REPARSE_DATA = 0x00000008
Global Const $BACKUP_SECURITY_DATA = 0x00000003
Global Const $BACKUP_SPARSE_BLOCK = 0x00000009
Global Const $BACKUP_TXFS_DATA = 0x0000000A

; ===============================================================================================================================
; _WinAPI_BeginBufferedPaint()
; ===============================================================================================================================

Global Const $BPBF_COMPATIBLEBITMAP = 0
Global Const $BPBF_DIB = 1
Global Const $BPBF_TOPDOWNDIB = 2
Global Const $BPBF_TOPDOWNMONODIB = 3

Global Const $BPPF_ERASE = 0x01
Global Const $BPPF_NOCLIP = 0x02
Global Const $BPPF_NONCLIENT = 0x04

; ===============================================================================================================================
; _WinAPI_BroadcastSystemMessage()
; ===============================================================================================================================

Global Const $BSF_ALLOWSFW = 0x0080
Global Const $BSF_FLUSHDISK = 0x0004
Global Const $BSF_FORCEIFHUNG = 0x0020
Global Const $BSF_IGNORECURRENTTASK = 0x0002
Global Const $BSF_NOHANG = 0x0008
Global Const $BSF_NOTIMEOUTIFNOTHUNG = 0x0040
Global Const $BSF_POSTMESSAGE = 0x0010
Global Const $BSF_QUERY = 0x0001
Global Const $BSF_SENDNOTIFYMESSAGE = 0x0100

Global Const $BSM_ALLCOMPONENTS = 0x00
Global Const $BSM_ALLDESKTOPS = 0x08
Global Const $BSM_APPLICATIONS = 0x10
Global Const $BSM_INSTALLABLEDRIVERS = 0x04
Global Const $BSM_NETDRIVER = 0x02
Global Const $BSM_VXDS = 0x01

; ===============================================================================================================================
; _WinAPI_BrowseForFolderDlg()
; ===============================================================================================================================

Global Const $BIF_BROWSEFILEJUNCTIONS = 0x00010000
Global Const $BIF_BROWSEFORCOMPUTER = 0x00001000
Global Const $BIF_BROWSEFORPRINTER = 0x00002000
Global Const $BIF_BROWSEINCLUDEFILES = 0x00004000
Global Const $BIF_BROWSEINCLUDEURLS = 0x00000080
Global Const $BIF_DONTGOBELOWDOMAIN = 0x00000002
Global Const $BIF_EDITBOX = 0x00000010
Global Const $BIF_NEWDIALOGSTYLE = 0x00000040
Global Const $BIF_NONEWFOLDERBUTTON = 0x00000200
Global Const $BIF_NOTRANSLATETARGETS = 0x00000400
Global Const $BIF_RETURNFSANCESTORS = 0x00000008
Global Const $BIF_RETURNONLYFSDIRS = 0x00000001
Global Const $BIF_SHAREABLE = 0x00008000
Global Const $BIF_STATUSTEXT = 0x00000004
Global Const $BIF_USENEWUI = BitOR($BIF_EDITBOX, $BIF_NEWDIALOGSTYLE)
Global Const $BIF_UAHINT = 0x00000100
Global Const $BIF_VALIDATE = 0x00000020

Global Const $BFFM_INITIALIZED = 1
Global Const $BFFM_IUNKNOWN = 5
Global Const $BFFM_SELCHANGED = 2
Global Const $BFFM_VALIDATEFAILED = 4

Global Const $BFFM_SETSTATUSTEXTA = $WM_USER + 100
Global Const $BFFM_ENABLEOK = $WM_USER + 101
Global Const $BFFM_SETSELECTIONA = $WM_USER + 102
Global Const $BFFM_SETSELECTIONW = $WM_USER + 103
Global Const $BFFM_SETSTATUSTEXTW = $WM_USER + 104
Global Const $BFFM_SETOKTEXT = $WM_USER + 105
Global Const $BFFM_SETEXPANDED = $WM_USER + 106

; ===============================================================================================================================
; _WinAPI_CalculatePopupWindowPosition()
; ===============================================================================================================================

;Global Const $TPM_CENTERALIGN = 0x00000004
;Global Const $TPM_LEFTALIGN = 0x00000000
;Global Const $TPM_RIGHTALIGN = 0x00000008

;Global Const $TPM_BOTTOMALIGN = 0x00000020
;Global Const $TPM_TOPALIGN = 0x00000000
;Global Const $TPM_VCENTERALIGN = 0x00000010

;Global Const $TPM_HORIZONTAL = 0x00000000
;Global Const $TPM_VERTICAL = 0x00000040

Global Const $TPM_WORKAREA = 0x00010000

; ===============================================================================================================================
; _WinAPI_CascadeWindows(), _WinAPI_TileWindows()
; ===============================================================================================================================

Global Const $MDITILE_HORIZONTAL = 0x01
Global Const $MDITILE_SKIPDISABLED = 0x02
Global Const $MDITILE_VERTICAL = 0x00
Global Const $MDITILE_ZORDER = 0x04

; ===============================================================================================================================
; _WinAPI_ChangeWindowMessageFilterEx()
; ===============================================================================================================================

Global Const $MSGFLT_ALLOW = 1
Global Const $MSGFLT_DISALLOW = 2
Global Const $MSGFLT_RESET = 0

Global Const $MSGFLTINFO_ALLOWED_HIGHER = 3
Global Const $MSGFLTINFO_ALREADYALLOWED_FORWND = 1
Global Const $MSGFLTINFO_ALREADYDISALLOWED_FORWND = 2
Global Const $MSGFLTINFO_NONE = 0

; ===============================================================================================================================
; _WinAPI_ChildWindowFromPointEx()
; ===============================================================================================================================

Global Const $CWP_ALL = 0x00
Global Const $CWP_SKIPINVISIBLE = 0x01
Global Const $CWP_SKIPDISABLED = 0x02
Global Const $CWP_SKIPTRANSPARENT = 0x04

; ===============================================================================================================================
; _WinAPI_CoInitialize()
; ===============================================================================================================================

Global Const $COINIT_APARTMENTTHREADED = 0x02
Global Const $COINIT_DISABLE_OLE1DDE = 0x04
Global Const $COINIT_MULTITHREADED = 0x00
Global Const $COINIT_SPEED_OVER_MEMORY = 0x08

; ===============================================================================================================================
; _WinAPI_CommDlgExtendedErrorEx()
; ===============================================================================================================================

Global Const $CDERR_DIALOGFAILURE = 0xFFFF
Global Const $CDERR_FINDRESFAILURE = 0x0006
Global Const $CDERR_INITIALIZATION = 0x0002
Global Const $CDERR_LOADRESFAILURE = 0x0007
Global Const $CDERR_LOADSTRFAILURE = 0x0005
Global Const $CDERR_LOCKRESFAILURE = 0x0008
Global Const $CDERR_MEMALLOCFAILURE = 0x0009
Global Const $CDERR_MEMLOCKFAILURE = 0x000A
Global Const $CDERR_NOHINSTANCE = 0x0004
Global Const $CDERR_NOHOOK = 0x000B
Global Const $CDERR_NOTEMPLATE = 0x0003
Global Const $CDERR_REGISTERMSGFAIL = 0x000C
Global Const $CDERR_STRUCTSIZE = 0x0001

Global Const $PDERR_CREATEICFAILURE = 0x100A
Global Const $PDERR_DEFAULTDIFFERENT = 0x100C
Global Const $PDERR_DNDMMISMATCH = 0x1009
Global Const $PDERR_GETDEVMODEFAIL = 0x1005
Global Const $PDERR_INITFAILURE = 0x1006
Global Const $PDERR_LOADDRVFAILURE = 0x1004
Global Const $PDERR_NODEFAULTPRN = 0x1008
Global Const $PDERR_NODEVICES = 0x1007
Global Const $PDERR_PARSEFAILURE = 0x1002
Global Const $PDERR_PRINTERNOTFOUND = 0x100B
Global Const $PDERR_RETDEFFAILURE = 0x1003
Global Const $PDERR_SETUPFAILURE = 0x1001

Global Const $CFERR_MAXLESSTHANMIN = 0x2002
Global Const $CFERR_NOFONTS = 0x2001

Global Const $FNERR_BUFFERTOOSMALL = 0x3003
Global Const $FNERR_INVALIDFILENAME = 0x3002
Global Const $FNERR_SUBCLASSFAILURE = 0x3001

Global Const $FRERR_BUFFERLENGTHZERO = 0x4001

; ===============================================================================================================================
; _WinAPI_CompareString()
; ===============================================================================================================================

Global Const $LINGUISTIC_IGNORECASE = 0x00000010
Global Const $LINGUISTIC_IGNOREDIACRITIC = 0x00000020

Global Const $NORM_IGNORECASE = 0x00000001
Global Const $NORM_IGNOREKANATYPE = 0x00010000
Global Const $NORM_IGNORENONSPACE = 0x00000002
Global Const $NORM_IGNORESYMBOLS = 0x00000004
Global Const $NORM_IGNOREWIDTH = 0x00020000
Global Const $NORM_LINGUISTIC_CASING = 0x08000000

Global Const $SORT_DIGITSASNUMBERS = 0x00000008
Global Const $SORT_STRINGSORT = 0x00001000

Global Const $CSTR_LESS_THAN = 1
Global Const $CSTR_EQUAL = 2
Global Const $CSTR_GREATER_THAN = 3

; ===============================================================================================================================
; _WinAPI_CompressBitmapBits()
; ===============================================================================================================================

Global Const $COMPRESSION_BITMAP_PNG = 0
Global Const $COMPRESSION_BITMAP_JPEG = 1

; ===============================================================================================================================
; _WinAPI_CompressBuffer(), _WinAPI_DecompressBuffer(), _WinAPI_GetCompression(), _WinAPI_SetCompression()
; ===============================================================================================================================

Global Const $COMPRESSION_FORMAT_NONE = 0x0000
Global Const $COMPRESSION_FORMAT_DEFAULT = 0x0001
Global Const $COMPRESSION_FORMAT_LZNT1 = 0x0002
Global Const $COMPRESSION_FORMAT_XPRESS = 0x0003
Global Const $COMPRESSION_FORMAT_XPRESS_HUFF = 0x0004

Global Const $COMPRESSION_ENGINE_STANDARD = 0x0000
Global Const $COMPRESSION_ENGINE_MAXIMUM = 0x0100
Global Const $COMPRESSION_ENGINE_HIBER = 0x0200

; ===============================================================================================================================
; _WinAPI_CopyFileEx(), _WinAPI_MoveFileEx()
; ===============================================================================================================================

Global Const $COPY_FILE_ALLOW_DECRYPTED_DESTINATION = 0x0008
Global Const $COPY_FILE_COPY_SYMLINK = 0x0800
Global Const $COPY_FILE_FAIL_IF_EXISTS = 0x0001
Global Const $COPY_FILE_NO_BUFFERING = 0x1000
Global Const $COPY_FILE_OPEN_SOURCE_FOR_WRITE = 0x0004
Global Const $COPY_FILE_RESTARTABLE = 0x0002

Global Const $MOVE_FILE_COPY_ALLOWED = 0x0002
Global Const $MOVE_FILE_CREATE_HARDLINK = 0x0010
Global Const $MOVE_FILE_DELAY_UNTIL_REBOOT = 0x0004
Global Const $MOVE_FILE_FAIL_IF_NOT_TRACKABLE = 0x0020
Global Const $MOVE_FILE_REPLACE_EXISTING = 0x0001
Global Const $MOVE_FILE_WRITE_THROUGH = 0x0008

Global Const $PROGRESS_CONTINUE = 0
Global Const $PROGRESS_CANCEL = 1
Global Const $PROGRESS_STOP = 2
Global Const $PROGRESS_QUIET = 3

; ===============================================================================================================================
; _WinAPI_CopyImage()
; ===============================================================================================================================

;Global Const $LR_DEFAULTCOLOR = 0x0000
;Global Const $LR_DEFAULTSIZE = 0x0040
;Global Const $LR_COLOR = 0x0002
;Global Const $LR_COPYDELETEORG = 0x0008
;Global Const $LR_COPYFROMRESOURCE = 0x4000
;Global Const $LR_COPYRETURNORG = 0x0004
;Global Const $LR_CREATEDIBSECTION = 0x2000
;Global Const $LR_LOADFROMFILE = 0x0010
;Global Const $LR_LOADMAP3DCOLORS = 0x1000
;Global Const $LR_LOADTRANSPARENT = 0x0020
;Global Const $LR_MONOCHROME = 0x0001
;Global Const $LR_SHARED = 0x8000
;Global Const $LR_VGACOLOR = 0x0080

; ===============================================================================================================================
; _WinAPI_CreateBrushIndirect()
; ===============================================================================================================================

Global Const $BS_DIBPATTERN = 5
Global Const $BS_DIBPATTERN8X8 = 8
Global Const $BS_DIBPATTERNPT = 6
Global Const $BS_HATCHED = 2
Global Const $BS_HOLLOW = 1
Global Const $BS_NULL = 1
Global Const $BS_PATTERN = 3
Global Const $BS_PATTERN8X8 = 7
Global Const $BS_SOLID = 0

Global Const $HS_BDIAGONAL = 3
Global Const $HS_CROSS = 4
Global Const $HS_DIAGCROSS = 5
Global Const $HS_FDIAGONAL = 2
Global Const $HS_HORIZONTAL = 0
Global Const $HS_VERTICAL = 1

Global Const $DIB_PAL_COLORS = 1
Global Const $DIB_RGB_COLORS = 0

; ===============================================================================================================================
; _WinAPI_CreateColorAdjustment()
; ===============================================================================================================================

Global Const $CA_NEGATIVE = 0x01
Global Const $CA_LOG_FILTER = 0x02

Global Const $ILLUMINANT_DEVICE_DEFAULT = 0
Global Const $ILLUMINANT_A = 1
Global Const $ILLUMINANT_B = 2
Global Const $ILLUMINANT_C = 3
Global Const $ILLUMINANT_D50 = 4
Global Const $ILLUMINANT_D55 = 5
Global Const $ILLUMINANT_D65 = 6
Global Const $ILLUMINANT_D75 = 7
Global Const $ILLUMINANT_F2 = 8
Global Const $ILLUMINANT_TUNGSTEN = $ILLUMINANT_A
Global Const $ILLUMINANT_DAYLIGHT = $ILLUMINANT_C
Global Const $ILLUMINANT_FLUORESCENT = $ILLUMINANT_F2
Global Const $ILLUMINANT_NTSC = $ILLUMINANT_C

; ===============================================================================================================================
; _WinAPI_CreateDIBSection()
; ===============================================================================================================================

Global Const $BI_RGB = 0
Global Const $BI_RLE8 = 1
Global Const $BI_RLE4 = 2
Global Const $BI_BITFIELDS = 3
Global Const $BI_JPEG = 4
Global Const $BI_PNG = 5

; ===============================================================================================================================
; _WinAPI_CreateFileEx(), _WinAPI_SetFileAttributes(), _WinAPI_SetFileAttributes()
; ===============================================================================================================================

;Global Const $CREATE_NEW = 1
;Global Const $CREATE_ALWAYS = 2
;Global Const $OPEN_EXISTING = 3
;Global Const $OPEN_ALWAYS = 4
;Global Const $TRUNCATE_EXISTING = 5

;Global Const $GENERIC_ALL = 0x10000000
;Global Const $GENERIC_EXECUTE = 0x20000000
;Global Const $GENERIC_WRITE = 0x40000000
;Global Const $GENERIC_READ = 0x80000000

Global Const $FILE_APPEND_DATA = 0x0004
Global Const $FILE_DELETE_CHILD = 0x0040
Global Const $FILE_EXECUTE = 0x0020
Global Const $FILE_READ_ATTRIBUTES = 0x0080
Global Const $FILE_READ_DATA = 0x0001
Global Const $FILE_READ_EA = 0x0008
Global Const $FILE_WRITE_ATTRIBUTES = 0x0100
Global Const $FILE_WRITE_DATA = 0x0002
Global Const $FILE_WRITE_EA = 0x0010
Global Const $FILE_ADD_FILE = $FILE_WRITE_DATA
Global Const $FILE_ADD_SUBDIRECTORY = $FILE_APPEND_DATA
Global Const $FILE_CREATE_PIPE_INSTANCE = $FILE_APPEND_DATA
Global Const $FILE_LIST_DIRECTORY = $FILE_READ_DATA
Global Const $FILE_TRAVERSE = $FILE_EXECUTE
Global Const $FILE_ALL_ACCESS = BitOR($STANDARD_RIGHTS_ALL, $FILE_APPEND_DATA, $FILE_DELETE_CHILD, $FILE_EXECUTE, $FILE_READ_ATTRIBUTES, $FILE_READ_DATA, $FILE_READ_EA, $FILE_WRITE_ATTRIBUTES, $FILE_WRITE_DATA, $FILE_WRITE_EA)

;Global Const $FILE_SHARE_READ = 0x01
;Global Const $FILE_SHARE_WRITE = 0x02
;Global Const $FILE_SHARE_DELETE = 0x04

;Global Const $FILE_ATTRIBUTE_READONLY = 0x00000001
;Global Const $FILE_ATTRIBUTE_HIDDEN = 0x00000002
;Global Const $FILE_ATTRIBUTE_SYSTEM = 0x00000004
;Global Const $FILE_ATTRIBUTE_DIRECTORY = 0x00000010
;Global Const $FILE_ATTRIBUTE_ARCHIVE = 0x00000020
;Global Const $FILE_ATTRIBUTE_DEVICE = 0x00000040
;Global Const $FILE_ATTRIBUTE_NORMAL = 0x00000080
;Global Const $FILE_ATTRIBUTE_TEMPORARY = 0x00000100
;Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200
;Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400
;Global Const $FILE_ATTRIBUTE_COMPRESSED = 0x00000800
;Global Const $FILE_ATTRIBUTE_OFFLINE = 0x00001000
;Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000
;Global Const $FILE_ATTRIBUTE_ENCRYPTED = 0x00004000

Global Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
Global Const $FILE_FLAG_DELETE_ON_CLOSE = 0x04000000
Global Const $FILE_FLAG_NO_BUFFERING = 0x20000000
Global Const $FILE_FLAG_OPEN_NO_RECALL = 0x00100000
Global Const $FILE_FLAG_OPEN_REPARSE_POINT = 0x00200000
;Global Const $FILE_FLAG_OVERLAPPED = 0x40000000
Global Const $FILE_FLAG_POSIX_SEMANTICS = 0x0100000
Global Const $FILE_FLAG_RANDOM_ACCESS = 0x10000000
Global Const $FILE_FLAG_SEQUENTIAL_SCAN = 0x08000000
;Global Const $FILE_FLAG_WRITE_THROUGH = 0x80000000

Global Const $SECURITY_ANONYMOUS = 0x00000000
Global Const $SECURITY_CONTEXT_TRACKING = 0x00040000
Global Const $SECURITY_DELEGATION = 0x00030000
Global Const $SECURITY_EFFECTIVE_ONLY = 0x00080000
Global Const $SECURITY_IDENTIFICATION = 0x00010000
Global Const $SECURITY_IMPERSONATION = 0x00020000

; ===============================================================================================================================
; _WinAPI_CreateFileMapping(), _WinAPI_OpenFileMapping()
; ===============================================================================================================================

;Global Const $PAGE_EXECUTE = 0x0010
;Global Const $PAGE_EXECUTE_READ = 0x0020
;Global Const $PAGE_EXECUTE_READWRITE = 0x0040
Global Const $PAGE_EXECUTE_WRITECOPY = 0x0080
;Global Const $PAGE_GUARD = 0x0100
;Global Const $PAGE_NOACCESS = 0x0001
;Global Const $PAGE_NOCACHE = 0x0200
;Global Const $PAGE_READONLY = 0x0002
;Global Const $PAGE_READWRITE = 0x0004
Global Const $PAGE_WRITECOMBINE = 0x0400
Global Const $PAGE_WRITECOPY = 0x0008

Global Const $SEC_COMMIT = 0x08000000
Global Const $SEC_IMAGE = 0x01000000
Global Const $SEC_LARGE_PAGES = 0x80000000
Global Const $SEC_NOCACHE = 0x10000000
Global Const $SEC_RESERVE = 0x04000000
Global Const $SEC_WRITECOMBINE = 0x40000000

Global Const $SECTION_EXTEND_SIZE = 0x0010
Global Const $SECTION_MAP_EXECUTE = 0x0008
Global Const $SECTION_MAP_READ = 0x0004
Global Const $SECTION_MAP_WRITE = 0x0002
Global Const $SECTION_QUERY = 0x0001
Global Const $SECTION_ALL_ACCESS = BitOR($STANDARD_RIGHTS_REQUIRED, $SECTION_EXTEND_SIZE, $SECTION_MAP_EXECUTE, $SECTION_MAP_READ, $SECTION_MAP_WRITE, $SECTION_QUERY)

Global Const $FILE_MAP_COPY = 0x0001
Global Const $FILE_MAP_EXECUTE = 0x0020
Global Const $FILE_MAP_READ = 0x0004
Global Const $FILE_MAP_WRITE = 0x0002
Global Const $FILE_MAP_ALL_ACCESS = $SECTION_ALL_ACCESS

; ===============================================================================================================================
; _WinAPI_CreateFont*()
; ===============================================================================================================================

;Global Const $FW_DONTCARE = 0
;Global Const $FW_THIN = 100
;Global Const $FW_EXTRALIGHT = 200
;Global Const $FW_ULTRALIGHT = 200
;Global Const $FW_LIGHT = 300
;Global Const $FW_NORMAL = 400
;Global Const $FW_REGULAR = 400
;Global Const $FW_MEDIUM = 500
;Global Const $FW_SEMIBOLD = 600
;Global Const $FW_DEMIBOLD = 600
;Global Const $FW_BOLD = 700
;Global Const $FW_EXTRABOLD = 800
;Global Const $FW_ULTRABOLD = 800
;Global Const $FW_HEAVY = 900
;Global Const $FW_BLACK = 900

;Global Const $ANSI_CHARSET = 0
Global Const $ARABIC_CHARSET = 178
;Global Const $BALTIC_CHARSET = 186
;Global Const $CHINESEBIG5_CHARSET = 136
;Global Const $DEFAULT_CHARSET = 1
;Global Const $EASTEUROPE_CHARSET = 238
;Global Const $GB2312_CHARSET = 134
;Global Const $GREEK_CHARSET = 161
;Global Const $HANGEUL_CHARSET = 129
Global Const $HEBREW_CHARSET = 177
Global Const $JOHAB_CHARSET = 130
;Global Const $MAC_CHARSET = 77
;Global Const $OEM_CHARSET = 255
;Global Const $RUSSIAN_CHARSET = 204
;Global Const $SHIFTJIS_CHARSET = 128
;Global Const $SYMBOL_CHARSET = 2
Global Const $THAI_CHARSET = 222
;Global Const $TURKISH_CHARSET = 162
;Global Const $VIETNAMESE_CHARSET = 163

;Global Const $OUT_CHARACTER_PRECIS = 2
;Global Const $OUT_DEFAULT_PRECIS = 0
;Global Const $OUT_DEVICE_PRECIS = 5
;Global Const $OUT_OUTLINE_PRECIS = 8
;Global Const $OUT_PS_ONLY_PRECIS = 10
;Global Const $OUT_RASTER_PRECIS = 6
;Global Const $OUT_STRING_PRECIS = 1
;Global Const $OUT_STROKE_PRECIS = 3
;Global Const $OUT_TT_ONLY_PRECIS = 7
;Global Const $OUT_TT_PRECIS = 4

;Global Const $CLIP_CHARACTER_PRECIS = 0x0001
;Global Const $CLIP_DEFAULT_PRECIS = 0x0000
Global Const $CLIP_DFA_DISABLE = 0x0030
;Global Const $CLIP_EMBEDDED = 0x0080
;Global Const $CLIP_LH_ANGLES = 0x0010
;Global Const $CLIP_MASK = 0x000F
Global Const $CLIP_DFA_OVERRIDE = 0x0040
;Global Const $CLIP_STROKE_PRECIS = 0x0002
;Global Const $CLIP_TT_ALWAYS = 0x0020

;Global Const $ANTIALIASED_QUALITY = 4
Global Const $CLEARTYPE_QUALITY = 5
;Global Const $DEFAULT_QUALITY = 0
;Global Const $DRAFT_QUALITY = 1
;Global Const $NONANTIALIASED_QUALITY = 3
;Global Const $PROOF_QUALITY = 2

;Global Const $DEFAULT_PITCH = 0
;Global Const $FIXED_PITCH = 1
;Global Const $VARIABLE_PITCH = 2

;Global Const $FF_DECORATIVE = 80
;Global Const $FF_DONTCARE = 0
;Global Const $FF_MODERN = 48
;Global Const $FF_ROMAN = 16
;Global Const $FF_SCRIPT = 64
;Global Const $FF_SWISS = 32

Global Const $FS_REGULAR = 0x00
Global Const $FS_BOLD = 0x01
Global Const $FS_ITALIC = 0x02

; ===============================================================================================================================
; _WinAPI_CreatePen(), _WinAPI_ExtCreatePen()
; ===============================================================================================================================

;Global Const $PS_SOLID = 0
;Global Const $PS_DASH = 1
;Global Const $PS_DOT = 2
;Global Const $PS_DASHDOT = 3
;Global Const $PS_DASHDOTDOT = 4
;Global Const $PS_NULL = 5
;Global Const $PS_INSIDEFRAME = 6
Global Const $PS_USERSTYLE = 7
Global Const $PS_ALTERNATE = 8

Global Const $PS_ENDCAP_ROUND = 0x00000000
Global Const $PS_ENDCAP_SQUARE = 0x00000100
Global Const $PS_ENDCAP_FLAT = 0x00000200

Global Const $PS_JOIN_BEVEL = 0x00001000
Global Const $PS_JOIN_MITER = 0x00002000
Global Const $PS_JOIN_ROUND = 0x00000000

Global Const $PS_GEOMETRIC = 0x00010000
Global Const $PS_COSMETIC = 0x00000000

; ===============================================================================================================================
; _WinAPI_CreatePolygonRgn()
; ===============================================================================================================================

Global Const $ALTERNATE = 1
Global Const $WINDING = 2

; ===============================================================================================================================
; _WinAPI_CreateProcess(), _WinAPI_CreateProcessWithToken()
; ===============================================================================================================================

Global Const $CREATE_BREAKAWAY_FROM_JOB = 0x01000000
Global Const $CREATE_DEFAULT_ERROR_MODE = 0x04000000
Global Const $CREATE_NEW_CONSOLE = 0x00000010
Global Const $CREATE_NEW_PROCESS_GROUP = 0x00000200
Global Const $CREATE_NO_WINDOW = 0x08000000
Global Const $CREATE_PROTECTED_PROCESS = 0x00040000
Global Const $CREATE_PRESERVE_CODE_AUTHZ_LEVEL = 0x02000000
Global Const $CREATE_SEPARATE_WOW_VDM = 0x00000800
Global Const $CREATE_SHARED_WOW_VDM = 0x00001000
Global Const $CREATE_SUSPENDED = 0x00000004
Global Const $CREATE_UNICODE_ENVIRONMENT = 0x00000400

;Global Const $LOGON_WITH_PROFILE = 0x01
;Global Const $LOGON_NETCREDENTIALS_ONLY = 0x02

; ===============================================================================================================================
; _WinAPI_CreateWindowStation(), _WinAPI_OpenWindowStation()
; ===============================================================================================================================

Global Const $WINSTA_ACCESSCLIPBOARD = 0x0004
Global Const $WINSTA_ACCESSGLOBALATOMS = 0x0020
Global Const $WINSTA_CREATEDESKTOP = 0x0008
Global Const $WINSTA_ENUMDESKTOPS = 0x0001
Global Const $WINSTA_ENUMERATE = 0x0100
Global Const $WINSTA_EXITWINDOWS = 0x0040
Global Const $WINSTA_READATTRIBUTES = 0x0002
Global Const $WINSTA_READSCREEN = 0x0200
Global Const $WINSTA_WRITEATTRIBUTES = 0x0010
Global Const $WINSTA_ALL_ACCESS = BitOR($WINSTA_ACCESSCLIPBOARD, $WINSTA_ACCESSGLOBALATOMS, $WINSTA_CREATEDESKTOP, $WINSTA_ENUMDESKTOPS, $WINSTA_ENUMERATE, $WINSTA_EXITWINDOWS, $WINSTA_READATTRIBUTES, $WINSTA_READSCREEN, $WINSTA_WRITEATTRIBUTES)

Global Const $CWF_CREATE_ONLY = 0x01

; ===============================================================================================================================
; _WinAPI_DeferWindowPos()
; ===============================================================================================================================

;Global Const $HWND_BOTTOM = 1
;Global Const $HWND_NOTOPMOST = -2
;Global Const $HWND_TOP = 0
;Global Const $HWND_TOPMOST = -1

;Global Const $SWP_DRAWFRAME = 0x0020
;Global Const $SWP_FRAMECHANGED = 0x0020
;Global Const $SWP_HIDEWINDOW = 0x0080
;Global Const $SWP_NOACTIVATE = 0x0010
;Global Const $SWP_NOCOPYBITS = 0x0100
;Global Const $SWP_NOMOVE = 0x0002
;Global Const $SWP_NOOWNERZORDER = 0x0200
;Global Const $SWP_NOREDRAW = 0x0008
;Global Const $SWP_NOREPOSITION = 0x0200
;Global Const $SWP_NOSENDCHANGING = 0x0400
;Global Const $SWP_NOSIZE = 0x0001
;Global Const $SWP_NOZORDER = 0x0004
;Global Const $SWP_SHOWWINDOW = 0x0040

; ===============================================================================================================================
; _WinAPI_DefineDosDevice()
; ===============================================================================================================================

Global Const $DDD_EXACT_MATCH_ON_REMOVE = 0x04
Global Const $DDD_NO_BROADCAST_SYSTEM = 0x08
Global Const $DDD_RAW_TARGET_PATH = 0x01
Global Const $DDD_REMOVE_DEFINITION = 0x02

; ===============================================================================================================================
; _WinAPI_DeviceIoControl()
; ===============================================================================================================================

Global Const $FSCTL_ALLOW_EXTENDED_DASD_IO = 0x00090083
Global Const $FSCTL_CREATE_OR_GET_OBJECT_ID = 0x000900C0
Global Const $FSCTL_CREATE_USN_JOURNAL = 0x000900E7
Global Const $FSCTL_DELETE_OBJECT_ID = 0x000900A0
Global Const $FSCTL_DELETE_REPARSE_POINT = 0x000900AC
Global Const $FSCTL_DELETE_USN_JOURNAL = 0x000900F8
Global Const $FSCTL_DISMOUNT_VOLUME = 0x00090020
Global Const $FSCTL_DUMP_PROPERTY_DATA = 0x00090097
Global Const $FSCTL_ENABLE_UPGRADE = 0x000980D0
Global Const $FSCTL_ENCRYPTION_FSCTL_IO = 0x000900DB
Global Const $FSCTL_ENUM_USN_DATA = 0x000900B3
Global Const $FSCTL_EXTEND_VOLUME = 0x000900F0
Global Const $FSCTL_FILESYSTEM_GET_STATISTICS = 0x00090060
Global Const $FSCTL_FIND_FILES_BY_SID = 0x0009008F
Global Const $FSCTL_GET_COMPRESSION = 0x0009003C
Global Const $FSCTL_GET_NTFS_FILE_RECORD = 0x00090068
Global Const $FSCTL_GET_NTFS_VOLUME_DATA = 0x00090064
Global Const $FSCTL_GET_OBJECT_ID = 0x0009009C
Global Const $FSCTL_GET_REPARSE_POINT = 0x000900A8
Global Const $FSCTL_GET_RETRIEVAL_POINTERS = 0x00090073
Global Const $FSCTL_GET_VOLUME_BITMAP = 0x0009006F
Global Const $FSCTL_HSM_DATA = 0x0009C113
Global Const $FSCTL_HSM_MSG = 0x0009C108
Global Const $FSCTL_INVALIDATE_VOLUMES = 0x00090054
Global Const $FSCTL_IS_PATHNAME_VALID = 0x0009002C
Global Const $FSCTL_IS_VOLUME_DIRTY = 0x00090078
Global Const $FSCTL_IS_VOLUME_MOUNTED = 0x00090028
Global Const $FSCTL_LOCK_VOLUME = 0x00090018
Global Const $FSCTL_MARK_AS_SYSTEM_HIVE = 0x0009004F
Global Const $FSCTL_MARK_HANDLE = 0x000900FC
Global Const $FSCTL_MARK_VOLUME_DIRTY = 0x00090030
Global Const $FSCTL_MOVE_FILE = 0x00090074
Global Const $FSCTL_OPBATCH_ACK_CLOSE_PENDING = 0x00090010
Global Const $FSCTL_OPLOCK_BREAK_ACK_NO_2 = 0x00090050
Global Const $FSCTL_OPLOCK_BREAK_ACKNOWLEDGE = 0x0009000C
Global Const $FSCTL_OPLOCK_BREAK_NOTIFY = 0x00090014
Global Const $FSCTL_QUERY_ALLOCATED_RANGES = 0x000940CF
Global Const $FSCTL_QUERY_FAT_BPB = 0x00090058
Global Const $FSCTL_QUERY_RETRIEVAL_POINTERS = 0x0009003B
Global Const $FSCTL_QUERY_USN_JOURNAL = 0x000900F4
Global Const $FSCTL_READ_FILE_USN_DATA = 0x000900EB
Global Const $FSCTL_READ_PROPERTY_DATA = 0x00090087
Global Const $FSCTL_READ_RAW_ENCRYPTED = 0x000900E3
Global Const $FSCTL_READ_USN_JOURNAL = 0x000900BB
Global Const $FSCTL_RECALL_FILE = 0x00090117
Global Const $FSCTL_REQUEST_BATCH_OPLOCK = 0x00090008
Global Const $FSCTL_REQUEST_FILTER_OPLOCK = 0x0009005C
Global Const $FSCTL_REQUEST_OPLOCK_LEVEL_1 = 0x00090000
Global Const $FSCTL_REQUEST_OPLOCK_LEVEL_2 = 0x00090004
Global Const $FSCTL_SECURITY_ID_CHECK = 0x000940B7
Global Const $FSCTL_SET_COMPRESSION = 0x0009C040
Global Const $FSCTL_SET_ENCRYPTION = 0x000900D7
Global Const $FSCTL_SET_OBJECT_ID = 0x00090098
Global Const $FSCTL_SET_OBJECT_ID_EXTENDED = 0x000900BC
Global Const $FSCTL_SET_REPARSE_POINT = 0x000900A4
Global Const $FSCTL_SET_SPARSE = 0x000900C4
Global Const $FSCTL_SET_ZERO_DATA = 0x000980C8
Global Const $FSCTL_SIS_COPYFILE = 0x00090100
Global Const $FSCTL_SIS_LINK_FILES = 0x0009C104
Global Const $FSCTL_UNLOCK_VOLUME = 0x0009001C
Global Const $FSCTL_WRITE_PROPERTY_DATA = 0x0009008B
Global Const $FSCTL_WRITE_RAW_ENCRYPTED = 0x000900DF
Global Const $FSCTL_WRITE_USN_CLOSE_RECORD = 0x000900EF

Global Const $IOCTL_AACS_END_SESSION = 0x003350CC
Global Const $IOCTL_AACS_GENERATE_BINDING_NONCE = 0x0033D0F0
Global Const $IOCTL_AACS_GET_CERTIFICATE = 0x003350D4
Global Const $IOCTL_AACS_GET_CHALLENGE_KEY = 0x003350D8
Global Const $IOCTL_AACS_READ_BINDING_NONCE = 0x003350EC
Global Const $IOCTL_AACS_READ_MEDIA_ID = 0x003350E8
Global Const $IOCTL_AACS_READ_MEDIA_KEY_BLOCK = 0x003350C4
Global Const $IOCTL_AACS_READ_MEDIA_KEY_BLOCK_SIZE = 0x003350C0
Global Const $IOCTL_AACS_READ_SERIAL_NUMBER = 0x003350E4
Global Const $IOCTL_AACS_READ_VOLUME_ID = 0x003350E0
Global Const $IOCTL_AACS_SEND_CERTIFICATE = 0x003350D0
Global Const $IOCTL_AACS_SEND_CHALLENGE_KEY = 0x003350DC
Global Const $IOCTL_AACS_START_SESSION = 0x003350C8

Global Const $IOCTL_ATA_PASS_THROUGH = 0x0004D02C
Global Const $IOCTL_ATA_PASS_THROUGH_DIRECT = 0x0004D030

Global Const $IOCTL_CDROM_CHECK_VERIFY = 0x00024800
Global Const $IOCTL_CDROM_DISK_TYPE = 0x00020040
Global Const $IOCTL_CDROM_EJECT_MEDIA = 0x00024808
Global Const $IOCTL_CDROM_FIND_NEW_DEVICES = 0x00024818
Global Const $IOCTL_CDROM_GET_CONFIGURATION = 0x00024058
Global Const $IOCTL_CDROM_GET_CONTROL = 0x00024034
Global Const $IOCTL_CDROM_GET_DRIVE_GEOMETRY = 0x0002404C
Global Const $IOCTL_CDROM_GET_DRIVE_GEOMETRY_EX = 0x00024050
Global Const $IOCTL_CDROM_GET_LAST_SESSION = 0x00024038
Global Const $IOCTL_CDROM_GET_VOLUME = 0x00024014
Global Const $IOCTL_CDROM_LOAD_MEDIA = 0x0002480C
Global Const $IOCTL_CDROM_MEDIA_REMOVAL = 0x00024804
Global Const $IOCTL_CDROM_PAUSE_AUDIO = 0x0002400C
Global Const $IOCTL_CDROM_PLAY_AUDIO_MSF = 0x00024018
Global Const $IOCTL_CDROM_RAW_READ = 0x0002403E
Global Const $IOCTL_CDROM_READ_Q_CHANNEL = 0x0002402C
Global Const $IOCTL_CDROM_READ_TOC = 0x00024000
Global Const $IOCTL_CDROM_READ_TOC_EX = 0x00024054
Global Const $IOCTL_CDROM_RELEASE = 0x00024814
Global Const $IOCTL_CDROM_RESERVE = 0x00024810
Global Const $IOCTL_CDROM_RESUME_AUDIO = 0x00024010
Global Const $IOCTL_CDROM_SEEK_AUDIO_MSF = 0x00024004
Global Const $IOCTL_CDROM_SET_VOLUME = 0x00024028
Global Const $IOCTL_CDROM_STOP_AUDIO = 0x00024008
Global Const $IOCTL_CDROM_UNLOAD_DRIVER = 0x00025008

Global Const $IOCTL_DISK_CHECK_VERIFY = 0x00074800
Global Const $IOCTL_DISK_CONTROLLER_NUMBER = 0x00070044
Global Const $IOCTL_DISK_CREATE_DISK = 0x0007C058
Global Const $IOCTL_DISK_DELETE_DRIVE_LAYOUT = 0x0007C100
Global Const $IOCTL_DISK_EJECT_MEDIA = 0x00074808
Global Const $IOCTL_DISK_FIND_NEW_DEVICES = 0x00074818
Global Const $IOCTL_DISK_FORMAT_TRACKS = 0x0007C018
Global Const $IOCTL_DISK_FORMAT_TRACKS_EX = 0x0007C02C
Global Const $IOCTL_DISK_GET_CACHE_INFORMATION = 0x000740D4
Global Const $IOCTL_DISK_GET_DRIVE_GEOMETRY = 0x00070000
Global Const $IOCTL_DISK_GET_DRIVE_GEOMETRY_EX = 0x000700A0
Global Const $IOCTL_DISK_GET_DRIVE_LAYOUT = 0x0007400C
Global Const $IOCTL_DISK_GET_DRIVE_LAYOUT_EX = 0x00070050
Global Const $IOCTL_DISK_GET_LENGTH_INFO = 0x0007405C
Global Const $IOCTL_DISK_GET_MEDIA_TYPES = 0x00070C00
Global Const $IOCTL_DISK_GET_PARTITION_INFO = 0x00074004
Global Const $IOCTL_DISK_GET_PARTITION_INFO_EX = 0x00070048
Global Const $IOCTL_DISK_GET_WRITE_CACHE_STATE = 0x000740DC
Global Const $IOCTL_DISK_GROW_PARTITION = 0x0007C0D0
Global Const $IOCTL_DISK_HISTOGRAM_DATA = 0x00070034
Global Const $IOCTL_DISK_HISTOGRAM_RESET = 0x00070038
Global Const $IOCTL_DISK_HISTOGRAM_STRUCTURE = 0x00070030
Global Const $IOCTL_DISK_INTERNAL_CLEAR_VERIFY = 0x00070407
Global Const $IOCTL_DISK_INTERNAL_SET_NOTIFY = 0x00070408
Global Const $IOCTL_DISK_INTERNAL_SET_VERIFY = 0x00070403
Global Const $IOCTL_DISK_IS_WRITABLE = 0x00070024
Global Const $IOCTL_DISK_LOAD_MEDIA = 0x0007480C
Global Const $IOCTL_DISK_LOGGING = 0x00070028
Global Const $IOCTL_DISK_MEDIA_REMOVAL = 0x00074804
Global Const $IOCTL_DISK_PERFORMANCE = 0x00070020
Global Const $IOCTL_DISK_PERFORMANCE_OFF = 0x00070060
Global Const $IOCTL_DISK_REASSIGN_BLOCKS = 0x0007C01C
Global Const $IOCTL_DISK_RELEASE = 0x00074814
Global Const $IOCTL_DISK_REQUEST_DATA = 0x00070040
Global Const $IOCTL_DISK_REQUEST_STRUCTURE = 0x0007003C
Global Const $IOCTL_DISK_RESERVE = 0x00074810
Global Const $IOCTL_DISK_SET_CACHE_INFORMATION = 0x0007C0D8
Global Const $IOCTL_DISK_SET_DRIVE_LAYOUT = 0x0007C010
Global Const $IOCTL_DISK_SET_DRIVE_LAYOUT_EX = 0x0007C054
Global Const $IOCTL_DISK_SET_PARTITION_INFO = 0x0007C008
Global Const $IOCTL_DISK_SET_PARTITION_INFO_EX = 0x0007C04C
Global Const $IOCTL_DISK_UPDATE_DRIVE_SIZE = 0x0007C0C8
Global Const $IOCTL_DISK_UPDATE_PROPERTIES = 0x00070140
Global Const $IOCTL_DISK_VERIFY = 0x00070014

Global Const $IOCTL_DVD_END_SESSION = 0x0033500C
Global Const $IOCTL_DVD_GET_REGION = 0x00335014
Global Const $IOCTL_DVD_READ_KEY = 0x00335004
Global Const $IOCTL_DVD_READ_STRUCTURE = 0x00335140
Global Const $IOCTL_DVD_SEND_KEY = 0x00335008
Global Const $IOCTL_DVD_SEND_KEY2 = 0x0033D018
Global Const $IOCTL_DVD_SET_READ_AHEAD = 0x00335010
Global Const $IOCTL_DVD_START_SESSION = 0x00335000

Global Const $IOCTL_MOUNTDEV_LINK_CREATED = 0x004D0010
Global Const $IOCTL_MOUNTDEV_LINK_DELETED = 0x004D0014
Global Const $IOCTL_MOUNTDEV_QUERY_STABLE_GUID = 0x004D0018
Global Const $IOCTL_MOUNTDEV_QUERY_SUGGESTED_LINK_NAME = 0x004D000C
Global Const $IOCTL_MOUNTDEV_QUERY_UNIQUE_ID = 0x004D0000
Global Const $IOCTL_MOUNTDEV_UNIQUE_ID_CHANGE_NOTIFY = 0x004D0004

Global Const $IOCTL_MOUNTMGR_AUTO_DL_ASSIGNMENTS = 0x006DC014
Global Const $IOCTL_MOUNTMGR_CHANGE_NOTIFY = 0x006D4020
Global Const $IOCTL_MOUNTMGR_CHECK_UNPROCESSED_VOLUMES = 0x006D4028
Global Const $IOCTL_MOUNTMGR_CREATE_POINT = 0x006DC000
Global Const $IOCTL_MOUNTMGR_DELETE_POINTS = 0x006DC004
Global Const $IOCTL_MOUNTMGR_DELETE_POINTS_DBONLY = 0x006DC00C
Global Const $IOCTL_MOUNTMGR_KEEP_LINKS_WHEN_OFFLINE = 0x006DC024
Global Const $IOCTL_MOUNTMGR_NEXT_DRIVE_LETTER = 0x006DC010
Global Const $IOCTL_MOUNTMGR_QUERY_DOS_VOLUME_PATH = 0x006D0030
Global Const $IOCTL_MOUNTMGR_QUERY_DOS_VOLUME_PATHS = 0x006D0034
Global Const $IOCTL_MOUNTMGR_QUERY_POINTS = 0x006D0008
Global Const $IOCTL_MOUNTMGR_VOLUME_ARRIVAL_NOTIFICATION = 0x006D402C
Global Const $IOCTL_MOUNTMGR_VOLUME_MOUNT_POINT_CREATED = 0x006DC018
Global Const $IOCTL_MOUNTMGR_VOLUME_MOUNT_POINT_DELETED = 0x006DC01C

Global Const $IOCTL_SCSI_GET_INQUIRY_DATA = 0x0004100C
Global Const $IOCTL_SCSI_GET_CAPABILITIES = 0x00041010
Global Const $IOCTL_SCSI_GET_ADDRESS = 0x00041018
Global Const $IOCTL_SCSI_MINIPORT = 0x0004D008
Global Const $IOCTL_SCSI_PASS_THROUGH = 0x0004D004
Global Const $IOCTL_SCSI_PASS_THROUGH_DIRECT = 0x0004D014
Global Const $IOCTL_SCSI_RESCAN_BUS = 0x0004101C

Global Const $IOCTL_STORAGE_BREAK_RESERVATION = 0x002D5014
Global Const $IOCTL_STORAGE_CHECK_VERIFY = 0x002D4800
Global Const $IOCTL_STORAGE_CHECK_VERIFY2 = 0x002D0800
Global Const $IOCTL_STORAGE_EJECT_MEDIA = 0x002D4808
Global Const $IOCTL_STORAGE_EJECTION_CONTROL = 0x002D0940
Global Const $IOCTL_STORAGE_FIND_NEW_DEVICES = 0x002D4818
Global Const $IOCTL_STORAGE_GET_DEVICE_NUMBER = 0x002D1080
Global Const $IOCTL_STORAGE_GET_HOTPLUG_INFO = 0x002D0C14
Global Const $IOCTL_STORAGE_GET_MEDIA_SERIAL_NUMBER = 0x002D0C10
Global Const $IOCTL_STORAGE_GET_MEDIA_TYPES = 0x002D0C00
Global Const $IOCTL_STORAGE_GET_MEDIA_TYPES_EX = 0x002D0C04
Global Const $IOCTL_STORAGE_LOAD_MEDIA = 0x002D480C
Global Const $IOCTL_STORAGE_LOAD_MEDIA2 = 0x002D080C
Global Const $IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES = 0x002D9404
Global Const $IOCTL_STORAGE_MCN_CONTROL = 0x002D0944
Global Const $IOCTL_STORAGE_MEDIA_REMOVAL = 0x002D4804
Global Const $IOCTL_STORAGE_PERSISTENT_RESERVE_IN = 0x002D5018
Global Const $IOCTL_STORAGE_PERSISTENT_RESERVE_OUT = 0x002D501C
Global Const $IOCTL_STORAGE_PREDICT_FAILURE = 0x002D1100
Global Const $IOCTL_STORAGE_QUERY_PROPERTY = 0x002D1400
Global Const $IOCTL_STORAGE_RELEASE = 0x002D4814
Global Const $IOCTL_STORAGE_RESERVE = 0x002D4810
Global Const $IOCTL_STORAGE_RESET_BUS = 0x002D5000
Global Const $IOCTL_STORAGE_RESET_DEVICE = 0x002D5004
Global Const $IOCTL_STORAGE_SET_HOTPLUG_INFO = 0x002DCC18
Global Const $IOCTL_STORAGE_SET_READ_AHEAD = 0x002D4400

Global Const $IOCTL_VOLUME_GET_GPT_ATTRIBUTES = 0x00560038
Global Const $IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS = 0x00560000
Global Const $IOCTL_VOLUME_IS_CLUSTERED = 0x00560030
Global Const $IOCTL_VOLUME_IS_IO_CAPABLE = 0x00560014
Global Const $IOCTL_VOLUME_IS_OFFLINE = 0x00560010
Global Const $IOCTL_VOLUME_IS_PARTITION = 0x00560028
Global Const $IOCTL_VOLUME_LOGICAL_TO_PHYSICAL = 0x00560020
Global Const $IOCTL_VOLUME_OFFLINE = 0x0056C00C
Global Const $IOCTL_VOLUME_ONLINE = 0x0056C008
Global Const $IOCTL_VOLUME_PHYSICAL_TO_LOGICAL = 0x00560024
Global Const $IOCTL_VOLUME_QUERY_FAILOVER_SET = 0x00560018
Global Const $IOCTL_VOLUME_QUERY_VOLUME_NUMBER = 0x0056001C
Global Const $IOCTL_VOLUME_READ_PLEX = 0x0056402E
Global Const $IOCTL_VOLUME_SET_GPT_ATTRIBUTES = 0x00560034
Global Const $IOCTL_VOLUME_SUPPORTS_ONLINE_OFFLINE = 0x00560004

Global Const $SMART_GET_VERSION = 0x00074080
Global Const $SMART_RCV_DRIVE_DATA = 0x0007C088
Global Const $SMART_SEND_DRIVE_COMMAND = 0x0007C084

; ===============================================================================================================================
; _WinAPI_DllGetVersion()
; ===============================================================================================================================

Global Const $DLLVER_PLATFORM_WINDOWS = 0x01
Global Const $DLLVER_PLATFORM_NT = 0x02

; ===============================================================================================================================
; _WinAPI_DrawShadowText()
; ===============================================================================================================================

;Global Const $DT_BOTTOM = 0x00000008
;Global Const $DT_CALCRECT = 0x00000400
;Global Const $DT_CENTER = 0x00000001
;Global Const $DT_EDITCONTROL = 0x00002000
;Global Const $DT_END_ELLIPSIS = 0x00008000
;Global Const $DT_EXPANDTABS = 0x00000040
;Global Const $DT_EXTERNALLEADING = 0x00000200
;Global Const $DT_HIDEPREFIX = 0x00100000
;Global Const $DT_INTERNAL = 0x00001000
;Global Const $DT_LEFT = 0x00000000
;Global Const $DT_MODIFYSTRING = 0x00010000
;Global Const $DT_NOCLIP = 0x00000100
;Global Const $DT_NOFULLWIDTHCHARBREAK = 0x00080000
;Global Const $DT_NOPREFIX = 0x00000800
;Global Const $DT_PATH_ELLIPSIS = 0x00004000
;Global Const $DT_PREFIXONLY = 0x00200000
;Global Const $DT_RIGHT = 0x00000002
;Global Const $DT_RTLREADING = 0x00020000
;Global Const $DT_SINGLELINE = 0x00000020
;Global Const $DT_TABSTOP = 0x00000080
;Global Const $DT_TOP = 0x00000000
;Global Const $DT_VCENTER = 0x00000004
;Global Const $DT_WORDBREAK = 0x00000010
;Global Const $DT_WORD_ELLIPSIS = 0x00040000

; ===============================================================================================================================
; _WinAPI_DrawThemeEdge()
; ===============================================================================================================================

;Global Const $BDR_RAISEDINNER = 0x04
;Global Const $BDR_SUNKENINNER = 0x08
;Global Const $BDR_RAISEDOUTER = 0x01
;Global Const $BDR_SUNKENOUTER = 0x02

;Global Const $EDGE_BUMP = BitOR($BDR_RAISEDOUTER, $BDR_SUNKENINNER)
;Global Const $EDGE_ETCHED = BitOR($BDR_SUNKENOUTER, $BDR_RAISEDINNER)
;Global Const $EDGE_RAISED = BitOR($BDR_RAISEDOUTER, $BDR_RAISEDINNER)
;Global Const $EDGE_SUNKEN = BitOR($BDR_SUNKENOUTER, $BDR_SUNKENINNER)

;Global Const $BF_ADJUST = 0x2000
;Global Const $BF_BOTTOM = 0x0008
;Global Const $BF_DIAGONAL = 0x0010
;Global Const $BF_FLAT = 0x4000
;Global Const $BF_LEFT = 0x0001
;Global Const $BF_MIDDLE = 0x0800
;Global Const $BF_MONO = 0x8000
;Global Const $BF_RIGHT = 0x0004
;Global Const $BF_SOFT = 0x1000
;Global Const $BF_TOP = 0x0002
;Global Const $BF_BOTTOMLEFT = BitOR($BF_BOTTOM, $BF_LEFT)
;Global Const $BF_BOTTOMRIGHT = BitOR($BF_BOTTOM, $BF_RIGHT)
;Global Const $BF_DIAGONAL_ENDBOTTOMLEFT = BitOR($BF_DIAGONAL, $BF_BOTTOM, $BF_LEFT)
;Global Const $BF_DIAGONAL_ENDBOTTOMRIGHT = BitOR($BF_DIAGONAL, $BF_BOTTOM, $BF_RIGHT)
;Global Const $BF_DIAGONAL_ENDTOPLEFT = BitOR($BF_DIAGONAL, $BF_TOP, $BF_LEFT)
;Global Const $BF_DIAGONAL_ENDTOPRIGHT = BitOR($BF_DIAGONAL, $BF_TOP, $BF_RIGHT)
;Global Const $BF_RECT = BitOR($BF_LEFT, $BF_TOP, $BF_RIGHT, $BF_BOTTOM)
;Global Const $BF_TOPLEFT = BitOR($BF_TOP, $BF_LEFT)
;Global Const $BF_TOPRIGHT = BitOR($BF_TOP, $BF_RIGHT)

; ===============================================================================================================================
; _WinAPI_DrawThemeTextEx()
; ===============================================================================================================================

Global Const $DTT_TEXTCOLOR = 0x00000001
Global Const $DTT_BORDERCOLOR = 0x00000002
Global Const $DTT_SHADOWCOLOR = 0x00000004
Global Const $DTT_SHADOWTYPE = 0x00000008
Global Const $DTT_SHADOWOFFSET = 0x00000010
Global Const $DTT_BORDERSIZE = 0x00000020
Global Const $DTT_FONTPROP = 0x00000040
Global Const $DTT_COLORPROP = 0x00000080
Global Const $DTT_STATEID = 0x00000100
Global Const $DTT_CALCRECT = 0x00000200
Global Const $DTT_APPLYOVERLAY = 0x00000400
Global Const $DTT_GLOWSIZE = 0x00000800
Global Const $DTT_CALLBACK = 0x00001000
Global Const $DTT_COMPOSITED = 0x00002000
Global Const $DTT_VALIDBITS = BitOR($DTT_TEXTCOLOR, $DTT_BORDERCOLOR, $DTT_SHADOWCOLOR, $DTT_SHADOWTYPE, $DTT_SHADOWOFFSET, $DTT_BORDERSIZE, $DTT_FONTPROP, $DTT_COLORPROP, $DTT_STATEID, $DTT_CALCRECT, $DTT_APPLYOVERLAY, $DTT_GLOWSIZE, $DTT_COMPOSITED)

Global Const $TST_NONE = 0
Global Const $TST_SINGLE = 1
Global Const $TST_CONTINUOUS = 2

; ===============================================================================================================================
; _WinAPI_DuplicateHandle()
; ===============================================================================================================================

;~Global Const $DUPLICATE_CLOSE_SOURCE = 0x01
;~Global Const $DUPLICATE_SAME_ACCESS = 0x02

; ===============================================================================================================================
; _WinAPI_DuplicateTokenEx()
; ===============================================================================================================================

;Global Const $SecurityAnonymous = 0
;Global Const $SecurityIdentification = 1
;Global Const $SecurityImpersonation = 2
;Global Const $SecurityDelegation = 3

;Global Const $TokenPrimary = 1
;Global Const $TokenImpersonation = 2

; ===============================================================================================================================
; _WinAPI_DwmGetWindowAttribute(), _WinAPI_DwmSetWindowAttribute()
; ===============================================================================================================================

Global Const $DWMWA_NCRENDERING_ENABLED = 1
Global Const $DWMWA_NCRENDERING_POLICY = 2
Global Const $DWMWA_TRANSITIONS_FORCEDISABLED = 3
Global Const $DWMWA_ALLOW_NCPAINT = 4
Global Const $DWMWA_CAPTION_BUTTON_BOUNDS = 5
Global Const $DWMWA_NONCLIENT_RTL_LAYOUT = 6
Global Const $DWMWA_FORCE_ICONIC_REPRESENTATION = 7
Global Const $DWMWA_FLIP3D_POLICY = 8
Global Const $DWMWA_EXTENDED_FRAME_BOUNDS = 9
Global Const $DWMWA_HAS_ICONIC_BITMAP = 10
Global Const $DWMWA_DISALLOW_PEEK = 11
Global Const $DWMWA_EXCLUDED_FROM_PEEK = 12

Global Const $DWMNCRP_USEWINDOWSTYLE = 0
Global Const $DWMNCRP_DISABLED = 1
Global Const $DWMNCRP_ENABLED = 2

Global Const $DWMFLIP3D_DEFAULT = 0
Global Const $DWMFLIP3D_EXCLUDEBELOW = 1
Global Const $DWMFLIP3D_EXCLUDEABOVE = 2

; ===============================================================================================================================
; _WinAPI_EnumDisplaySettings()
; ===============================================================================================================================

Global Const $ENUM_CURRENT_SETTINGS = -1
Global Const $ENUM_REGISTRY_SETTINGS = -2

; ===============================================================================================================================
; _WinAPI_EnumDllProc()
; ===============================================================================================================================

Global Const $SYMOPT_ALLOW_ABSOLUTE_SYMBOLS = 0x00000800
Global Const $SYMOPT_ALLOW_ZERO_ADDRESS = 0x01000000
Global Const $SYMOPT_AUTO_PUBLICS = 0x00010000
Global Const $SYMOPT_CASE_INSENSITIVE = 0x00000001
Global Const $SYMOPT_DEBUG = 0x80000000
Global Const $SYMOPT_DEFERRED_LOADS = 0x00000004
Global Const $SYMOPT_DISABLE_SYMSRV_AUTODETECT = 0x02000000
Global Const $SYMOPT_EXACT_SYMBOLS = 0x00000400
Global Const $SYMOPT_FAIL_CRITICAL_ERRORS = 0x00000200
Global Const $SYMOPT_FAVOR_COMPRESSED = 0x00800000
Global Const $SYMOPT_FLAT_DIRECTORY = 0x00400000
Global Const $SYMOPT_IGNORE_CVREC = 0x00000080
Global Const $SYMOPT_IGNORE_IMAGEDIR = 0x00200000
Global Const $SYMOPT_IGNORE_NT_SYMPATH = 0x00001000
Global Const $SYMOPT_INCLUDE_32BIT_MODULES = 0x00002000
Global Const $SYMOPT_LOAD_ANYTHING = 0x00000040
Global Const $SYMOPT_LOAD_LINES = 0x00000010
Global Const $SYMOPT_NO_CPP = 0x00000008
Global Const $SYMOPT_NO_IMAGE_SEARCH = 0x00020000
Global Const $SYMOPT_NO_PROMPTS = 0x00080000
Global Const $SYMOPT_NO_PUBLICS = 0x00008000
Global Const $SYMOPT_NO_UNQUALIFIED_LOADS = 0x00000100
Global Const $SYMOPT_OVERWRITE = 0x00100000
Global Const $SYMOPT_PUBLICS_ONLY = 0x00004000
Global Const $SYMOPT_SECURE = 0x00040000
Global Const $SYMOPT_UNDNAME = 0x00000002

; ===============================================================================================================================
; _WinAPI_EnumFontFamilies()
; ===============================================================================================================================

Global Const $DEVICE_FONTTYPE = 0x2
Global Const $RASTER_FONTTYPE = 0x1
Global Const $TRUETYPE_FONTTYPE = 0x4

Global Const $NTM_BOLD = 0x00000020
Global Const $NTM_DSIG = 0x00200000
Global Const $NTM_ITALIC = 0x00000001
Global Const $NTM_MULTIPLEMASTER = 0x00080000
Global Const $NTM_NONNEGATIVE_AC = 0x00010000
Global Const $NTM_PS_OPENTYPE = 0x00020000
Global Const $NTM_REGULAR = 0x00000040
Global Const $NTM_TT_OPENTYPE = 0x00040000
Global Const $NTM_TYPE1 = 0x00100000

; ===============================================================================================================================
; _WinAPI_EnumProcessModules()
; ===============================================================================================================================

Global Const $LIST_MODULES_32BIT = 1
Global Const $LIST_MODULES_64BIT = 2
Global Const $LIST_MODULES_ALL = 3
Global Const $LIST_MODULES_DEFAULT = 0

; ===============================================================================================================================
; _WinAPI_EnumUILanguages()
; ===============================================================================================================================

Global Const $MUI_LANGUAGE_ID = 0x0004
Global Const $MUI_LANGUAGE_NAME = 0x0008

; ===============================================================================================================================
; _WinAPI_ExtFloodFill()
; ===============================================================================================================================

Global Const $FLOODFILLBORDER = 0
Global Const $FLOODFILLSURFACE = 1

; ===============================================================================================================================
; _WinAPI_ExtSelectClipRgn(), _WinAPI_SelectClipPath()
; ===============================================================================================================================

;Global Const $RGN_AND = 1
;Global Const $RGN_OR = 2
;Global Const $RGN_XOR = 3
;Global Const $RGN_DIFF = 4
;Global Const $RGN_COPY = 5

; ===============================================================================================================================
; _WinAPI_FileEncryptionStatus()
; ===============================================================================================================================

Global Const $FILE_ENCRYPTABLE = 0
Global Const $FILE_IS_ENCRYPTED = 1
Global Const $FILE_READ_ONLY = 8
Global Const $FILE_ROOT_DIR = 3
Global Const $FILE_SYSTEM_ATTR = 2
Global Const $FILE_SYSTEM_DIR = 4
Global Const $FILE_SYSTEM_NOT_SUPPORT = 6
Global Const $FILE_UNKNOWN = 5
Global Const $FILE_USER_DISALLOWED = 7

; ===============================================================================================================================
; _WinAPI_FindResource(), _WinAPI_FindResourceEx(), _WinAPI_UpdateResource()
; ===============================================================================================================================

Global Const $RT_ACCELERATOR = 9
Global Const $RT_ANICURSOR = 21
Global Const $RT_ANIICON = 22
Global Const $RT_BITMAP = 2
Global Const $RT_CURSOR = 1
Global Const $RT_DIALOG = 5
Global Const $RT_DLGINCLUDE = 17
Global Const $RT_FONT = 8
Global Const $RT_FONTDIR = 7
Global Const $RT_GROUP_CURSOR = 12
Global Const $RT_GROUP_ICON = 14
Global Const $RT_HTML = 23
Global Const $RT_ICON = 3
Global Const $RT_MANIFEST = 24
Global Const $RT_MENU = 4
Global Const $RT_MESSAGETABLE = 11
Global Const $RT_PLUGPLAY = 19
Global Const $RT_RCDATA = 10
Global Const $RT_STRING = 6
Global Const $RT_VERSION = 16
Global Const $RT_VXD = 20

; ===============================================================================================================================
; _WinAPI_FindText(), _WinAPI_ReplaceText()
; ===============================================================================================================================

;Global Const $FR_DIALOGTERM = 0x00000040
;Global Const $FR_DOWN = 0x00000001
;Global Const $FR_ENABLEHOOK = 0x00000100
;Global Const $FR_ENABLETEMPLATE = 0x00000200
;Global Const $FR_ENABLETEMPLATEHANDLE = 0x00002000
;Global Const $FR_FINDNEXT = 0x00000008
;Global Const $FR_HIDEUPDOWN = 0x00004000
;Global Const $FR_HIDEMATCHCASE = 0x00008000
;Global Const $FR_HIDEWHOLEWORD = 0x00010000
;Global Const $FR_MATCHCASE = 0x00000004
Global Const $FR_NOMATCHCASE = 0x00000800
Global Const $FR_NOUPDOWN = 0x00000400
Global Const $FR_NOWHOLEWORD = 0x00001000
;Global Const $FR_REPLACE = 0x00000010
;Global Const $FR_REPLACEALL = 0x00000020
;Global Const $FR_SHOWHELP = 0x00000080
;Global Const $FR_WHOLEWORD = 0x00000002

; ===============================================================================================================================
; _WinAPI_FormatDriveDlg()
; ===============================================================================================================================

Global Const $SHFMT_ID_DEFAULT = 0xFFFF

Global Const $SHFMT_OPT_FULL = 0x00
Global Const $SHFMT_OPT_QUICKFORMAT = 0x01
Global Const $SHFMT_OPT_SYSONLY = 0x02

Global Const $SHFMT_ERROR = -1
Global Const $SHFMT_CANCEL = -2
Global Const $SHFMT_NOFORMAT = -3

; ===============================================================================================================================
; _WinAPI_GetArcDirection(), _WinAPI_SetArcDirection()
; ===============================================================================================================================

Global Const $AD_COUNTERCLOCKWISE = 1
Global Const $AD_CLOCKWISE = 2

; ===============================================================================================================================
; _WinAPI_GetBinaryType()
; ===============================================================================================================================

Global Const $SCS_32BIT_BINARY = 0
Global Const $SCS_64BIT_BINARY = 6
Global Const $SCS_DOS_BINARY = 1
Global Const $SCS_OS216_BINARY = 5
Global Const $SCS_PIF_BINARY = 3
Global Const $SCS_POSIX_BINARY = 4
Global Const $SCS_WOW_BINARY = 2

; ===============================================================================================================================
; _WinAPI_GetBoundsRect(), _WinAPI_SetBoundsRect()
; ===============================================================================================================================

Global Const $DCB_ACCUMULATE = 0x02
Global Const $DCB_DISABLE = 0x08
Global Const $DCB_ENABLE = 0x04
Global Const $DCB_RESET = 0x01
Global Const $DCB_SET = BitOR($DCB_RESET, $DCB_ACCUMULATE)

; ===============================================================================================================================
; _WinAPI_GetClassLongEx(), _WinAPI_SetClassLongEx()
; ===============================================================================================================================

Global Const $GCL_CBCLSEXTRA = -20
Global Const $GCL_CBWNDEXTRA = -18
Global Const $GCL_HBRBACKGROUND = -10
Global Const $GCL_HCURSOR = -12
Global Const $GCL_HICON = -14
Global Const $GCL_HICONSM = -34
Global Const $GCL_HMODULE = -16
Global Const $GCL_MENUNAME = -8
Global Const $GCL_STYLE = -26
Global Const $GCL_WNDPROC = -24

; ===============================================================================================================================
; _WinAPI_GetCurrentHwProfile()
; ===============================================================================================================================

Global Const $DOCKINFO_DOCKED = 0x02
Global Const $DOCKINFO_UNDOCKED = 0x01
Global Const $DOCKINFO_USER_SUPPLIED = 0x04
Global Const $DOCKINFO_USER_DOCKED = 0x05
Global Const $DOCKINFO_USER_UNDOCKED = 0x06

; ===============================================================================================================================
; _WinAPI_GetCurrentObject(), _WinAPI_GetObjectType()
; ===============================================================================================================================

Global Const $OBJ_BITMAP = 7
Global Const $OBJ_BRUSH = 2
Global Const $OBJ_COLORSPACE = 14
Global Const $OBJ_DC = 3
Global Const $OBJ_ENHMETADC = 12
Global Const $OBJ_ENHMETAFILE = 13
Global Const $OBJ_EXTPEN = 11
Global Const $OBJ_FONT = 6
Global Const $OBJ_MEMDC = 10
Global Const $OBJ_METADC = 4
Global Const $OBJ_METAFILE = 9
Global Const $OBJ_PAL = 5
Global Const $OBJ_PEN = 1
Global Const $OBJ_REGION = 8

; ===============================================================================================================================
; _WinAPI_GetDateFormat()
; ===============================================================================================================================

Global Const $DATE_AUTOLAYOUT = 0x40
Global Const $DATE_LONGDATE = 0x02
Global Const $DATE_LTRREADING = 0x10
Global Const $DATE_SHORTDATE = 0x01
Global Const $DATE_RTLREADING = 0x20
Global Const $DATE_USE_ALT_CALENDAR = 0x04
Global Const $DATE_YEARMONTH = 0x08

; ===============================================================================================================================
; _WinAPI_GetDCEx()
; ===============================================================================================================================

Global Const $DCX_WINDOW = 0x00000001
Global Const $DCX_CACHE = 0x00000002
Global Const $DCX_PARENTCLIP = 0x00000020
Global Const $DCX_CLIPSIBLINGS = 0x00000010
Global Const $DCX_CLIPCHILDREN = 0x00000008
Global Const $DCX_NORESETATTRS = 0x00000004
Global Const $DCX_LOCKWINDOWUPDATE = 0x00000400
Global Const $DCX_EXCLUDERGN = 0x00000040
Global Const $DCX_INTERSECTRGN = 0x00000080
Global Const $DCX_INTERSECTUPDATE = 0x00000200
Global Const $DCX_VALIDATE = 0x00200000

; ===============================================================================================================================
; _WinAPI_GetDriveBusType()
; ===============================================================================================================================

Global Const $DRIVE_BUS_TYPE_UNKNOWN = 0x00
Global Const $DRIVE_BUS_TYPE_SCSI = 0x01
Global Const $DRIVE_BUS_TYPE_ATAPI = 0x02
Global Const $DRIVE_BUS_TYPE_ATA = 0x03
Global Const $DRIVE_BUS_TYPE_1394 = 0x04
Global Const $DRIVE_BUS_TYPE_SSA = 0x05
Global Const $DRIVE_BUS_TYPE_FIBRE = 0x06
Global Const $DRIVE_BUS_TYPE_USB = 0x07
Global Const $DRIVE_BUS_TYPE_RAID = 0x08
Global Const $DRIVE_BUS_TYPE_ISCSI = 0x09
Global Const $DRIVE_BUS_TYPE_SAS = 0x0A
Global Const $DRIVE_BUS_TYPE_SATA = 0x0B
Global Const $DRIVE_BUS_TYPE_SD = 0x0C
Global Const $DRIVE_BUS_TYPE_MMC = 0x0D

; ===============================================================================================================================
; _WinAPI_GetDriveType()
; ===============================================================================================================================

Global Const $DRIVE_UNKNOWN = 0
Global Const $DRIVE_NO_ROOT_DIR = 1
Global Const $DRIVE_REMOVABLE = 2
Global Const $DRIVE_FIXED = 3
Global Const $DRIVE_REMOTE = 4
Global Const $DRIVE_CDROM = 5
Global Const $DRIVE_RAMDISK = 6

; ===============================================================================================================================
; _WinAPI_GetErrorMode(), _WinAPI_SetErrorMode()
; ===============================================================================================================================

Global Const $SEM_FAILCRITICALERRORS = 0x0001
Global Const $SEM_NOALIGNMENTFAULTEXCEPT = 0x0004
Global Const $SEM_NOGPFAULTERRORBOX = 0x0002
Global Const $SEM_NOOPENFILEERRORBOX = 0x8000

; ===============================================================================================================================
; _WinAPI_GetFileType()
; ===============================================================================================================================

Global Const $FILE_TYPE_CHAR = 0x0002
Global Const $FILE_TYPE_DISK = 0x0001
Global Const $FILE_TYPE_PIPE = 0x0003
Global Const $FILE_TYPE_REMOTE = 0x8000
Global Const $FILE_TYPE_UNKNOWN = 0x0000

; ===============================================================================================================================
; _WinAPI_GetFileVersionInfo()
; ===============================================================================================================================

Global Const $FILE_VER_GET_LOCALISED = 0x01
Global Const $FILE_VER_GET_NEUTRAL = 0x02
Global Const $FILE_VER_GET_PREFETCHED = 0x04

; ===============================================================================================================================
; _WinAPI_GetFinalPathNameByHandle()
; ===============================================================================================================================

Global Const $FILE_NAME_NORMALIZED = 0x0
Global Const $FILE_NAME_OPENED = 0x8

Global Const $VOLUME_NAME_DOS = 0x0
Global Const $VOLUME_NAME_GUID = 0x1
Global Const $VOLUME_NAME_NONE = 0x4
Global Const $VOLUME_NAME_NT = 0x2

; ===============================================================================================================================
; _WinAPI_GetGeoInfo()
; ===============================================================================================================================

Global Const $GEO_NATION = 1
Global Const $GEO_LATITUDE = 2
Global Const $GEO_LONGITUDE = 3
Global Const $GEO_ISO2 = 4
Global Const $GEO_ISO3 = 5
Global Const $GEO_RFC1766 = 6
Global Const $GEO_LCID = 7
Global Const $GEO_FRIENDLYNAME = 8
Global Const $GEO_OFFICIALNAME = 9
Global Const $GEO_TIMEZONES = 10
Global Const $GEO_OFFICIALLANGUAGES = 11
Global Const $GEO_ISO_UN_NUMBER = 12
Global Const $GEO_PARENT = 13

; ===============================================================================================================================
; _WinAPI_GetGlyphOutline()
; ===============================================================================================================================

Global Const $GGO_BEZIER = 3
Global Const $GGO_BITMAP = 1
Global Const $GGO_GLYPH_INDEX = 0x0080
Global Const $GGO_GRAY2_BITMAP = 4
Global Const $GGO_GRAY4_BITMAP = 5
Global Const $GGO_GRAY8_BITMAP = 6
Global Const $GGO_METRICS = 0
Global Const $GGO_NATIVE = 2
Global Const $GGO_UNHINTED = 0x0100

; ===============================================================================================================================
; _WinAPI_GetGraphicsMode(), _WinAPI_SetGraphicsMode()
; ===============================================================================================================================

Global Const $GM_COMPATIBLE = 1
Global Const $GM_ADVANCED = 2

; ===============================================================================================================================
; _WinAPI_GetGUIThreadInfo()
; ===============================================================================================================================

Global Const $GUI_CARETBLINKING = 0x0001
Global Const $GUI_INMENUMODE = 0x0004
Global Const $GUI_INMOVESIZE = 0x0002
Global Const $GUI_POPUPMENUMODE = 0x0010
Global Const $GUI_SYSTEMMENUMODE = 0x0008

; ===============================================================================================================================
; _WinAPI_GetHandleInformation(), _WinAPI_SetHandleInformation()
; ===============================================================================================================================

Global Const $HANDLE_FLAG_INHERIT = 0x00000001
Global Const $HANDLE_FLAG_PROTECT_FROM_CLOSE = 0x00000002

; ===============================================================================================================================
; _WinAPI_GetLayeredWindowAttributes(), _WinAPI_SetLayeredWindowAttributes()
; ===============================================================================================================================

;Global Const $LWA_COLORKEY = 0x01
;Global Const $LWA_ALPHA = 0x02

; ===============================================================================================================================
; _WinAPI_GetLocaleInfo(), _WinAPI_SetLocaleInfo()
; ===============================================================================================================================

Global Const $LOCALE_ILANGUAGE = 0x0001
Global Const $LOCALE_SLANGUAGE = 0x0002
Global Const $LOCALE_SENGLANGUAGE = 0x1001
Global Const $LOCALE_SABBREVLANGNAME = 0x0003
Global Const $LOCALE_SNATIVELANGNAME = 0x0004

Global Const $LOCALE_ICOUNTRY = 0x0005
Global Const $LOCALE_SCOUNTRY = 0x0006
Global Const $LOCALE_SENGCOUNTRY = 0x1002
Global Const $LOCALE_SABBREVCTRYNAME = 0x0007
Global Const $LOCALE_SNATIVECTRYNAME = 0x0008

Global Const $LOCALE_IDEFAULTLANGUAGE = 0x0009
Global Const $LOCALE_IDEFAULTCOUNTRY = 0x000A
Global Const $LOCALE_IDEFAULTCODEPAGE = 0x000B
Global Const $LOCALE_IDEFAULTANSICODEPAGE = 0x1004
Global Const $LOCALE_IDEFAULTMACCODEPAGE = 0x1011

Global Const $LOCALE_SLIST = 0x000C
Global Const $LOCALE_IMEASURE = 0x000D

Global Const $LOCALE_SDECIMAL = 0x000E
Global Const $LOCALE_STHOUSAND = 0x000F
Global Const $LOCALE_SGROUPING = 0x0010
Global Const $LOCALE_IDIGITS = 0x0011
Global Const $LOCALE_ILZERO = 0x0012
Global Const $LOCALE_INEGNUMBER = 0x1010
Global Const $LOCALE_SNATIVEDIGITS = 0x0013

Global Const $LOCALE_SCURRENCY = 0x0014
Global Const $LOCALE_SINTLSYMBOL = 0x0015
Global Const $LOCALE_SMONDECIMALSEP = 0x0016
Global Const $LOCALE_SMONTHOUSANDSEP = 0x0017
Global Const $LOCALE_SMONGROUPING = 0x0018
Global Const $LOCALE_ICURRDIGITS = 0x0019
Global Const $LOCALE_IINTLCURRDIGITS = 0x001A
Global Const $LOCALE_ICURRENCY = 0x001B
Global Const $LOCALE_INEGCURR = 0x001C

Global Const $LOCALE_SDATE = 0x001D
Global Const $LOCALE_STIME = 0x001E
Global Const $LOCALE_SSHORTDATE = 0x001F
Global Const $LOCALE_SLONGDATE = 0x0020
Global Const $LOCALE_STIMEFORMAT = 0x1003
Global Const $LOCALE_IDATE = 0x0021
Global Const $LOCALE_ILDATE = 0x0022
Global Const $LOCALE_ITIME = 0x0023
Global Const $LOCALE_ITIMEMARKPOSN = 0x1005
Global Const $LOCALE_ICENTURY = 0x0024
Global Const $LOCALE_ITLZERO = 0x0025
Global Const $LOCALE_IDAYLZERO = 0x0026
Global Const $LOCALE_IMONLZERO = 0x0027
Global Const $LOCALE_S1159 = 0x0028
Global Const $LOCALE_S2359 = 0x0029

Global Const $LOCALE_ICALENDARTYPE = 0x1009
Global Const $LOCALE_IOPTIONALCALENDAR = 0x100B
Global Const $LOCALE_IFIRSTDAYOFWEEK = 0x100C
Global Const $LOCALE_IFIRSTWEEKOFYEAR = 0x100D

Global Const $LOCALE_SDAYNAME1 = 0x002A
Global Const $LOCALE_SDAYNAME2 = 0x002B
Global Const $LOCALE_SDAYNAME3 = 0x002C
Global Const $LOCALE_SDAYNAME4 = 0x002D
Global Const $LOCALE_SDAYNAME5 = 0x002E
Global Const $LOCALE_SDAYNAME6 = 0x002F
Global Const $LOCALE_SDAYNAME7 = 0x0030
Global Const $LOCALE_SABBREVDAYNAME1 = 0x0031
Global Const $LOCALE_SABBREVDAYNAME2 = 0x0032
Global Const $LOCALE_SABBREVDAYNAME3 = 0x0033
Global Const $LOCALE_SABBREVDAYNAME4 = 0x0034
Global Const $LOCALE_SABBREVDAYNAME5 = 0x0035
Global Const $LOCALE_SABBREVDAYNAME6 = 0x0036
Global Const $LOCALE_SABBREVDAYNAME7 = 0x0037
Global Const $LOCALE_SMONTHNAME1 = 0x0038
Global Const $LOCALE_SMONTHNAME2 = 0x0039
Global Const $LOCALE_SMONTHNAME3 = 0x003A
Global Const $LOCALE_SMONTHNAME4 = 0x003B
Global Const $LOCALE_SMONTHNAME5 = 0x003C
Global Const $LOCALE_SMONTHNAME6 = 0x003D
Global Const $LOCALE_SMONTHNAME7 = 0x003E
Global Const $LOCALE_SMONTHNAME8 = 0x003F
Global Const $LOCALE_SMONTHNAME9 = 0x0040
Global Const $LOCALE_SMONTHNAME10 = 0x0041
Global Const $LOCALE_SMONTHNAME11 = 0x0042
Global Const $LOCALE_SMONTHNAME12 = 0x0043
Global Const $LOCALE_SMONTHNAME13 = 0x100E
Global Const $LOCALE_SABBREVMONTHNAME1 = 0x0044
Global Const $LOCALE_SABBREVMONTHNAME2 = 0x0045
Global Const $LOCALE_SABBREVMONTHNAME3 = 0x0046
Global Const $LOCALE_SABBREVMONTHNAME4 = 0x0047
Global Const $LOCALE_SABBREVMONTHNAME5 = 0x0048
Global Const $LOCALE_SABBREVMONTHNAME6 = 0x0049
Global Const $LOCALE_SABBREVMONTHNAME7 = 0x004A
Global Const $LOCALE_SABBREVMONTHNAME8 = 0x004B
Global Const $LOCALE_SABBREVMONTHNAME9 = 0x004C
Global Const $LOCALE_SABBREVMONTHNAME10 = 0x004D
Global Const $LOCALE_SABBREVMONTHNAME11 = 0x004E
Global Const $LOCALE_SABBREVMONTHNAME12 = 0x004F
Global Const $LOCALE_SABBREVMONTHNAME13 = 0x100F

Global Const $LOCALE_SPOSITIVESIGN = 0x0050
Global Const $LOCALE_SNEGATIVESIGN = 0x0051
Global Const $LOCALE_IPOSSIGNPOSN = 0x0052
Global Const $LOCALE_INEGSIGNPOSN = 0x0053
Global Const $LOCALE_IPOSSYMPRECEDES = 0x0054
Global Const $LOCALE_IPOSSEPBYSPACE = 0x0055
Global Const $LOCALE_INEGSYMPRECEDES = 0x0056
Global Const $LOCALE_INEGSEPBYSPACE = 0x0057

Global Const $LOCALE_FONTSIGNATURE = 0x0058
Global Const $LOCALE_SISO639LANGNAME = 0x0059
Global Const $LOCALE_SISO3166CTRYNAME = 0x005A

Global Const $LOCALE_IDEFAULTEBCDICCODEPAGE = 0x1012
Global Const $LOCALE_IPAPERSIZE = 0x100A
Global Const $LOCALE_SENGCURRNAME = 0x1007
Global Const $LOCALE_SNATIVECURRNAME = 0x1008
Global Const $LOCALE_SYEARMONTH = 0x1006
Global Const $LOCALE_SSORTNAME = 0x1013
Global Const $LOCALE_IDIGITSUBSTITUTION = 0x1014

Global Const $LOCALE_CUSTOM_DEFAULT = 0x0C00
Global Const $LOCALE_CUSTOM_UI_DEFAULT = 0x1400
Global Const $LOCALE_CUSTOM_UNSPECIFIED = 0x1000

Global Const $LOCALE_INVARIANT = 0x007F
Global Const $LOCALE_SYSTEM_DEFAULT = 0x0800
Global Const $LOCALE_USER_DEFAULT = 0x0400

; ===============================================================================================================================
; _WinAPI_GetMapMode(), _WinAPI_SetMapMode()
; ===============================================================================================================================

Global Const $MM_ANISOTROPIC = 8
Global Const $MM_HIENGLISH = 5
Global Const $MM_HIMETRIC = 3
Global Const $MM_ISOTROPIC = 7
Global Const $MM_LOENGLISH = 4
Global Const $MM_LOMETRIC = 2
Global Const $MM_TEXT = 1
Global Const $MM_TWIPS = 6

; ===============================================================================================================================
; _WinAPI_GetModuleHandleEx()
; ===============================================================================================================================

Global Const $GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = 0x0004
Global Const $GET_MODULE_HANDLE_EX_FLAG_PIN = 0x0001
Global Const $GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT = 0x0002
Global Const $GET_MODULE_HANDLE_EX_FLAG_DEFAULT = 0x0000

; ===============================================================================================================================
; _WinAPI_GetPEType()
; ===============================================================================================================================

Global Const $IMAGE_FILE_MACHINE_UNKNOWN = 0x0000
Global Const $IMAGE_FILE_MACHINE_AM33 = 0x01D3
Global Const $IMAGE_FILE_MACHINE_AMD64 = 0x8664
Global Const $IMAGE_FILE_MACHINE_ARM = 0x01C0
Global Const $IMAGE_FILE_MACHINE_EBC = 0x0EBC
Global Const $IMAGE_FILE_MACHINE_I386 = 0x014C
Global Const $IMAGE_FILE_MACHINE_IA64 = 0x0200
Global Const $IMAGE_FILE_MACHINE_M32R = 0x9041
Global Const $IMAGE_FILE_MACHINE_MIPS16 = 0x0266
Global Const $IMAGE_FILE_MACHINE_MIPSFPU = 0x0366
Global Const $IMAGE_FILE_MACHINE_MIPSFPU16 = 0x0466
Global Const $IMAGE_FILE_MACHINE_POWERPC = 0x01F0
Global Const $IMAGE_FILE_MACHINE_POWERPCFP = 0x01F1
Global Const $IMAGE_FILE_MACHINE_R4000 = 0x0166
Global Const $IMAGE_FILE_MACHINE_SH3 = 0x01A2
Global Const $IMAGE_FILE_MACHINE_SH3DSP = 0x01A3
Global Const $IMAGE_FILE_MACHINE_SH4 = 0x01A6
Global Const $IMAGE_FILE_MACHINE_SH5 = 0x01A8
Global Const $IMAGE_FILE_MACHINE_THUMB = 0x01C2
Global Const $IMAGE_FILE_MACHINE_WCEMIPSV2 = 0x0169

; ===============================================================================================================================
; _WinAPI_GetPriorityClass(), _WinAPI_SetPriorityClass()
; ===============================================================================================================================

Global Const $ABOVE_NORMAL_PRIORITY_CLASS = 0x00008000
Global Const $BELOW_NORMAL_PRIORITY_CLASS = 0x00004000
Global Const $HIGH_PRIORITY_CLASS = 0x00000080
Global Const $IDLE_PRIORITY_CLASS = 0x00000040
Global Const $NORMAL_PRIORITY_CLASS = 0x00000020
Global Const $REALTIME_PRIORITY_CLASS = 0x00000100

Global Const $PROCESS_MODE_BACKGROUND_BEGIN = 0x00100000
Global Const $PROCESS_MODE_BACKGROUND_END = 0x00200000

; ===============================================================================================================================
; _WinAPI_GetROP2(), _WinAPI_SetROP2()
; ===============================================================================================================================

Global Const $R2_BLACK = 1
Global Const $R2_COPYPEN = 13
Global Const $R2_LAST = 16
Global Const $R2_MASKNOTPEN = 3
Global Const $R2_MASKPEN = 9
Global Const $R2_MASKPENNOT = 5
Global Const $R2_MERGENOTPEN = 12
Global Const $R2_MERGEPEN = 15
Global Const $R2_MERGEPENNOT = 14
Global Const $R2_NOP = 11
Global Const $R2_NOT = 6
Global Const $R2_NOTCOPYPEN = 4
Global Const $R2_NOTMASKPEN = 8
Global Const $R2_NOTMERGEPEN = 2
Global Const $R2_NOTXORPEN = 10
Global Const $R2_WHITE = 16
Global Const $R2_XORPEN = 7

; ===============================================================================================================================
; _WinAPI_GetStartupInfo()
; ===============================================================================================================================

;Global Const $STARTF_FORCEONFEEDBACK = 0x00000040
;Global Const $STARTF_FORCEOFFFEEDBACK = 0x00000080
Global Const $STARTF_PREVENTPINNING = 0x00002000
;Global Const $STARTF_RUNFULLSCREEN = 0x00000020
Global Const $STARTF_TITLEISAPPID = 0x00001000
Global Const $STARTF_TITLEISLINKNAME = 0x00000800
;Global Const $STARTF_USECOUNTCHARS = 0x00000008
;Global Const $STARTF_USEFILLATTRIBUTE = 0x00000010
;Global Const $STARTF_USEHOTKEY = 0x00000200
;Global Const $STARTF_USEPOSITION = 0x00000004
;Global Const $STARTF_USESHOWWINDOW = 0x00000001
;Global Const $STARTF_USESIZE = 0x00000002
;Global Const $STARTF_USESTDHANDLES = 0x00000100

; ===============================================================================================================================
; _WinAPI_GetStretchBltMode(), _WinAPI_SetStretchBltMode()
; ===============================================================================================================================

Global Const $BLACKONWHITE = 1
Global Const $COLORONCOLOR = 3
Global Const $HALFTONE = 4
Global Const $WHITEONBLACK = 2
Global Const $STRETCH_ANDSCANS = $BLACKONWHITE
Global Const $STRETCH_DELETESCANS = $COLORONCOLOR
Global Const $STRETCH_HALFTONE = $HALFTONE
Global Const $STRETCH_ORSCANS = $WHITEONBLACK

; ===============================================================================================================================
; _WinAPI_GetSysColor(), _WinAPI_SetSysColor()
; ===============================================================================================================================

;Global Const $COLOR_3DDKSHADOW = 21
;Global Const $COLOR_3DFACE = 15
;Global Const $COLOR_3DHIGHLIGHT = 20
;Global Const $COLOR_3DLIGHT = 22
;Global Const $COLOR_3DSHADOW = 16
;Global Const $COLOR_ACTIVEBORDER = 10
;Global Const $COLOR_ACTIVECAPTION = 2
;Global Const $COLOR_APPWORKSPACE = 12
;Global Const $COLOR_BACKGROUND = 1
;Global Const $COLOR_BTNFACE = 15
;Global Const $COLOR_BTNHIGHLIGHT = 20
;Global Const $COLOR_BTNSHADOW = 16
;Global Const $COLOR_BTNTEXT = 18
;Global Const $COLOR_CAPTIONTEXT = 9
;Global Const $COLOR_DESKTOP = 1
;Global Const $COLOR_GRADIENTACTIVECAPTION = 27
;Global Const $COLOR_GRADIENTINACTIVECAPTION = 28
;Global Const $COLOR_GRAYTEXT = 17
;Global Const $COLOR_HIGHLIGHT = 13
;Global Const $COLOR_HIGHLIGHTTEXT = 14
;Global Const $COLOR_HOTLIGHT = 26
;Global Const $COLOR_INACTIVEBORDER = 11
;Global Const $COLOR_INACTIVECAPTION = 3
;Global Const $COLOR_INACTIVECAPTIONTEXT = 19
;Global Const $COLOR_INFOBK = 24
;Global Const $COLOR_INFOTEXT = 23
;Global Const $COLOR_MENU = 4
;Global Const $COLOR_MENUHILIGHT = 29
;Global Const $COLOR_MENUBAR = 30
;Global Const $COLOR_MENUTEXT = 7
;Global Const $COLOR_SCROLLBAR = 0
;Global Const $COLOR_WINDOW = 5
;Global Const $COLOR_WINDOWFRAME = 6
;Global Const $COLOR_WINDOWTEXT = 8

; ===============================================================================================================================
; _WinAPI_GetSystemInfo()
; ===============================================================================================================================

Global Const $PROCESSOR_ARCHITECTURE_AMD64 = 9
Global Const $PROCESSOR_ARCHITECTURE_IA64 = 6
Global Const $PROCESSOR_ARCHITECTURE_INTEL = 0
Global Const $PROCESSOR_ARCHITECTURE_UNKNOWN = 0xFFFF

Global Const $PROCESSOR_INTEL_386 = 386
Global Const $PROCESSOR_INTEL_486 = 486
Global Const $PROCESSOR_INTEL_PENTIUM = 586
Global Const $PROCESSOR_INTEL_IA64 = 2200
Global Const $PROCESSOR_AMD_X8664 = 8664

; ===============================================================================================================================
; _WinAPI_GetTextAlign(), _WinAPI_SetTextAlign()
; ===============================================================================================================================

Global Const $TA_BASELINE = 0x0018
Global Const $TA_BOTTOM = 0x0008
Global Const $TA_TOP = 0x0000
Global Const $TA_CENTER = 0x0006
Global Const $TA_LEFT = 0x0000
Global Const $TA_RIGHT = 0x0002
Global Const $TA_NOUPDATECP = 0x0000
Global Const $TA_RTLREADING = 0x0100
Global Const $TA_UPDATECP = 0x0001

Global Const $VTA_BASELINE = $TA_BASELINE
Global Const $VTA_BOTTOM = $TA_RIGHT
Global Const $VTA_TOP = $TA_LEFT
Global Const $VTA_CENTER = $TA_CENTER
Global Const $VTA_LEFT = $TA_BOTTOM
Global Const $VTA_RIGHT = $TA_TOP

; ===============================================================================================================================
; _WinAPI_GetTextMetrics()
; ===============================================================================================================================

;Global Const $TMPF_FIXED_PITCH = 0x01
;Global Const $TMPF_VECTOR = 0x02
;Global Const $TMPF_TRUETYPE = 0x04
;Global Const $TMPF_DEVICE = 0x08

; ===============================================================================================================================
; _WinAPI_GetThemeAppProperties(), _WinAPI_SetThemeAppProperties()
; ===============================================================================================================================

Global Const $STAP_ALLOW_NONCLIENT = 0x01
Global Const $STAP_ALLOW_CONTROLS = 0x02
Global Const $STAP_ALLOW_WEBCONTENT = 0x04

; ===============================================================================================================================
; _WinAPI_GetThemeBitmap()
; ===============================================================================================================================

Global Const $GBF_DIRECT = 0x01
Global Const $GBF_COPY = 0x02
Global Const $GBF_VALIDBITS = BitOR($GBF_DIRECT, $GBF_COPY)

; ===============================================================================================================================
; _WinAPI_GetThemeDocumentationProperty()
; ===============================================================================================================================

Global Const $SZ_THDOCPROP_AUTHOR = 'Author'
Global Const $SZ_THDOCPROP_CANONICALNAME = 'ThemeName'
Global Const $SZ_THDOCPROP_DISPLAYNAME = 'DisplayName'
Global Const $SZ_THDOCPROP_TOOLTIP = 'ToolTip'

; ===============================================================================================================================
; _WinAPI_GetThemePartSize()
; ===============================================================================================================================

Global Const $TS_MIN = 0
Global Const $TS_TRUE = 1
Global Const $TS_DRAW = 2

; ===============================================================================================================================
; _WinAPI_GetThemePropertyOrigin()
; ===============================================================================================================================

Global Const $PO_CLASS = 2
Global Const $PO_GLOBAL = 3
Global Const $PO_NOTFOUND = 4
Global Const $PO_PART = 1
Global Const $PO_STATE = 0

; ===============================================================================================================================
; _WinAPI_GetTimeFormat()
; ===============================================================================================================================

Global Const $TIME_FORCE24HOURFORMAT = 0x08
Global Const $TIME_NOMINUTESORSECONDS = 0x01
Global Const $TIME_NOSECONDS = 0x02
Global Const $TIME_NOTIMEMARKER = 0x04

; ===============================================================================================================================
; _WinAPI_GetUDFColorMode(), _WinAPI_SetUDFColorMode()
; ===============================================================================================================================

Global Const $UDF_BGR = 1
Global Const $UDF_RGB = 0

; ===============================================================================================================================
; _WinAPI_GetUserObjectInformation(), _WinAPI_SetUserObjectInformation()
; ===============================================================================================================================

Global Const $UOI_FLAGS = 1
Global Const $UOI_HEAPSIZE = 5
Global Const $UOI_IO = 6
Global Const $UOI_NAME = 2
Global Const $UOI_TYPE = 3
Global Const $UOI_USER_SID = 4

Global Const $DF_ALLOWOTHERACCOUNTHOOK = 0x01
Global Const $WSF_VISIBLE = 0x01

; ===============================================================================================================================
; _WinAPI_GetVersionEx()
; ===============================================================================================================================

Global Const $VER_SUITE_BACKOFFICE = 0x00000004
Global Const $VER_SUITE_BLADE = 0x00000400
Global Const $VER_SUITE_COMPUTE_SERVER = 0x00004000
Global Const $VER_SUITE_DATACENTER = 0x00000080
Global Const $VER_SUITE_ENTERPRISE = 0x00000002
Global Const $VER_SUITE_EMBEDDEDNT = 0x00000040
Global Const $VER_SUITE_PERSONAL = 0x00000200
Global Const $VER_SUITE_SINGLEUSERTS = 0x00000100
Global Const $VER_SUITE_SMALLBUSINESS = 0x00000001
Global Const $VER_SUITE_SMALLBUSINESS_RESTRICTED = 0x00000020
Global Const $VER_SUITE_STORAGE_SERVER = 0x00002000
Global Const $VER_SUITE_TERMINAL = 0x00000010
Global Const $VER_SUITE_WH_SERVER = 0x00008000

Global Const $VER_NT_DOMAIN_CONTROLLER = 0x0000002
Global Const $VER_NT_SERVER = 0x0000003
Global Const $VER_NT_WORKSTATION = 0x0000001

; ===============================================================================================================================
; _WinAPI_GetVolumeInformation(), _WinAPI_GetVolumeInformationByHandle()
; ===============================================================================================================================

Global Const $FILE_CASE_PRESERVED_NAMES = 0x00000002
Global Const $FILE_CASE_SENSITIVE_SEARCH = 0x00000001
Global Const $FILE_FILE_COMPRESSION = 0x00000010
Global Const $FILE_NAMED_STREAMS = 0x00040000
Global Const $FILE_PERSISTENT_ACLS = 0x00000008
Global Const $FILE_READ_ONLY_VOLUME = 0x00080000
Global Const $FILE_SEQUENTIAL_WRITE_ONCE = 0x00100000
Global Const $FILE_SUPPORTS_ENCRYPTION = 0x00020000
Global Const $FILE_SUPPORTS_EXTENDED_ATTRIBUTES = 0x00800000
Global Const $FILE_SUPPORTS_HARD_LINKS = 0x00400000
Global Const $FILE_SUPPORTS_OBJECT_IDS = 0x00010000
Global Const $FILE_SUPPORTS_OPEN_BY_FILE_ID = 0x01000000
Global Const $FILE_SUPPORTS_REPARSE_POINTS = 0x00000080
Global Const $FILE_SUPPORTS_SPARSE_FILES = 0x00000040
Global Const $FILE_SUPPORTS_TRANSACTIONS = 0x00200000
Global Const $FILE_SUPPORTS_USN_JOURNAL = 0x02000000
Global Const $FILE_UNICODE_ON_DISK = 0x00000004
Global Const $FILE_VOLUME_IS_COMPRESSED = 0x00008000
Global Const $FILE_VOLUME_QUOTAS = 0x00000020

; ===============================================================================================================================
; _WinAPI_GetWindowDisplayAffinity(), _WinAPI_SetWindowDisplayAffinity()
; ===============================================================================================================================

Global Const $WDA_MONITOR = 0x01

; ===============================================================================================================================
; _WinAPI_GetWindowLongEx(), _WinAPI_SetWindowLongEx()
; ===============================================================================================================================

;Global Const $GWL_EXSTYLE = -20
;Global Const $GWL_HINSTANCE = -6
;Global Const $GWL_HWNDPARENT = -8
;Global Const $GWL_ID = -12
;Global Const $GWL_STYLE = -16
;Global Const $GWL_USERDATA = -21
;Global Const $GWL_WNDPROC = -4

; ===============================================================================================================================
; _WinAPI_GetWorldTransform(), _WinAPI_SetWorldTransform()
; ===============================================================================================================================

Global Const $MWT_IDENTITY = 0x01
Global Const $MWT_LEFTMULTIPLY = 0x02
Global Const $MWT_RIGHTMULTIPLY = 0x03
Global Const $MWT_SET = 0x04

; ===============================================================================================================================
; _WinAPI_IOCTL()
; ===============================================================================================================================

Global Const $FILE_DEVICE_8042_PORT = 0x0027
Global Const $FILE_DEVICE_ACPI = 0x0032
Global Const $FILE_DEVICE_BATTERY = 0x0029
Global Const $FILE_DEVICE_BEEP = 0x0001
Global Const $FILE_DEVICE_BUS_EXTENDER = 0x002A
Global Const $FILE_DEVICE_CD_ROM = 0x0002
Global Const $FILE_DEVICE_CD_ROM_FILE_SYSTEM = 0x0003
Global Const $FILE_DEVICE_CHANGER = 0x0030
Global Const $FILE_DEVICE_CONTROLLER = 0x0004
Global Const $FILE_DEVICE_DATALINK = 0x0005
Global Const $FILE_DEVICE_DFS = 0x0006
Global Const $FILE_DEVICE_DFS_FILE_SYSTEM = 0x0035
Global Const $FILE_DEVICE_DFS_VOLUME = 0x0036
Global Const $FILE_DEVICE_DISK = 0x0007
Global Const $FILE_DEVICE_DISK_FILE_SYSTEM = 0x0008
Global Const $FILE_DEVICE_DVD = 0x0033
Global Const $FILE_DEVICE_FILE_SYSTEM = 0x0009
Global Const $FILE_DEVICE_FIPS = 0x003A
Global Const $FILE_DEVICE_FULLSCREEN_VIDEO = 0x0034
Global Const $FILE_DEVICE_INPORT_PORT = 0x000A
Global Const $FILE_DEVICE_KEYBOARD = 0x000B
Global Const $FILE_DEVICE_KS = 0x002F
Global Const $FILE_DEVICE_KSEC = 0x0039
Global Const $FILE_DEVICE_MAILSLOT = 0x000C
Global Const $FILE_DEVICE_MASS_STORAGE = 0x002D
Global Const $FILE_DEVICE_MIDI_IN = 0x000D
Global Const $FILE_DEVICE_MIDI_OUT = 0x000E
Global Const $FILE_DEVICE_MODEM = 0x002B
Global Const $FILE_DEVICE_MOUSE = 0x000F
Global Const $FILE_DEVICE_MULTI_UNC_PROVIDER = 0x0010
Global Const $FILE_DEVICE_NAMED_PIPE = 0x0011
Global Const $FILE_DEVICE_NETWORK = 0x0012
Global Const $FILE_DEVICE_NETWORK_BROWSER = 0x0013
Global Const $FILE_DEVICE_NETWORK_FILE_SYSTEM = 0x0014
Global Const $FILE_DEVICE_NETWORK_REDIRECTOR = 0x0028
Global Const $FILE_DEVICE_NULL = 0x0015
Global Const $FILE_DEVICE_PARALLEL_PORT = 0x0016
Global Const $FILE_DEVICE_PHYSICAL_NETCARD = 0x0017
Global Const $FILE_DEVICE_PRINTER = 0x0018
Global Const $FILE_DEVICE_SCANNER = 0x0019
Global Const $FILE_DEVICE_SCREEN = 0x001C
Global Const $FILE_DEVICE_SERENUM = 0x0037
Global Const $FILE_DEVICE_SERIAL_MOUSE_PORT = 0x001A
Global Const $FILE_DEVICE_SERIAL_PORT = 0x001B
Global Const $FILE_DEVICE_SMARTCARD = 0x0031
Global Const $FILE_DEVICE_SMB = 0x002E
Global Const $FILE_DEVICE_SOUND = 0x001D
Global Const $FILE_DEVICE_STREAMS = 0x001E
Global Const $FILE_DEVICE_TAPE = 0x001F
Global Const $FILE_DEVICE_TAPE_FILE_SYSTEM = 0x0020
Global Const $FILE_DEVICE_TERMSRV = 0x0038
Global Const $FILE_DEVICE_TRANSPORT = 0x0021
Global Const $FILE_DEVICE_UNKNOWN = 0x0022
Global Const $FILE_DEVICE_VDM = 0x002C
Global Const $FILE_DEVICE_VIDEO = 0x0023
Global Const $FILE_DEVICE_VIRTUAL_DISK = 0x0024
Global Const $FILE_DEVICE_WAVE_IN = 0x0025
Global Const $FILE_DEVICE_WAVE_OUT = 0x0026

Global Const $FILE_ANY_ACCESS = 0x00
Global Const $FILE_SPECIAL_ACCESS = $FILE_ANY_ACCESS
Global Const $FILE_READ_ACCESS = 0x01
Global Const $FILE_WRITE_ACCESS = 0x02

Global Const $METHOD_BUFFERED = 0
Global Const $METHOD_IN_DIRECT = 1
Global Const $METHOD_OUT_DIRECT = 2
Global Const $METHOD_NEITHER = 3

; ===============================================================================================================================
; _WinAPI_IsNetworkAlive()
; ===============================================================================================================================

Global Const $NETWORK_ALIVE_LAN = 0x01
Global Const $NETWORK_ALIVE_WAN = 0x02
Global Const $NETWORK_ALIVE_AOL = 0x04

; ===============================================================================================================================
; _WinAPI_IsProcessorFeaturePresent()
; ===============================================================================================================================

Global Const $PF_3DNOW_INSTRUCTIONS_AVAILABLE = 7
Global Const $PF_CHANNELS_ENABLED = 16
Global Const $PF_COMPARE_EXCHANGE_DOUBLE = 2
Global Const $PF_COMPARE_EXCHANGE128 = 14
Global Const $PF_COMPARE64_EXCHANGE128 = 15
Global Const $PF_FLOATING_POINT_EMULATED = 1
Global Const $PF_FLOATING_POINT_PRECISION_ERRATA = 0
Global Const $PF_MMX_INSTRUCTIONS_AVAILABLE = 3
Global Const $PF_NX_ENABLED = 12
Global Const $PF_PAE_ENABLED = 9
Global Const $PF_RDTSC_INSTRUCTION_AVAILABLE = 8
Global Const $PF_SSE3_INSTRUCTIONS_AVAILABLE = 13
Global Const $PF_XMMI_INSTRUCTIONS_AVAILABLE = 6
Global Const $PF_XMMI64_INSTRUCTIONS_AVAILABLE = 10
Global Const $PF_XSAVE_ENABLED = 17

; ===============================================================================================================================
; _WinAPI_IsValidLocale()
; ===============================================================================================================================

Global Const $LCID_INSTALLED = 1
Global Const $LCID_SUPPORTED = 2

; ===============================================================================================================================
; _WinAPI_Keybd_Event()
; ===============================================================================================================================

Global Const $KEYEVENTF_EXTENDEDKEY = 0x01
Global Const $KEYEVENTF_KEYUP = 0x02

; ===============================================================================================================================
; _WinAPI_Keybd_Event() and similar
; ===============================================================================================================================

;Global Const $VK_LBUTTON = 0x01
;Global Const $VK_RBUTTON = 0x02
Global Const $VK_CANCEL = 0x03
;Global Const $VK_MBUTTON = 0x04
Global Const $VK_XBUTTON1 = 0x05
Global Const $VK_XBUTTON2 = 0x06
Global Const $VK_BACK = 0x08
Global Const $VK_TAB = 0x09
Global Const $VK_SHIFT = 0x10
Global Const $VK_CLEAR = 0x0C
Global Const $VK_RETURN = 0x0D
Global Const $VK_CONTROL = 0x11
Global Const $VK_MENU = 0x12
Global Const $VK_PAUSE = 0x13
Global Const $VK_CAPITAL = 0x14
Global Const $VK_ESCAPE = 0x1B
Global Const $VK_SPACE = 0x20
;Global Const $VK_PRIOR = 0x21
;Global Const $VK_NEXT = 0x22
;Global Const $VK_END = 0x23
;Global Const $VK_HOME = 0x24
;Global Const $VK_LEFT = 0x25
;Global Const $VK_UP = 0x26
;Global Const $VK_RIGHT = 0x27
;Global Const $VK_DOWN = 0x28
Global Const $VK_SELECT = 0x29
Global Const $VK_PRINT = 0x2A
Global Const $VK_EXECUTE = 0x2B
Global Const $VK_SNAPSHOT = 0x2C
Global Const $VK_INSERT = 0x2D
Global Const $VK_DELETE = 0x2E
Global Const $VK_HELP = 0x2F
Global Const $VK_0 = 0x30
Global Const $VK_1 = 0x31
Global Const $VK_2 = 0x32
Global Const $VK_3 = 0x33
Global Const $VK_4 = 0x34
Global Const $VK_5 = 0x35
Global Const $VK_6 = 0x36
Global Const $VK_7 = 0x37
Global Const $VK_8 = 0x38
Global Const $VK_9 = 0x39
Global Const $VK_A = 0x41
Global Const $VK_B = 0x42
Global Const $VK_C = 0x43
Global Const $VK_D = 0x44
Global Const $VK_E = 0x45
Global Const $VK_F = 0x46
Global Const $VK_G = 0x47
Global Const $VK_H = 0x48
Global Const $VK_I = 0x49
Global Const $VK_J = 0x4A
Global Const $VK_K = 0x4B
Global Const $VK_L = 0x4C
Global Const $VK_M = 0x4D
Global Const $VK_N = 0x4E
Global Const $VK_O = 0x4F
Global Const $VK_P = 0x50
Global Const $VK_Q = 0x51
Global Const $VK_R = 0x52
Global Const $VK_S = 0x53
Global Const $VK_T = 0x54
Global Const $VK_U = 0x55
Global Const $VK_V = 0x56
Global Const $VK_W = 0x57
Global Const $VK_X = 0x58
Global Const $VK_Y = 0x59
Global Const $VK_Z = 0x5A
Global Const $VK_LWIN = 0x5B
Global Const $VK_RWIN = 0x5C
Global Const $VK_APPS = 0x5D
Global Const $VK_SLEEP = 0x5F
Global Const $VK_NUMPAD0 = 0x60
Global Const $VK_NUMPAD1 = 0x61
Global Const $VK_NUMPAD2 = 0x62
Global Const $VK_NUMPAD3 = 0x63
Global Const $VK_NUMPAD4 = 0x64
Global Const $VK_NUMPAD5 = 0x65
Global Const $VK_NUMPAD6 = 0x66
Global Const $VK_NUMPAD7 = 0x67
Global Const $VK_NUMPAD8 = 0x68
Global Const $VK_NUMPAD9 = 0x69
Global Const $VK_MULTIPLY = 0x6A
Global Const $VK_ADD = 0x6B
Global Const $VK_SEPARATOR = 0x6C
Global Const $VK_SUBTRACT = 0x6D
Global Const $VK_DECIMAL = 0x6E
Global Const $VK_DIVIDE = 0x6F
Global Const $VK_F1 = 0x70
Global Const $VK_F2 = 0x71
Global Const $VK_F3 = 0x72
Global Const $VK_F4 = 0x73
Global Const $VK_F5 = 0x74
Global Const $VK_F6 = 0x75
Global Const $VK_F7 = 0x76
Global Const $VK_F8 = 0x77
Global Const $VK_F9 = 0x78
Global Const $VK_F10 = 0x79
Global Const $VK_F11 = 0x7A
Global Const $VK_F12 = 0x7B
Global Const $VK_F13 = 0x7C
Global Const $VK_F14 = 0x7D
Global Const $VK_F15 = 0x7E
Global Const $VK_F16 = 0x7F
Global Const $VK_F17 = 0x80
Global Const $VK_F18 = 0x81
Global Const $VK_F19 = 0x82
Global Const $VK_F20 = 0x83
Global Const $VK_F21 = 0x84
Global Const $VK_F22 = 0x85
Global Const $VK_F23 = 0x86
Global Const $VK_F24 = 0x87
Global Const $VK_NUMLOCK = 0x90
Global Const $VK_SCROLL = 0x91
Global Const $VK_LSHIFT = 0xA0
Global Const $VK_RSHIFT = 0xA1
Global Const $VK_LCONTROL = 0xA2
Global Const $VK_RCONTROL = 0xA3
Global Const $VK_LMENU = 0xA4
Global Const $VK_RMENU = 0xA5
Global Const $VK_BROWSER_BACK = 0xA6
Global Const $VK_BROWSER_FORWARD = 0xA7
Global Const $VK_BROWSER_REFRESH = 0xA8
Global Const $VK_BROWSER_STOP = 0xA9
Global Const $VK_BROWSER_SEARCH = 0xAA
Global Const $VK_BROWSER_FAVORITES = 0xAB
Global Const $VK_BROWSER_HOME = 0xAC
Global Const $VK_VOLUME_MUTE = 0xAD
Global Const $VK_VOLUME_DOWN = 0xAE
Global Const $VK_VOLUME_UP = 0xAF
Global Const $VK_MEDIA_NEXT_TRACK = 0xB0
Global Const $VK_MEDIA_PREV_TRACK = 0xB1
Global Const $VK_MEDIA_STOP = 0xB2
Global Const $VK_MEDIA_PLAY_PAUSE = 0xB3
Global Const $VK_LAUNCH_MAIL = 0xB4
Global Const $VK_LAUNCH_MEDIA_SELECT = 0xB5
Global Const $VK_LAUNCH_APP1 = 0xB6
Global Const $VK_LAUNCH_APP2 = 0xB7
Global Const $VK_OEM_1 = 0xBA ; ';:'
Global Const $VK_OEM_PLUS = 0xBB ; '=+'
Global Const $VK_OEM_COMMA = 0xBC ; ',<'
Global Const $VK_OEM_MINUS = 0xBD ; '-_'
Global Const $VK_OEM_PERIOD = 0xBE ; '.>'
Global Const $VK_OEM_2 = 0xBF ; '/?'
Global Const $VK_OEM_3 = 0xC0 ; '`~'
Global Const $VK_OEM_4 = 0xDB ; '[{'
Global Const $VK_OEM_5 = 0xDC ; '\|'
Global Const $VK_OEM_6 = 0xDD ; ']}'
Global Const $VK_OEM_7 = 0xDE ; ''"'
Global Const $VK_OEM_8 = 0xDF
Global Const $VK_OEM_102 = 0xE2
Global Const $VK_ATTN = 0xF6
Global Const $VK_CRSEL = 0xF7
Global Const $VK_EXSEL = 0xF8
Global Const $VK_EREOF = 0xF9
Global Const $VK_PLAY = 0xFA
Global Const $VK_ZOOM = 0xFB
Global Const $VK_NONAME = 0xFC
Global Const $VK_PA1 = 0xFD
Global Const $VK_OEM_CLEAR = 0xFE

; ===============================================================================================================================
; _WinAPI_LoadCursor()
; ===============================================================================================================================

;Global Const $IDC_ARROW = 32512
;Global Const $IDC_IBEAM = 32513
;Global Const $IDC_WAIT = 32514
;Global Const $IDC_CROSS = 32515
;Global Const $IDC_UPARROW = 32516
;Global Const $IDC_SIZE = 32640
;Global Const $IDC_ICON = 32641
;Global Const $IDC_SIZENWSE = 32642
;Global Const $IDC_SIZENESW = 32643
;Global Const $IDC_SIZEWE = 32644
;Global Const $IDC_SIZENS = 32645
;Global Const $IDC_SIZEALL = 32646
;Global Const $IDC_NO = 32648
;Global Const $IDC_HAND = 32649
;Global Const $IDC_APPSTARTING = 32650
;Global Const $IDC_HELP = 32651

; ===============================================================================================================================
; _WinAPI_LoadIcon*()
; ===============================================================================================================================

;Global Const $IDI_APPLICATION = 32512
;Global Const $IDI_HAND = 32513
;Global Const $IDI_QUESTION = 32514
;Global Const $IDI_EXCLAMATION = 32515
;Global Const $IDI_ASTERISK = 32516
;Global Const $IDI_WINLOGO = 32517
Global Const $IDI_SHIELD = 32518
Global Const $IDI_ERROR = $IDI_HAND
Global Const $IDI_INFORMATION = $IDI_ASTERISK
Global Const $IDI_WARNING = $IDI_EXCLAMATION

Global Const $LIM_SMALL = 0
Global Const $LIM_LARGE = 1

; ===============================================================================================================================
; _WinAPI_LoadImage()
; ===============================================================================================================================

Global Const $OBM_TRTYPE = 32732
Global Const $OBM_LFARROWI = 32734
Global Const $OBM_RGARROWI = 32735
Global Const $OBM_DNARROWI = 32736
Global Const $OBM_UPARROWI = 32737
Global Const $OBM_COMBO = 32738
Global Const $OBM_MNARROW = 32739
Global Const $OBM_LFARROWD = 32740
Global Const $OBM_RGARROWD = 32741
Global Const $OBM_DNARROWD = 32742
Global Const $OBM_UPARROWD = 32743
Global Const $OBM_RESTORED = 32744
Global Const $OBM_ZOOMD = 32745
Global Const $OBM_REDUCED = 32746
Global Const $OBM_RESTORE = 32747
Global Const $OBM_ZOOM = 32748
Global Const $OBM_REDUCE = 32749
Global Const $OBM_LFARROW = 32750
Global Const $OBM_RGARROW = 32751
Global Const $OBM_DNARROW = 32752
Global Const $OBM_UPARROW = 32753
Global Const $OBM_CLOSE = 32754
Global Const $OBM_OLD_RESTORE = 32755
Global Const $OBM_OLD_ZOOM = 32756
Global Const $OBM_OLD_REDUCE = 32757
Global Const $OBM_BTNCORNERS = 32758
Global Const $OBM_CHECKBOXES = 32759
Global Const $OBM_CHECK = 32760
Global Const $OBM_BTSIZE = 32761
Global Const $OBM_OLD_LFARROW = 32762
Global Const $OBM_OLD_RGARROW = 32763
Global Const $OBM_OLD_DNARROW = 32764
Global Const $OBM_OLD_UPARROW = 32765
Global Const $OBM_SIZE = 32766
Global Const $OBM_OLD_CLOSE = 32767

Global Const $OCR_NORMAL = 32512
Global Const $OCR_IBEAM = 32513
Global Const $OCR_WAIT = 32514
Global Const $OCR_CROSS = 32515
Global Const $OCR_UP = 32516
Global Const $OCR_SIZE = 32640
Global Const $OCR_ICON = 32641
Global Const $OCR_SIZENWSE = 32642
Global Const $OCR_SIZENESW = 32643
Global Const $OCR_SIZEWE = 32644
Global Const $OCR_SIZENS = 32645
Global Const $OCR_SIZEALL = 32646
Global Const $OCR_ICOCUR = 32647
Global Const $OCR_NO = 32648
Global Const $OCR_HAND = 32649
Global Const $OCR_APPSTARTING = 32650
Global Const $OCR_HELP = 32651

Global Const $OIC_SAMPLE = 32512
Global Const $OIC_HAND = 32513
Global Const $OIC_QUES = 32514
Global Const $OIC_BANG = 32515
Global Const $OIC_NOTE = 32516
Global Const $OIC_WINLOGO = 32517
Global Const $OIC_WARNING = $OIC_BANG
Global Const $OIC_ERROR = $OIC_HAND
Global Const $OIC_INFORMATION = $OIC_NOTE

;Global Const $IMAGE_BITMAP = 0
;Global Const $IMAGE_ICON = 1
;Global Const $IMAGE_CURSOR = 2
Global Const $IMAGE_ENHMETAFILE = 3

;Global Const $LR_DEFAULTCOLOR = 0x0000
;Global Const $LR_MONOCHROME = 0x0001
;Global Const $LR_COLOR = 0x0002
;Global Const $LR_COPYRETURNORG = 0x0004
;Global Const $LR_COPYDELETEORG = 0x0008
;Global Const $LR_LOADFROMFILE = 0x0010
;Global Const $LR_LOADTRANSPARENT = 0x0020
;Global Const $LR_DEFAULTSIZE = 0x0040
;Global Const $LR_VGA_COLOR = 0x0080
;Global Const $LR_LOADMAP3DCOLORS = 0x1000
;Global Const $LR_CREATEDIBSECTION = 0x2000
;Global Const $LR_COPYFROMRESOURCE = 0x4000
;Global Const $LR_SHARED = 0x8000

; ===============================================================================================================================
; _WinAPI_LoadLibraryEx()
; ===============================================================================================================================

Global Const $LOAD_IGNORE_CODE_AUTHZ_LEVEL = 0x00000010
;Global Const $LOAD_LIBRARY_AS_DATAFILE = 0x00000002
Global Const $LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = 0x00000040
Global Const $LOAD_LIBRARY_AS_IMAGE_RESOURCE = 0x00000020
Global Const $LOAD_LIBRARY_SEARCH_APPLICATION_DIR = 0x00000200
Global Const $LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = 0x00001000
Global Const $LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = 0x00000100
Global Const $LOAD_LIBRARY_SEARCH_SYSTEM32 = 0x00000800
Global Const $LOAD_LIBRARY_SEARCH_USER_DIRS = 0x00000400
;Global Const $LOAD_WITH_ALTERED_SEARCH_PATH = 0x00000008

; ===============================================================================================================================
; _WinAPI_MapVirtualKey()
; ===============================================================================================================================

Global Const $MAPVK_VK_TO_CHAR = 2
Global Const $MAPVK_VK_TO_VSC = 0
Global Const $MAPVK_VK_TO_VSC_EX = 4
Global Const $MAPVK_VSC_TO_VK = 1
Global Const $MAPVK_VSC_TO_VK_EX = 3

; ===============================================================================================================================
; _WinAPI_MessageBoxCheck(), _WinAPI_MessageBoxIndirect()
; ===============================================================================================================================

;Global Const $MB_ABORTRETRYIGNORE = 0x00000002
Global Const $MB_CANCELTRYCONTINUE = 0x00000006
Global Const $MB_HELP = 0x00004000
;Global Const $MB_OK = 0x00000000
;Global Const $MB_OKCANCEL = 0x00000001
;Global Const $MB_RETRYCANCEL = 0x00000005
;Global Const $MB_YESNO = 0x00000004
;Global Const $MB_YESNOCANCEL = 0x00000003

;Global Const $MB_ICONEXCLAMATION = 0x00000030
Global Const $MB_ICONWARNING = 0x00000030
Global Const $MB_ICONINFORMATION = 0x00000040
;Global Const $MB_ICONASTERISK = 0x00000040
;Global Const $MB_ICONQUESTION = 0x00000020
Global Const $MB_ICONSTOP = 0x00000010
Global Const $MB_ICONERROR = 0x00000010
;Global Const $MB_ICONHAND = 0x00000010
Global Const $MB_USERICON = 0x00000080

;Global Const $MB_DEFBUTTON1 = 0x00000000
;Global Const $MB_DEFBUTTON2 = 0x00000100
;Global Const $MB_DEFBUTTON3 = 0x00000200
Global Const $MB_DEFBUTTON4 = 0x00000300

;Global Const $MB_APPLMODAL = 0x00000000
;Global Const $MB_SYSTEMMODAL = 0x00001000
;Global Const $MB_TASKMODAL = 0x00002000

Global Const $MB_DEFAULT_DESKTOP_ONLY = 0x00020000
Global Const $MB_RIGHT = 0x00080000
Global Const $MB_RTLREADING = 0x00100000
Global Const $MB_SETFOREGROUND = 0x00010000
;Global Const $MB_TOPMOST = 0x00040000
Global Const $MB_SERVICE_NOTIFICATION = 0x00200000

;Global Const $IDABORT = 3
;Global Const $IDCANCEL = 2
;Global Const $IDCONTINUE = 11
;Global Const $IDIGNORE = 5
;Global Const $IDNO = 7
;Global Const $IDOK = 1
;Global Const $IDRETRY = 4
;Global Const $IDTRYAGAIN = 10
;Global Const $IDYES = 6

; ===============================================================================================================================
; _WinAPI_MonitorFrom*()
; ===============================================================================================================================

Global Const $MONITOR_DEFAULTTONEAREST = 0
Global Const $MONITOR_DEFAULTTONULL = 1
Global Const $MONITOR_DEFAULTTOPRIMARY = 2

; ===============================================================================================================================
; _WinAPI_OpenFileDlg(), _WinAPI_SaveFileDlg()
; ===============================================================================================================================

;Global Const $OFN_ALLOWMULTISELECT = 0x00000200
;Global Const $OFN_CREATEPROMPT = 0x00002000
;Global Const $OFN_DONTADDTORECENT = 0x02000000
;Global Const $OFN_ENABLEHOOK = 0x00000020
;Global Const $OFN_ENABLEINCLUDENOTIFY = 0x00400000
;Global Const $OFN_ENABLESIZING = 0x00800000
;Global Const $OFN_ENABLETEMPLATE = 0x00000040
;Global Const $OFN_ENABLETEMPLATEHANDLE = 0x00000080
;Global Const $OFN_EXPLORER = 0x00080000
;Global Const $OFN_EXTENSIONDIFFERENT = 0x00000400
;Global Const $OFN_FILEMUSTEXIST = 0x00001000
;Global Const $OFN_FORCESHOWHIDDEN = 0x10000000
;Global Const $OFN_HIDEREADONLY = 0x00000004
;Global Const $OFN_LONGNAMES = 0x00200000
;Global Const $OFN_NOCHANGEDIR = 0x00000008
;Global Const $OFN_NODEREFERENCELINKS = 0x00100000
;Global Const $OFN_NOLONGNAMES = 0x00040000
;Global Const $OFN_NONETWORKBUTTON = 0x00020000
;Global Const $OFN_NOREADONLYRETURN = 0x00008000
;Global Const $OFN_NOTESTFILECREATE = 0x00010000
;Global Const $OFN_NOVALIDATE = 0x00000100
;Global Const $OFN_OVERWRITEPROMPT = 0x00000002
;Global Const $OFN_PATHMUSTEXIST = 0x00000800
;Global Const $OFN_READONLY = 0x00000001
;Global Const $OFN_SHAREAWARE = 0x00004000
;Global Const $OFN_SHOWHELP = 0x00000010

;Global Const $OFN_EX_NOPLACESBAR = 0x00000001

Global Const $CDM_FIRST = $WM_USER + 100
Global Const $CDM_GETSPEC = $CDM_FIRST
Global Const $CDM_GETFILEPATH = $CDM_FIRST + 1
Global Const $CDM_GETFOLDERPATH = $CDM_FIRST + 2
Global Const $CDM_GETFOLDERIDLIST = $CDM_FIRST + 3
Global Const $CDM_SETCONTROLTEXT = $CDM_FIRST + 4
Global Const $CDM_HIDECONTROL = $CDM_FIRST + 5
Global Const $CDM_SETDEFEXT = $CDM_FIRST + 6
Global Const $CDM_LAST = $WM_USER + 200

Global Const $CDN_FIRST = -601
Global Const $CDN_INITDONE = $CDN_FIRST
Global Const $CDN_SELCHANGE = $CDN_FIRST - 1
Global Const $CDN_FOLDERCHANGE = $CDN_FIRST - 2
Global Const $CDN_SHAREVIOLATION = $CDN_FIRST - 3
Global Const $CDN_HELP = $CDN_FIRST - 4
Global Const $CDN_FILEOK = $CDN_FIRST - 5
Global Const $CDN_TYPECHANGE = $CDN_FIRST - 6
Global Const $CDN_INCLUDEITEM = $CDN_FIRST - 7
Global Const $CDN_LAST = -699

; ===============================================================================================================================
; _WinAPI_OpenMutex()
; ===============================================================================================================================

Global Const $MUTEX_MODIFY_STATE = 0x0001
Global Const $MUTEX_ALL_ACCESS = BitOR($STANDARD_RIGHTS_ALL, $MUTEX_MODIFY_STATE)

; ===============================================================================================================================
; _WinAPI_OpenJobObject(), _WinAPI_QueryInformationJobObject(), _WinAPI_SetInformationJobObject()
; ===============================================================================================================================

Global Const $JOB_OBJECT_ASSIGN_PROCESS = 0x0001
Global Const $JOB_OBJECT_QUERY = 0x0004
Global Const $JOB_OBJECT_SET_ATTRIBUTES = 0x0002
Global Const $JOB_OBJECT_SET_SECURITY_ATTRIBUTES = 0x0010
Global Const $JOB_OBJECT_TERMINATE = 0x0008
Global Const $JOB_OBJECT_ALL_ACCESS = BitOR($STANDARD_RIGHTS_ALL, $JOB_OBJECT_ASSIGN_PROCESS, $JOB_OBJECT_QUERY, $JOB_OBJECT_SET_ATTRIBUTES, $JOB_OBJECT_SET_SECURITY_ATTRIBUTES, $JOB_OBJECT_TERMINATE)

Global Const $JOB_OBJECT_LIMIT_ACTIVE_PROCESS = 0x00000008
Global Const $JOB_OBJECT_LIMIT_AFFINITY = 0x00000010
Global Const $JOB_OBJECT_LIMIT_BREAKAWAY_OK = 0x00000800
Global Const $JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION = 0x00000400
Global Const $JOB_OBJECT_LIMIT_JOB_MEMORY = 0x00000200
Global Const $JOB_OBJECT_LIMIT_JOB_TIME = 0x00000004
Global Const $JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE = 0x00002000
Global Const $JOB_OBJECT_LIMIT_PRESERVE_JOB_TIME = 0x00000040
Global Const $JOB_OBJECT_LIMIT_PRIORITY_CLASS = 0x00000020
Global Const $JOB_OBJECT_LIMIT_PROCESS_MEMORY = 0x00000100
Global Const $JOB_OBJECT_LIMIT_PROCESS_TIME = 0x00000002
Global Const $JOB_OBJECT_LIMIT_SCHEDULING_CLASS = 0x00000080
Global Const $JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK = 0x00001000
Global Const $JOB_OBJECT_LIMIT_WORKINGSET = 0x00000001

Global Const $JOB_OBJECT_UILIMIT_DESKTOP = 0x00000040
Global Const $JOB_OBJECT_UILIMIT_DISPLAYSETTINGS = 0x00000010
Global Const $JOB_OBJECT_UILIMIT_EXITWINDOWS = 0x00000080
Global Const $JOB_OBJECT_UILIMIT_GLOBALATOMS = 0x00000020
Global Const $JOB_OBJECT_UILIMIT_HANDLES = 0x00000001
Global Const $JOB_OBJECT_UILIMIT_READCLIPBOARD = 0x00000002
Global Const $JOB_OBJECT_UILIMIT_SYSTEMPARAMETERS = 0x00000008
Global Const $JOB_OBJECT_UILIMIT_WRITECLIPBOARD = 0x00000004

Global Const $JOB_OBJECT_SECURITY_FILTER_TOKENS = 0x00000008
Global Const $JOB_OBJECT_SECURITY_NO_ADMIN = 0x00000001
Global Const $JOB_OBJECT_SECURITY_ONLY_TOKEN = 0x00000004
Global Const $JOB_OBJECT_SECURITY_RESTRICTED_TOKEN = 0x00000002

Global Const $JOB_OBJECT_TERMINATE_AT_END_OF_JOB = 0
Global Const $JOB_OBJECT_POST_AT_END_OF_JOB = 1

; ===============================================================================================================================
; _WinAPI_OpenProcess()
; ===============================================================================================================================

;Global Const $PROCESS_CREATE_PROCESS = 0x0080
;Global Const $PROCESS_CREATE_THREAD = 0x0002
;Global Const $PROCESS_DUP_HANDLE = 0x0040
;Global Const $PROCESS_QUERY_INFORMATION = 0x0400
Global Const $PROCESS_QUERY_LIMITED_INFORMATION = 0x1000
;Global Const $PROCESS_SET_INFORMATION = 0x0200
;Global Const $PROCESS_SET_QUOTA = 0x0100
;Global Const $PROCESS_SET_SESSIONID = 0x0004
;Global Const $PROCESS_SUSPEND_RESUME = 0x0800
;Global Const $PROCESS_TERMINATE = 0x0001
;Global Const $PROCESS_VM_OPERATION = 0x0008
;Global Const $PROCESS_VM_READ = 0x0010
;Global Const $PROCESS_VM_WRITE = 0x0020
;Global Const $PROCESS_ALL_ACCESS = BitOR($STANDARD_RIGHTS_ALL, $PROCESS_CREATE_PROCESS, $PROCESS_CREATE_THREAD, $PROCESS_DUP_HANDLE, $PROCESS_QUERY_INFORMATION, $PROCESS_SET_INFORMATION, $PROCESS_SET_QUOTA, $PROCESS_SET_SESSIONID, $PROCESS_SUSPEND_RESUME, $PROCESS_TERMINATE, $PROCESS_VM_OPERATION, $PROCESS_VM_READ, $PROCESS_VM_WRITE)

; ===============================================================================================================================
; _WinAPI_OpenProcessToken()
; ===============================================================================================================================

;Global Const $TOKEN_ADJUST_DEFAULT = 0x0080
;Global Const $TOKEN_ADJUST_GROUPS = 0x0040
;Global Const $TOKEN_ADJUST_PRIVILEGES = 0x0020
;Global Const $TOKEN_ADJUST_SESSIONID = 0x0100
;Global Const $TOKEN_ASSIGN_PRIMARY = 0x0001
;Global Const $TOKEN_DUPLICATE = 0x0002
;Global Const $TOKEN_EXECUTE = $STANDARD_RIGHTS_EXECUTE
;Global Const $TOKEN_IMPERSONATE = 0x0004
;Global Const $TOKEN_QUERY = 0x0008
;Global Const $TOKEN_QUERY_SOURCE = 0x0010
;Global Const $TOKEN_READ = BitOR($STANDARD_RIGHTS_READ, $TOKEN_QUERY)
;Global Const $TOKEN_WRITE = BitOR($STANDARD_RIGHTS_WRITE, $TOKEN_ADJUST_DEFAULT, $TOKEN_ADJUST_GROUPS, $TOKEN_ADJUST_PRIVILEGES)
;Global Const $TOKEN_ALL_ACCESS = BitOR($STANDARD_RIGHTS_REQUIRED, $TOKEN_ADJUST_DEFAULT, $TOKEN_ADJUST_GROUPS, $TOKEN_ADJUST_PRIVILEGES, $TOKEN_ADJUST_SESSIONID, $TOKEN_ASSIGN_PRIMARY, $TOKEN_DUPLICATE, $TOKEN_EXECUTE, $TOKEN_IMPERSONATE, $TOKEN_QUERY, $TOKEN_QUERY_SOURCE)

; ===============================================================================================================================
; _WinAPI_OpenSemaphore()
; ===============================================================================================================================

Global Const $SEMAPHORE_MODIFY_STATE = 0x0002
Global Const $SEMAPHORE_QUERY_STATE = 0x0001
Global Const $SEMAPHORE_ALL_ACCESS = BitOR($STANDARD_RIGHTS_ALL, $SEMAPHORE_MODIFY_STATE, $SEMAPHORE_QUERY_STATE)

; ===============================================================================================================================
; _WinAPI_PageSetupDlg()
; ===============================================================================================================================

Global Const $PSD_DEFAULTMINMARGINS = 0x00000000
Global Const $PSD_DISABLEMARGINS = 0x00000010
Global Const $PSD_DISABLEORIENTATION = 0x00000100
Global Const $PSD_DISABLEPAGEPAINTING = 0x00080000
Global Const $PSD_DISABLEPAPER = 0x00000200
Global Const $PSD_DISABLEPRINTER = 0x00000020
Global Const $PSD_ENABLEPAGEPAINTHOOK = 0x00040000
Global Const $PSD_ENABLEPAGESETUPHOOK = 0x00002000
Global Const $PSD_ENABLEPAGESETUPTEMPLATE = 0x00008000
Global Const $PSD_ENABLEPAGESETUPTEMPLATEHANDLE = 0x00020000
Global Const $PSD_INHUNDREDTHSOFMILLIMETERS = 0x00000008
Global Const $PSD_INTHOUSANDTHSOFINCHES = 0x00000004
Global Const $PSD_MARGINS = 0x00000002
Global Const $PSD_MINMARGINS = 0x00000001
Global Const $PSD_NONETWORKBUTTON = 0x00200000
Global Const $PSD_NOWARNING = 0x00000080
Global Const $PSD_RETURNDEFAULT = 0x00000400
Global Const $PSD_SHOWHELP = 0x00000800

Global Const $WM_PSD_PAGESETUPDLG = $WM_USER
Global Const $WM_PSD_FULLPAGERECT = $WM_USER + 1
Global Const $WM_PSD_MINMARGINRECT = $WM_USER + 2
Global Const $WM_PSD_MARGINRECT = $WM_USER + 3
Global Const $WM_PSD_GREEKTEXTRECT = $WM_USER + 4
Global Const $WM_PSD_ENVSTAMPRECT = $WM_USER + 5
Global Const $WM_PSD_YAFULLPAGERECT = $WM_USER + 6

; ===============================================================================================================================
; _WinAPI_ParseURL()
; ===============================================================================================================================

Global Const $URL_SCHEME_INVALID = -1
Global Const $URL_SCHEME_UNKNOWN = 0
Global Const $URL_SCHEME_FTP = 1
Global Const $URL_SCHEME_HTTP = 2
Global Const $URL_SCHEME_GOPHER = 3
Global Const $URL_SCHEME_MAILTO = 4
Global Const $URL_SCHEME_NEWS = 5
Global Const $URL_SCHEME_NNTP = 6
Global Const $URL_SCHEME_TELNET = 7
Global Const $URL_SCHEME_WAIS = 8
Global Const $URL_SCHEME_FILE = 9
Global Const $URL_SCHEME_MK = 10
Global Const $URL_SCHEME_HTTPS = 11
Global Const $URL_SCHEME_SHELL = 12
Global Const $URL_SCHEME_SNEWS = 13
Global Const $URL_SCHEME_LOCAL = 14
Global Const $URL_SCHEME_JAVASCRIPT = 15
Global Const $URL_SCHEME_VBSCRIPT = 16
Global Const $URL_SCHEME_ABOUT = 17
Global Const $URL_SCHEME_RES = 18
Global Const $URL_SCHEME_MSSHELLROOTED = 19
Global Const $URL_SCHEME_MSSHELLIDLIST = 20
Global Const $URL_SCHEME_MSHELP = 21
Global Const $URL_SCHEME_MSSHELLDEVICE = 22
Global Const $URL_SCHEME_WILDCARD = 23
Global Const $URL_SCHEME_SEARCH_MS = 24
Global Const $URL_SCHEME_SEARCH = 25
Global Const $URL_SCHEME_KNOWNFOLDER = 26

; ===============================================================================================================================
; _WinAPI_PatBlt(), _WinAPI_StretchBlt()
; ===============================================================================================================================

;Global Const $BLACKNESS = 0x00000042
;Global Const $CAPTUREBLT = 0x40000000
;Global Const $DSTINVERT = 0x00550009
;Global Const $MERGECOPY = 0x00C000CA
;Global Const $MERGEPAINT = 0x00BB0226
;Global Const $NOMIRRORBITMAP = 0x80000000
;Global Const $NOTSRCCOPY = 0x00330008
;Global Const $NOTSRCERASE = 0x001100A6
;Global Const $PATCOPY = 0x00F00021
;Global Const $PATINVERT = 0x005A0049
;Global Const $PATPAINT = 0x00FB0A09
;Global Const $SRCAND = 0x008800C6
;Global Const $SRCCOPY = 0x00CC0020
;Global Const $SRCERASE = 0x00440328
;Global Const $SRCINVERT = 0x00660046
;Global Const $SRCPAINT = 0x00EE0086
;Global Const $WHITENESS = 0x00FF0062

; ===============================================================================================================================
; _WinAPI_PathGetCharType()
; ===============================================================================================================================

Global Const $GCT_INVALID = 0x00
Global Const $GCT_LFNCHAR = 0x01
Global Const $GCT_SEPARATOR = 0x08
Global Const $GCT_SHORTCHAR = 0x02
Global Const $GCT_WILD = 0x04

; ===============================================================================================================================
; _WinAPI_PlaySound()
; ===============================================================================================================================

Global Const $SND_APPLICATION = 0x00000080
Global Const $SND_ALIAS = 0x00010000
Global Const $SND_ALIAS_ID = 0x00110000
Global Const $SND_ASYNC = 0x00000001
Global Const $SND_FILENAME = 0x00020000
Global Const $SND_LOOP = 0x00000008
Global Const $SND_MEMORY = 0x00000004
Global Const $SND_NODEFAULT = 0x00000002
Global Const $SND_NOSTOP = 0x00000010
Global Const $SND_NOWAIT = 0x00002000
Global Const $SND_PURGE = 0x00000040
Global Const $SND_RESOURCE = 0x00040004
Global Const $SND_SENTRY = 0x00080000
Global Const $SND_SYNC = 0x00000000
Global Const $SND_SYSTEM = 0x00200000

Global Const $SND_ALIAS_SYSTEMASTERISK = 'SystemAsterisk'
Global Const $SND_ALIAS_SYSTEMDEFAULT = 'SystemDefault'
Global Const $SND_ALIAS_SYSTEMEXCLAMATION = 'SystemExclamation'
Global Const $SND_ALIAS_SYSTEMEXIT = 'SystemExit'
Global Const $SND_ALIAS_SYSTEMHAND = 'SystemHand'
Global Const $SND_ALIAS_SYSTEMQUESTION = 'SystemQuestion'
Global Const $SND_ALIAS_SYSTEMSTART = 'SystemStart'
Global Const $SND_ALIAS_SYSTEMWELCOME = 'SystemWelcome'

; ===============================================================================================================================
; _WinAPI_PolyDraw()
; ===============================================================================================================================

Global Const $PT_BEZIERTO = 4
Global Const $PT_LINETO = 2
Global Const $PT_MOVETO = 6
Global Const $PT_CLOSEFIGURE = 1

; ===============================================================================================================================
; _WinAPI_PrintDlg(), _WinAPI_PrintDlgEx()
; ===============================================================================================================================

Global Const $PD_ALLPAGES = 0x00000000
Global Const $PD_COLLATE = 0x00000010
Global Const $PD_CURRENTPAGE = 0x00400000
Global Const $PD_DISABLEPRINTTOFILE = 0x00080000
Global Const $PD_ENABLEPRINTHOOK = 0x00001000
Global Const $PD_ENABLEPRINTTEMPLATE = 0x00004000
Global Const $PD_ENABLEPRINTTEMPLATEHANDLE = 0x00010000
Global Const $PD_ENABLESETUPHOOK = 0x00002000
Global Const $PD_ENABLESETUPTEMPLATE = 0x00008000
Global Const $PD_ENABLESETUPTEMPLATEHANDLE = 0x00020000
Global Const $PD_EXCLUSIONFLAGS = 0x01000000
Global Const $PD_HIDEPRINTTOFILE = 0x00100000
Global Const $PD_NOCURRENTPAGE = 0x00800000
Global Const $PD_NONETWORKBUTTON = 0x00200000
Global Const $PD_NOPAGENUMS = 0x00000008
Global Const $PD_NOSELECTION = 0x00000004
Global Const $PD_NOWARNING = 0x00000080
Global Const $PD_PAGENUMS = 0x00000002
Global Const $PD_PRINTSETUP = 0x00000040
Global Const $PD_PRINTTOFILE = 0x00000020
Global Const $PD_RETURNDC = 0x00000100
Global Const $PD_RETURNDEFAULT = 0x00000400
Global Const $PD_RETURNIC = 0x00000200
Global Const $PD_SELECTION = 0x00000001
Global Const $PD_SHOWHELP = 0x00000800
Global Const $PD_USEDEVMODECOPIES = 0x00040000
Global Const $PD_USEDEVMODECOPIESANDCOLLATE = $PD_USEDEVMODECOPIES
Global Const $PD_USELARGETEMPLATE = 0x10000000

Global Const $PD_RESULT_APPLY = 2
Global Const $PD_RESULT_CANCEL = 0
Global Const $PD_RESULT_PRINT = 1

; ===============================================================================================================================
; _WinAPI_ReadDirectoryChanges()
; ===============================================================================================================================

Global Const $FILE_NOTIFY_CHANGE_FILE_NAME = 0x0001
Global Const $FILE_NOTIFY_CHANGE_DIR_NAME = 0x0002
Global Const $FILE_NOTIFY_CHANGE_ATTRIBUTES = 0x0004
Global Const $FILE_NOTIFY_CHANGE_SIZE = 0x0008
Global Const $FILE_NOTIFY_CHANGE_LAST_WRITE = 0x0010
Global Const $FILE_NOTIFY_CHANGE_LAST_ACCESS = 0x0020
Global Const $FILE_NOTIFY_CHANGE_CREATION = 0x0040
Global Const $FILE_NOTIFY_CHANGE_SECURITY = 0x0100

Global Const $FILE_ACTION_ADDED = 0x0001
Global Const $FILE_ACTION_REMOVED = 0x0002
Global Const $FILE_ACTION_MODIFIED = 0x0003
Global Const $FILE_ACTION_RENAMED_OLD_NAME = 0x0004
Global Const $FILE_ACTION_RENAMED_NEW_NAME = 0x0005

; ===============================================================================================================================
; _WinAPI_RegisterApplicationRestart()
; ===============================================================================================================================

Global Const $RESTART_NO_CRASH = 0x01
Global Const $RESTART_NO_HANG = 0x02
Global Const $RESTART_NO_PATCH = 0x04
Global Const $RESTART_NO_REBOOT = 0x08

; ===============================================================================================================================
; _WinAPI_RegisterHotKey()
; ===============================================================================================================================

Global Const $MOD_ALT = 0x0001
Global Const $MOD_CONTROL = 0x0002
Global Const $MOD_NOREPEAT = 0x4000
Global Const $MOD_SHIFT = 0x0004
Global Const $MOD_WIN = 0x0008

; ===============================================================================================================================
; _WinAPI_RegisterPowerSettingNotification()
; ===============================================================================================================================

Global Const $GUID_ACDC_POWER_SOURCE = '{5D3E9A59-E9D5-4B00-A6BD-FF34FF516548}'
Global Const $GUID_BATTERY_PERCENTAGE_REMAINING = '{A7AD8041-B45A-4CAE-87A3-EECBB468A9E1}'
Global Const $GUID_IDLE_BACKGROUND_TASK = '{515C31D8-F734-163D-A0FD-11A08C91E8F1}'
Global Const $GUID_MONITOR_POWER_ON = '{02731015-4510-4526-99E6-E5A17EBD1AEA}'
Global Const $GUID_POWERSCHEME_PERSONALITY = '{245D8541-3943-4422-B025-13A784F679B7}'
Global Const $GUID_SYSTEM_AWAYMODE = '{98A7F580-01F7-48AA-9C0F-44352C29E5C0}'

Global Const $GUID_MIN_POWER_SAVINGS = '{8C5E7FDA-E8BF-4A96-9A85-A6E23A8C635C}'
Global Const $GUID_MAX_POWER_SAVINGS = '{A1841308-3541-4FAB-BC81-F71556F20B4A}'
Global Const $GUID_TYPICAL_POWER_SAVINGS = '{381B4222-F694-41F0-9685-FF5BB260DF2E}'

; ===============================================================================================================================
; _WinAPI_RegisterShellHookWindow()
; ===============================================================================================================================

Global Const $HSHELL_WINDOWCREATED = 1
Global Const $HSHELL_WINDOWDESTROYED = 2
Global Const $HSHELL_ACTIVATESHELLWINDOW = 3
Global Const $HSHELL_WINDOWACTIVATED = 4
Global Const $HSHELL_GETMINRECT = 5
Global Const $HSHELL_REDRAW = 6
Global Const $HSHELL_TASKMAN = 7
Global Const $HSHELL_LANGUAGE = 8
Global Const $HSHELL_SYSMENU = 9
Global Const $HSHELL_ENDTASK = 10
Global Const $HSHELL_ACCESSIBILITYSTATE = 11
Global Const $HSHELL_APPCOMMAND = 12
Global Const $HSHELL_WINDOWREPLACED = 13
Global Const $HSHELL_WINDOWREPLACING = 14
Global Const $HSHELL_RUDEAPPACTIVATED = 32772
Global Const $HSHELL_FLASH = 32774

; ===============================================================================================================================
; _WinAPI_Reg...
; ===============================================================================================================================

Global Const $HKEY_CLASSES_ROOT = 0x80000000
Global Const $HKEY_CURRENT_CONFIG = 0x80000005
Global Const $HKEY_CURRENT_USER = 0x80000001
Global Const $HKEY_LOCAL_MACHINE = 0x80000002
Global Const $HKEY_PERFORMANCE_DATA = 0x80000004
Global Const $HKEY_PERFORMANCE_NLSTEXT = 0x80000060
Global Const $HKEY_PERFORMANCE_TEXT = 0x80000050
Global Const $HKEY_USERS = 0x80000003

Global Const $KEY_CREATE_LINK = 0x0020
Global Const $KEY_CREATE_SUB_KEY = 0x0004
Global Const $KEY_ENUMERATE_SUB_KEYS = 0x0008
Global Const $KEY_NOTIFY = 0x0010
Global Const $KEY_QUERY_VALUE = 0x0001
Global Const $KEY_SET_VALUE = 0x0002
Global Const $KEY_WOW64_32KEY = 0x0200
Global Const $KEY_WOW64_64KEY = 0x0100
Global Const $KEY_READ = BitOR($STANDARD_RIGHTS_READ, $KEY_ENUMERATE_SUB_KEYS, $KEY_NOTIFY, $KEY_QUERY_VALUE)
Global Const $KEY_WRITE = BitOR($STANDARD_RIGHTS_WRITE, $KEY_CREATE_SUB_KEY, $KEY_SET_VALUE)
Global Const $KEY_EXECUTE = $KEY_READ
Global Const $KEY_ALL_ACCESS = BitOR($STANDARD_RIGHTS_REQUIRED, $KEY_CREATE_LINK, $KEY_CREATE_SUB_KEY, $KEY_ENUMERATE_SUB_KEYS, $KEY_NOTIFY, $KEY_QUERY_VALUE, $KEY_SET_VALUE)

Global Const $REG_NOTIFY_CHANGE_NAME = 0x01
Global Const $REG_NOTIFY_CHANGE_ATTRIBUTES = 0x02
Global Const $REG_NOTIFY_CHANGE_LAST_SET = 0x04
Global Const $REG_NOTIFY_CHANGE_SECURITY = 0x08

Global Const $REG_OPTION_BACKUP_RESTORE = 0x04
Global Const $REG_OPTION_CREATE_LINK = 0x02
Global Const $REG_OPTION_NON_VOLATILE = 0x00
Global Const $REG_OPTION_VOLATILE = 0x01

;Global Const $REG_BINARY = 3
;Global Const $REG_DWORD = 4
;Global Const $REG_DWORD_BIG_ENDIAN = 5
Global Const $REG_DWORD_LITTLE_ENDIAN = 4
;Global Const $REG_EXPAND_SZ = 2
;Global Const $REG_LINK = 6
;Global Const $REG_MULTI_SZ = 7
;Global Const $REG_NONE = 0
Global Const $REG_QWORD = 11
Global Const $REG_QWORD_LITTLE_ENDIAN = 11
;Global Const $REG_SZ = 1

; ===============================================================================================================================
; _WinAPI_ReplaceFile()
; ===============================================================================================================================

Global Const $REPLACEFILE_WRITE_THROUGH = 0x01
Global Const $REPLACEFILE_IGNORE_MERGE_ERRORS = 0x02
Global Const $REPLACEFILE_IGNORE_ACL_ERRORS = 0x04

; ===============================================================================================================================
; _WinAPI_RestartDlg()
; ===============================================================================================================================

Global Const $EWX_LOGOFF = 0
Global Const $EWX_POWEROFF = 8
Global Const $EWX_REBOOT = 2
Global Const $EWX_SHUTDOWN = 1
Global Const $EWX_FORCE = 4
Global Const $EWX_FORCEIFHUNG = 16

; ===============================================================================================================================
; _WinAPI_SendMessageTimeout()
; ===============================================================================================================================

Global Const $SMTO_BLOCK = 0x0001
Global Const $SMTO_NORMAL = 0x0000
Global Const $SMTO_ABORTIFHUNG = 0x0002
Global Const $SMTO_NOTIMEOUTIFNOTHUNG = 0x0008
Global Const $SMTO_ERRORONEXIT = 0x0020

; ===============================================================================================================================
; _WinAPI_SetKeyboardLayout()
; ===============================================================================================================================

Global Const $INPUTLANGCHANGE_BACKWARD = 0x0004
Global Const $INPUTLANGCHANGE_FORWARD = 0x0002
Global Const $INPUTLANGCHANGE_SYSCHARSET = 0x0001

; ===============================================================================================================================
; _WinAPI_SetSearchPathMode()
; ===============================================================================================================================

Global Const $BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE = 0x00000001
Global Const $BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE = 0x00010000
Global Const $BASE_SEARCH_PATH_PERMANENT = 0x00008000

; ===============================================================================================================================
; _WinAPI_SetThreadExecutionState()
; ===============================================================================================================================

Global Const $ES_AWAYMODE_REQUIRED = 0x00000040
Global Const $ES_CONTINUOUS = 0x80000000
Global Const $ES_DISPLAY_REQUIRED = 0x00000002
Global Const $ES_SYSTEM_REQUIRED =0x00000001
Global Const $ES_USER_PRESENT = 0x00000004

; ===============================================================================================================================
; _WinAPI_SetWinEventHook()
; ===============================================================================================================================

Global Const $EVENT_MIN = 0x00000001
Global Const $EVENT_SYSTEM_SOUND = 0x00000001
Global Const $EVENT_SYSTEM_ALERT = 0x00000002
Global Const $EVENT_SYSTEM_FOREGROUND = 0x00000003
Global Const $EVENT_SYSTEM_MENUSTART = 0x00000004
Global Const $EVENT_SYSTEM_MENUEND = 0x00000005
Global Const $EVENT_SYSTEM_MENUPOPUPSTART = 0x00000006
Global Const $EVENT_SYSTEM_MENUPOPUPEND = 0x00000007
Global Const $EVENT_SYSTEM_CAPTURESTART = 0x00000008
Global Const $EVENT_SYSTEM_CAPTUREEND = 0x00000009
Global Const $EVENT_SYSTEM_MOVESIZESTART = 0x0000000A
Global Const $EVENT_SYSTEM_MOVESIZEEND = 0x0000000B
Global Const $EVENT_SYSTEM_CONTEXTHELPSTART = 0x0000000C
Global Const $EVENT_SYSTEM_CONTEXTHELPEND = 0x0000000D
Global Const $EVENT_SYSTEM_DRAGDROPSTART = 0x0000000E
Global Const $EVENT_SYSTEM_DRAGDROPEND = 0x0000000F
Global Const $EVENT_SYSTEM_DIALOGSTART = 0x00000010
Global Const $EVENT_SYSTEM_DIALOGEND = 0x00000011
Global Const $EVENT_SYSTEM_SCROLLINGSTART = 0x00000012
Global Const $EVENT_SYSTEM_SCROLLINGEND = 0x00000013
Global Const $EVENT_SYSTEM_SWITCHSTART = 0x00000014
Global Const $EVENT_SYSTEM_SWITCHEND = 0x00000015
Global Const $EVENT_SYSTEM_MINIMIZESTART = 0x00000016
Global Const $EVENT_SYSTEM_MINIMIZEEND = 0x00000017
Global Const $EVENT_SYSTEM_DESKTOPSWITCH = 0x00000020
Global Const $EVENT_OBJECT_CREATE = 0x00008000
Global Const $EVENT_OBJECT_DESTROY = 0x00008001
Global Const $EVENT_OBJECT_SHOW = 0x00008002
Global Const $EVENT_OBJECT_HIDE = 0x00008003
Global Const $EVENT_OBJECT_REORDER = 0x00008004
Global Const $EVENT_OBJECT_FOCUS = 0x00008005
Global Const $EVENT_OBJECT_SELECTION = 0x00008006
Global Const $EVENT_OBJECT_SELECTIONADD = 0x00008007
Global Const $EVENT_OBJECT_SELECTIONREMOVE = 0x00008008
Global Const $EVENT_OBJECT_SELECTIONWITHIN = 0x00008009
Global Const $EVENT_OBJECT_STATECHANGE = 0x0000800A
Global Const $EVENT_OBJECT_LOCATIONCHANGE = 0x0000800B
Global Const $EVENT_OBJECT_NAMECHANGE = 0x0000800C
Global Const $EVENT_OBJECT_DESCRIPTIONCHANGE = 0x0000800D
Global Const $EVENT_OBJECT_VALUECHANGE = 0x0000800E
Global Const $EVENT_OBJECT_PARENTCHANGE = 0x0000800F
Global Const $EVENT_OBJECT_HELPCHANGE = 0x00008010
Global Const $EVENT_OBJECT_DEFACTIONCHANGE = 0x00008011
Global Const $EVENT_OBJECT_ACCELERATORCHANGE = 0x00008012
Global Const $EVENT_OBJECT_INVOKED = 0x00008013
Global Const $EVENT_OBJECT_TEXTSELECTIONCHANGED = 0x00008014
Global Const $EVENT_OBJECT_CONTENTSCROLLED = 0x00008015
Global Const $EVENT_MAX = 0x7FFFFFFF

Global Const $WINEVENT_INCONTEXT = 0x04
Global Const $WINEVENT_OUTOFCONTEXT = 0x00
Global Const $WINEVENT_SKIPOWNPROCESS = 0x02
Global Const $WINEVENT_SKIPOWNTHREAD = 0x01

; ===============================================================================================================================
; _WinAPI_ShellChangeNotify()
; ===============================================================================================================================

Global Const $SHCNE_ALLEVENTS = 0x7FFFFFFF
Global Const $SHCNE_ASSOCCHANGED = 0x8000000
Global Const $SHCNE_ATTRIBUTES = 0x00000800
Global Const $SHCNE_CREATE = 0x00000002
Global Const $SHCNE_DELETE = 0x00000004
Global Const $SHCNE_DRIVEADD = 0x00000100
Global Const $SHCNE_DRIVEADDGUI = 0x00010000
Global Const $SHCNE_DRIVEREMOVED = 0x00000080
Global Const $SHCNE_EXTENDED_EVENT = 0x04000000
Global Const $SHCNE_FREESPACE = 0x00040000
Global Const $SHCNE_MEDIAINSERTED = 0x00000020
Global Const $SHCNE_MEDIAREMOVED = 0x00000040
Global Const $SHCNE_MKDIR = 0x00000008
Global Const $SHCNE_NETSHARE = 0x00000200
Global Const $SHCNE_NETUNSHARE = 0x00000400
Global Const $SHCNE_RENAMEFOLDER = 0x00020000
Global Const $SHCNE_RENAMEITEM = 0x00000001
Global Const $SHCNE_RMDIR = 0x00000010
Global Const $SHCNE_SERVERDISCONNECT = 0x00004000
Global Const $SHCNE_UPDATEDIR = 0x00001000
Global Const $SHCNE_UPDATEIMAGE = 0x00008000
Global Const $SHCNE_UPDATEITEM = 0x00002000
Global Const $SHCNE_DISKEVENTS = 0x0002381F
Global Const $SHCNE_GLOBALEVENTS = 0x0C0581E0
Global Const $SHCNE_INTERRUPT = 0x80000000

Global Const $SHCNF_DWORD = 0x00000003
Global Const $SHCNF_IDLIST = 0x00000000
Global Const $SHCNF_PATH = 0x00000001
Global Const $SHCNF_PRINTER = 0x00000002
Global Const $SHCNF_FLUSH = 0x00001000
Global Const $SHCNF_FLUSHNOWAIT = 0x00002000
Global Const $SHCNF_NOTIFYRECURSIVE = 0x00010000

; ===============================================================================================================================
; _WinAPI_ShellChangeNotifyRegister()
; ===============================================================================================================================

Global Const $SHCNRF_INTERRUPTLEVEL = 0x0001
Global Const $SHCNRF_SHELLLEVEL = 0x0002
Global Const $SHCNRF_RECURSIVEINTERRUPT = 0x1000
Global Const $SHCNRF_NEWDELIVERY = 0x8000

; ===============================================================================================================================
; _WinAPI_ShellEmptyRecycleBin()
; ===============================================================================================================================

Global Const $SHERB_NOCONFIRMATION = 0x01
Global Const $SHERB_NOPROGRESSUI = 0x02
Global Const $SHERB_NOSOUND = 0x04
Global Const $SHERB_NO_UI = BitOR($SHERB_NOCONFIRMATION, $SHERB_NOPROGRESSUI, $SHERB_NOSOUND)

; ===============================================================================================================================
; _WinAPI_ShellExecute(), _WinAPI_ShellExecuteEx()
; ===============================================================================================================================

Global Const $SEE_MASK_DEFAULT = 0x00000000
Global Const $SEE_MASK_CLASSNAME = 0x00000001
Global Const $SEE_MASK_CLASSKEY = 0x00000003
Global Const $SEE_MASK_IDLIST = 0x00000004
Global Const $SEE_MASK_INVOKEIDLIST = 0x0000000C
Global Const $SEE_MASK_ICON = 0x00000010
Global Const $SEE_MASK_HOTKEY = 0x00000020
Global Const $SEE_MASK_NOCLOSEPROCESS = 0x00000040
Global Const $SEE_MASK_CONNECTNETDRV = 0x00000080
Global Const $SEE_MASK_NOASYNC = 0x00000100
Global Const $SEE_MASK_FLAG_DDEWAIT = $SEE_MASK_NOASYNC
Global Const $SEE_MASK_DOENVSUBST = 0x00000200
Global Const $SEE_MASK_FLAG_NO_UI = 0x00000400
Global Const $SEE_MASK_UNICODE = 0x00004000
Global Const $SEE_MASK_NO_CONSOLE = 0x00008000
Global Const $SEE_MASK_ASYNCOK = 0x00100000
Global Const $SEE_MASK_NOQUERYCLASSSTORE = 0x01000000
Global Const $SEE_MASK_HMONITOR = 0x00200000
Global Const $SEE_MASK_NOZONECHECKS = 0x00800000
Global Const $SEE_MASK_WAITFORINPUTIDLE = 0x02000000
Global Const $SEE_MASK_FLAG_LOG_USAGE = 0x04000000

Global Const $SE_ERR_ACCESSDENIED = 5
Global Const $SE_ERR_ASSOCINCOMPLETE = 27
Global Const $SE_ERR_DDEBUSY = 30
Global Const $SE_ERR_DDEFAIL = 29
Global Const $SE_ERR_DDETIMEOUT = 28
Global Const $SE_ERR_DLLNOTFOUND = 32
Global Const $SE_ERR_FNF = 2
Global Const $SE_ERR_NOASSOC = 31
Global Const $SE_ERR_OOM = 8
Global Const $SE_ERR_PNF = 3
Global Const $SE_ERR_SHARE = 26

; ===============================================================================================================================
; _WinAPI_ShellFileOperation()
; ===============================================================================================================================

Global Const $FO_COPY = 2
Global Const $FO_DELETE = 3
Global Const $FO_MOVE = 1
Global Const $FO_RENAME = 4

Global Const $FOF_ALLOWUNDO = 0x0040
Global Const $FOF_CONFIRMMOUSE = 0x0002
Global Const $FOF_FILESONLY = 0x0080
Global Const $FOF_MULTIDESTFILES = 0x0001
Global Const $FOF_NOCONFIRMATION = 0x0010
Global Const $FOF_NOCONFIRMMKDIR = 0x0200
Global Const $FOF_NO_CONNECTED_ELEMENTS = 0x2000
Global Const $FOF_NOCOPYSECURITYATTRIBS = 0x0800
Global Const $FOF_NOERRORUI = 0x0400
Global Const $FOF_NORECURSEREPARSE = 0x8000
Global Const $FOF_NORECURSION = 0x1000
Global Const $FOF_RENAMEONCOLLISION = 0x0008
Global Const $FOF_SILENT = 0x0004
Global Const $FOF_SIMPLEPROGRESS = 0x0100
Global Const $FOF_WANTMAPPINGHANDLE = 0x0020
Global Const $FOF_WANTNUKEWARNING = 0x4000
Global Const $FOF_NO_UI = BitOR($FOF_NOCONFIRMATION, $FOF_NOCONFIRMMKDIR, $FOF_NOERRORUI, $FOF_SILENT)

; ===============================================================================================================================
; _WinAPI_ShellGetFileInfo()
; ===============================================================================================================================

Global Const $SHGFI_ADDOVERLAYS = 0x00000020
Global Const $SHGFI_ATTR_SPECIFIED = 0x00020000
Global Const $SHGFI_ATTRIBUTES = 0x00000800
Global Const $SHGFI_DISPLAYNAME = 0x00000200
Global Const $SHGFI_EXETYPE = 0x00002000
Global Const $SHGFI_ICON = 0x00000100
Global Const $SHGFI_ICONLOCATION = 0x00001000
Global Const $SHGFI_LARGEICON = 0x00000000
Global Const $SHGFI_LINKOVERLAY = 0x00008000
Global Const $SHGFI_OPENICON = 0x00000002
Global Const $SHGFI_OVERLAYINDEX = 0x00000040
Global Const $SHGFI_PIDL = 0x00000008
Global Const $SHGFI_SELECTED = 0x00010000
Global Const $SHGFI_SHELLICONSIZE = 0x00000004
Global Const $SHGFI_SMALLICON = 0x00000001
Global Const $SHGFI_SYSICONINDEX = 0x00004000
Global Const $SHGFI_TYPENAME = 0x00000400
Global Const $SHGFI_USEFILEATTRIBUTES = 0x00000010

Global Const $SFGAO_CANCOPY = 0x00000001
Global Const $SFGAO_CANMOVE = 0x00000002
Global Const $SFGAO_CANLINK = 0x00000004
Global Const $SFGAO_STORAGE = 0x00000008
Global Const $SFGAO_CANRENAME = 0x00000010
Global Const $SFGAO_CANDELETE = 0x00000020
Global Const $SFGAO_HASPROPSHEET = 0x00000040
Global Const $SFGAO_DROPTARGET = 0x00000100
Global Const $SFGAO_CAPABILITYMASK = BitOR($SFGAO_CANCOPY, $SFGAO_CANMOVE, $SFGAO_CANLINK, $SFGAO_CANRENAME, $SFGAO_CANDELETE, $SFGAO_HASPROPSHEET, $SFGAO_DROPTARGET)
Global Const $SFGAO_SYSTEM = 0x00001000
Global Const $SFGAO_ENCRYPTED = 0x00002000
Global Const $SFGAO_ISSLOW = 0x00004000
Global Const $SFGAO_GHOSTED = 0x00008000
Global Const $SFGAO_LINK = 0x00010000
Global Const $SFGAO_SHARE = 0x00020000
Global Const $SFGAO_READONLY = 0x00040000
Global Const $SFGAO_HIDDEN = 0x00080000
Global Const $SFGAO_DISPLAYATTRMASK = BitOR($SFGAO_ISSLOW, $SFGAO_GHOSTED, $SFGAO_LINK, $SFGAO_SHARE, $SFGAO_READONLY, $SFGAO_HIDDEN)
Global Const $SFGAO_NONENUMERATED = 0x00100000
Global Const $SFGAO_NEWCONTENT = 0x00200000
Global Const $SFGAO_STREAM = 0x00400000
Global Const $SFGAO_STORAGEANCESTOR = 0x00800000
Global Const $SFGAO_VALIDATE = 0x01000000
Global Const $SFGAO_REMOVABLE = 0x02000000
Global Const $SFGAO_COMPRESSED = 0x04000000
Global Const $SFGAO_BROWSABLE = 0x08000000
Global Const $SFGAO_FILESYSANCESTOR = 0x10000000
Global Const $SFGAO_FOLDER = 0x20000000
Global Const $SFGAO_FILESYSTEM = 0x40000000
Global Const $SFGAO_STORAGECAPMASK = BitOR($SFGAO_STORAGE, $SFGAO_LINK, $SFGAO_READONLY, $SFGAO_STREAM, $SFGAO_STORAGEANCESTOR, $SFGAO_FILESYSANCESTOR, $SFGAO_FOLDER, $SFGAO_FILESYSTEM)
Global Const $SFGAO_HASSUBFOLDER = 0x80000000
Global Const $SFGAO_CONTENTSMASK = $SFGAO_HASSUBFOLDER
Global Const $SFGAO_PKEYSFGAOMASK = BitOR($SFGAO_ISSLOW, $SFGAO_READONLY, $SFGAO_HASSUBFOLDER, $SFGAO_VALIDATE)

; ===============================================================================================================================
; _WinAPI_ShellGetIconOverlayIndex()
; ===============================================================================================================================

Global Const $IDO_SHGIOI_DEFAULT = 0x0FFFFFFC
Global Const $IDO_SHGIOI_LINK = 0x0FFFFFFE
Global Const $IDO_SHGIOI_SHARE = 0x0FFFFFFF
Global Const $IDO_SHGIOI_SLOWFILE = 0x0FFFFFFD

; ===============================================================================================================================
; _WinAPI_ShellGetSetFolderCustomSettings()
; ===============================================================================================================================

Global Const $FCSM_VIEWID = 0x0001
Global Const $FCSM_WEBVIEWTEMPLATE = 0x0002
Global Const $FCSM_INFOTIP = 0x0004
Global Const $FCSM_CLSID = 0x0008
Global Const $FCSM_ICONFILE = 0x0010
Global Const $FCSM_LOGO = 0x0020
Global Const $FCSM_FLAGS = 0x0040

Global Const $FCS_READ = 0x0001
Global Const $FCS_FORCEWRITE = 0x0002
Global Const $FCS_WRITE = BitOR($FCS_READ, $FCS_FORCEWRITE)

; ===============================================================================================================================
; _WinAPI_ShellGetSettings(), _WinAPI_ShellSetSettings()
; ===============================================================================================================================

Global Const $SSF_AUTOCHECKSELECT = 0x00800000
Global Const $SSF_DESKTOPHTML = 0x00000200
Global Const $SSF_DONTPRETTYPATH = 0x00000800
Global Const $SSF_DOUBLECLICKINWEBVIEW = 0x00000080
Global Const $SSF_HIDEICONS = 0x00004000
Global Const $SSF_ICONSONLY = 0x01000000
Global Const $SSF_MAPNETDRVBUTTON = 0x00001000
Global Const $SSF_NOCONFIRMRECYCLE = 0x00008000
Global Const $SSF_NONETCRAWLING = 0x00100000
Global Const $SSF_SEPPROCESS = 0x00080000
Global Const $SSF_SHOWALLOBJECTS = 0x00000001
Global Const $SSF_SHOWCOMPCOLOR = 0x00000008
Global Const $SSF_SHOWEXTENSIONS = 0x00000002
Global Const $SSF_SHOWINFOTIP = 0x00002000
Global Const $SSF_SHOWSUPERHIDDEN = 0x00040000
Global Const $SSF_SHOWSYSFILES = 0x00000020
Global Const $SSF_SHOWTYPEOVERLAY = 0x02000000
Global Const $SSF_STARTPANELON = 0x00200000
Global Const $SSF_WIN95CLASSIC = 0x00000400
Global Const $SSF_WEBVIEW = 0x00020000

; ===============================================================================================================================
; _WinAPI_ShellGetSpecialFolderPath()
; ===============================================================================================================================

Global Const $CSIDL_ADMINTOOLS = 0x0030
Global Const $CSIDL_ALTSTARTUP = 0x001D
Global Const $CSIDL_APPDATA = 0x001A
Global Const $CSIDL_BITBUCKET = 0x000A
Global Const $CSIDL_CDBURN_AREA = 0x003B
Global Const $CSIDL_COMMON_ADMINTOOLS = 0x002F
Global Const $CSIDL_COMMON_ALTSTARTUP = 0x001E
Global Const $CSIDL_COMMON_APPDATA = 0x0023
Global Const $CSIDL_COMMON_DESKTOPDIRECTORY = 0x0019
Global Const $CSIDL_COMMON_DOCUMENTS = 0x002E
Global Const $CSIDL_COMMON_FAVORITES = 0x001F
Global Const $CSIDL_COMMON_MUSIC = 0x0035
Global Const $CSIDL_COMMON_PICTURES = 0x0036
Global Const $CSIDL_COMMON_PROGRAMS = 0x0017
Global Const $CSIDL_COMMON_STARTMENU = 0x0016
Global Const $CSIDL_COMMON_STARTUP = 0x0018
Global Const $CSIDL_COMMON_TEMPLATES = 0x002D
Global Const $CSIDL_COMMON_VIDEO = 0x0037
Global Const $CSIDL_COMPUTERSNEARME = 0x003D
Global Const $CSIDL_CONNECTIONS = 0x0031
Global Const $CSIDL_CONTROLS = 0x0003
Global Const $CSIDL_COOKIES = 0x0021
Global Const $CSIDL_DESKTOP = 0x0000
Global Const $CSIDL_DESKTOPDIRECTORY = 0x0010
Global Const $CSIDL_DRIVES = 0x0011
Global Const $CSIDL_FAVORITES = 0x0006
Global Const $CSIDL_FONTS = 0x0014
Global Const $CSIDL_INTERNET_CACHE = 0x0020
Global Const $CSIDL_HISTORY = 0x0022
Global Const $CSIDL_LOCAL_APPDATA = 0x001C
Global Const $CSIDL_MYMUSIC = 0x000D
Global Const $CSIDL_MYPICTURES = 0x0027
Global Const $CSIDL_MYVIDEO = 0x000E
Global Const $CSIDL_NETHOOD = 0x0013
Global Const $CSIDL_PERSONAL = 0x0005
Global Const $CSIDL_PRINTERS = 0x0004
Global Const $CSIDL_PRINTHOOD = 0x001B
Global Const $CSIDL_PROFILE = 0x0028
Global Const $CSIDL_PROGRAM_FILES = 0x0026
Global Const $CSIDL_PROGRAM_FILES_COMMON = 0x002B
Global Const $CSIDL_PROGRAM_FILES_COMMONX86 = 0x002C
Global Const $CSIDL_PROGRAM_FILESX86 = 0x002A
Global Const $CSIDL_PROGRAMS = 0x0002
Global Const $CSIDL_RECENT = 0x0008
Global Const $CSIDL_SENDTO = 0x0009
Global Const $CSIDL_STARTMENU = 0x000B
Global Const $CSIDL_STARTUP = 0x0007
Global Const $CSIDL_SYSTEM = 0x0025
Global Const $CSIDL_SYSTEMX86 = 0x0029
Global Const $CSIDL_TEMPLATES = 0x0015
Global Const $CSIDL_WINDOWS = 0x0024

; ===============================================================================================================================
; _WinAPI_ShellGetStockIconInfo()
; ===============================================================================================================================

Global Const $SIID_DOCNOASSOC = 0
Global Const $SIID_DOCASSOC = 1
Global Const $SIID_APPLICATION = 2
Global Const $SIID_FOLDER = 3
Global Const $SIID_FOLDEROPEN = 4
Global Const $SIID_DRIVE525 = 5
Global Const $SIID_DRIVE35 = 6
Global Const $SIID_DRIVEREMOVE = 7
Global Const $SIID_DRIVEFIXED = 8
Global Const $SIID_DRIVENET = 9
Global Const $SIID_DRIVENETDISABLED = 10
Global Const $SIID_DRIVECD = 11
Global Const $SIID_DRIVERAM = 12
Global Const $SIID_WORLD = 13
Global Const $SIID_SERVER = 15
Global Const $SIID_PRINTER = 16
Global Const $SIID_MYNETWORK = 17
Global Const $SIID_FIND = 22
Global Const $SIID_HELP = 23
Global Const $SIID_SHARE = 28
Global Const $SIID_LINK = 29
Global Const $SIID_SLOWFILE = 30
Global Const $SIID_RECYCLER = 31
Global Const $SIID_RECYCLERFULL = 32
Global Const $SIID_MEDIACDAUDIO = 40
Global Const $SIID_LOCK = 47
Global Const $SIID_AUTOLIST = 49
Global Const $SIID_PRINTERNET = 50
Global Const $SIID_SERVERSHARE = 51
Global Const $SIID_PRINTERFAX = 52
Global Const $SIID_PRINTERFAXNET = 53
Global Const $SIID_PRINTERFILE = 54
Global Const $SIID_STACK = 55
Global Const $SIID_MEDIASVCD = 56
Global Const $SIID_STUFFEDFOLDER = 57
Global Const $SIID_DRIVEUNKNOWN = 58
Global Const $SIID_DRIVEDVD = 59
Global Const $SIID_MEDIADVD = 60
Global Const $SIID_MEDIADVDRAM = 61
Global Const $SIID_MEDIADVDRW = 62
Global Const $SIID_MEDIADVDR = 63
Global Const $SIID_MEDIADVDROM = 64
Global Const $SIID_MEDIACDAUDIOPLUS = 65
Global Const $SIID_MEDIACDRW = 66
Global Const $SIID_MEDIACDR = 67
Global Const $SIID_MEDIACDBURN = 68
Global Const $SIID_MEDIABLANKCD = 69
Global Const $SIID_MEDIACDROM = 70
Global Const $SIID_AUDIOFILES = 71
Global Const $SIID_IMAGEFILES = 72
Global Const $SIID_VIDEOFILES = 73
Global Const $SIID_MIXEDFILES = 74
Global Const $SIID_FOLDERBACK = 75
Global Const $SIID_FOLDERFRONT = 76
Global Const $SIID_SHIELD = 77
Global Const $SIID_WARNING = 78
Global Const $SIID_INFO = 79
Global Const $SIID_ERROR = 80
Global Const $SIID_KEY = 81
Global Const $SIID_SOFTWARE = 82
Global Const $SIID_RENAME = 83
Global Const $SIID_DELETE = 84
Global Const $SIID_MEDIAAUDIODVD = 85
Global Const $SIID_MEDIAMOVIEDVD = 86
Global Const $SIID_MEDIAENHANCEDCD = 87
Global Const $SIID_MEDIAENHANCEDDVD = 88
Global Const $SIID_MEDIAHDDVD = 89
Global Const $SIID_MEDIABLURAY = 90
Global Const $SIID_MEDIAVCD = 91
Global Const $SIID_MEDIADVDPLUSR = 92
Global Const $SIID_MEDIADVDPLUSRW = 93
Global Const $SIID_DESKTOPPC = 94
Global Const $SIID_MOBILEPC = 95
Global Const $SIID_USERS = 96
Global Const $SIID_MEDIASMARTMEDIA = 97
Global Const $SIID_MEDIACOMPACTFLASH = 98
Global Const $SIID_DEVICECELLPHONE = 99
Global Const $SIID_DEVICECAMERA = 100
Global Const $SIID_DEVICEVIDEOCAMERA = 101
Global Const $SIID_DEVICEAUDIOPLAYER = 102
Global Const $SIID_NETWORKCONNECT = 103
Global Const $SIID_INTERNET = 104
Global Const $SIID_ZIPFILE = 105
Global Const $SIID_SETTINGS = 106
Global Const $SIID_DRIVEHDDVD = 132
Global Const $SIID_DRIVEBD = 133
Global Const $SIID_MEDIAHDDVDROM = 134
Global Const $SIID_MEDIAHDDVDR = 135
Global Const $SIID_MEDIAHDDVDRAM = 136
Global Const $SIID_MEDIABDROM = 137
Global Const $SIID_MEDIABDR = 138
Global Const $SIID_MEDIABDRE = 139
Global Const $SIID_CLUSTEREDDRIVE = 140
Global Const $SIID_MAX_ICONS = 174

Global Const $SHGSI_ICONLOCATION = 0
Global Const $SHGSI_ICON = $SHGFI_ICON
Global Const $SHGSI_SYSICONINDEX = $SHGFI_SYSICONINDEX
Global Const $SHGSI_LINKOVERLAY = $SHGFI_LINKOVERLAY
Global Const $SHGSI_SELECTED = $SHGFI_SELECTED
Global Const $SHGSI_LARGEICON = $SHGFI_LARGEICON
Global Const $SHGSI_SMALLICON = $SHGFI_SMALLICON
Global Const $SHGSI_SHELLICONSIZE = $SHGFI_SHELLICONSIZE

; ===============================================================================================================================
; _WinAPI_ShellNotifyIcon()
; ===============================================================================================================================

Global Const $NIM_ADD = 0x00
Global Const $NIM_MODIFY = 0x01
Global Const $NIM_DELETE = 0x02
Global Const $NIM_SETFOCUS = 0x03
Global Const $NIM_SETVERSION = 0x04

Global Const $NIF_MESSAGE = 0x01
Global Const $NIF_ICON = 0x02
Global Const $NIF_TIP = 0x04
Global Const $NIF_STATE = 0x08
Global Const $NIF_INFO = 0x10
Global Const $NIF_GUID = 0x20
Global Const $NIF_REALTIME = 0x40
Global Const $NIF_SHOWTIP = 0x80

Global Const $NIS_HIDDEN = 0x01
Global Const $NIS_SHAREDICON = 0x02

Global Const $NIIF_NONE = 0x00
Global Const $NIIF_INFO = 0x01
Global Const $NIIF_WARNING = 0x02
Global Const $NIIF_ERROR = 0x03
Global Const $NIIF_USER = 0x04
Global Const $NIIF_NOSOUND = 0x10
Global Const $NIIF_LARGE_ICON = 0x10
Global Const $NIIF_RESPECT_QUIET_TIME = 0x80
Global Const $NIIF_ICON_MASK = 0x0F

; ===============================================================================================================================
; _WinAPI_ShellObjectProperties()
; ===============================================================================================================================

Global Const $SHOP_PRINTERNAME = 1
Global Const $SHOP_FILEPATH = 2
Global Const $SHOP_VOLUMEGUID = 4

; ===============================================================================================================================
; _WinAPI_ShellOpenFolderAndSelectItems()
; ===============================================================================================================================

Global Const $OFASI_EDIT = 0x01
Global Const $OFASI_OPENDESKTOP = 0x02

; ===============================================================================================================================
; _WinAPI_ShellOpenWithDlg()
; ===============================================================================================================================

Global Const $OAIF_ALLOW_REGISTRATION = 0x00000001
Global Const $OAIF_REGISTER_EXT = 0x00000002
Global Const $OAIF_EXEC = 0x00000004
Global Const $OAIF_FORCE_REGISTRATION = 0x00000008
Global Const $OAIF_HIDE_REGISTRATION = 0x00000020
Global Const $OAIF_URL_PROTOCOL = 0x00000040

; ===============================================================================================================================
; _WinAPI_ShellQueryUserNotificationState()
; ===============================================================================================================================

Global Const $QUNS_NOT_PRESENT = 1
Global Const $QUNS_BUSY = 2
Global Const $QUNS_RUNNING_D3D_FULL_SCREEN = 3
Global Const $QUNS_PRESENTATION_MODE = 4
Global Const $QUNS_ACCEPTS_NOTIFICATIONS = 5
Global Const $QUNS_QUIET_TIME = 6

; ===============================================================================================================================
; _WinAPI_ShellRestricted()
; ===============================================================================================================================

Global Const $REST_NORUN = 1
Global Const $REST_NOCLOSE = 2
Global Const $REST_NOSAVESET = 3
Global Const $REST_NOFILEMENU = 4
Global Const $REST_NOSETFOLDERS = 5
Global Const $REST_NOSETTASKBAR = 6
Global Const $REST_NODESKTOP = 7
Global Const $REST_NOFIND = 8
Global Const $REST_NODRIVES = 9
Global Const $REST_NODRIVEAUTORUN = 10
Global Const $REST_NODRIVETYPEAUTORUN = 11
Global Const $REST_NONETHOOD = 12
Global Const $REST_STARTBANNER = 13
Global Const $REST_RESTRICTRUN = 14
Global Const $REST_NOPRINTERTABS = 15
Global Const $REST_NOPRINTERDELETE = 16
Global Const $REST_NOPRINTERADD = 17
Global Const $REST_NOSTARTMENUSUBFOLDERS = 18
Global Const $REST_MYDOCSONNET = 19
Global Const $REST_NOEXITTODOS = 20
Global Const $REST_ENFORCESHELLEXTSECURITY = 21
Global Const $REST_LINKRESOLVEIGNORELINKINFO = 22
Global Const $REST_NOCOMMONGROUPS = 23
Global Const $REST_SEPARATEDESKTOPPROCESS = 24
Global Const $REST_NOWEB = 25
Global Const $REST_NOTRAYCONTEXTMENU = 26
Global Const $REST_NOVIEWCONTEXTMENU = 27
Global Const $REST_NONETCONNECTDISCONNECT = 28
Global Const $REST_STARTMENULOGOFF = 29
Global Const $REST_NOSETTINGSASSIST = 30
Global Const $REST_NOINTERNETICON = 31
Global Const $REST_NORECENTDOCSHISTORY = 32
Global Const $REST_NORECENTDOCSMENU = 33
Global Const $REST_NOACTIVEDESKTOP = 34
Global Const $REST_NOACTIVEDESKTOPCHANGES = 35
Global Const $REST_NOFAVORITESMENU = 36
Global Const $REST_CLEARRECENTDOCSONEXIT = 37
Global Const $REST_CLASSICSHELL = 38
Global Const $REST_NOCUSTOMIZEWEBVIEW = 39
Global Const $REST_NOHTMLWALLPAPER = 40
Global Const $REST_NOCHANGINGWALLPAPER = 41
Global Const $REST_NODESKCOMP = 42
Global Const $REST_NOADDDESKCOMP = 43
Global Const $REST_NODELDESKCOMP = 44
Global Const $REST_NOCLOSEDESKCOMP = 45
Global Const $REST_NOCLOSE_DRAGDROPBAND = 46
Global Const $REST_NOMOVINGBAND = 47
Global Const $REST_NOEDITDESKCOMP = 48
Global Const $REST_NORESOLVESEARCH = 49
Global Const $REST_NORESOLVETRACK = 50
Global Const $REST_FORCECOPYACLWITHFILE = 51
Global Const $REST_NOLOGO3CHANNELNOTIFY = 52
Global Const $REST_NOFORGETSOFTWAREUPDATE = 53
Global Const $REST_NOSETACTIVEDESKTOP = 54
Global Const $REST_NOUPDATEWINDOWS = 55
Global Const $REST_NOCHANGESTARMENU = 56
Global Const $REST_NOFOLDEROPTIONS = 57
Global Const $REST_HASFINDCOMPUTERS = 58
Global Const $REST_INTELLIMENUS = 59
Global Const $REST_RUNDLGMEMCHECKBOX = 60
Global Const $REST_ARP_ShowPostSetup = 61
Global Const $REST_NOCSC = 62
Global Const $REST_NOCONTROLPANEL = 63
Global Const $REST_ENUMWORKGROUP = 64
Global Const $REST_ARP_NOARP = 65
Global Const $REST_ARP_NOREMOVEPAGE = 66
Global Const $REST_ARP_NOADDPAGE = 67
Global Const $REST_ARP_NOWINSETUPPAGE = 68
Global Const $REST_GREYMSIADS = 69
Global Const $REST_NOCHANGEMAPPEDDRIVELABEL = 70
Global Const $REST_NOCHANGEMAPPEDDRIVECOMMENT = 71
Global Const $REST_MAXRECENTDOCS = 72
Global Const $REST_NONETWORKCONNECTIONS = 73
Global Const $REST_FORCESTARTMENULOGOFF = 74
Global Const $REST_NOWEBVIEW = 75
Global Const $REST_NOCUSTOMIZETHISFOLDER = 76
Global Const $REST_NOENCRYPTION = 77
Global Const $REST_DONTSHOWSUPERHIDDEN = 78
Global Const $REST_NOSHELLSEARCHBUTTON = 79
Global Const $REST_NOHARDWARETAB = 80
Global Const $REST_NORUNASINSTALLPROMPT = 81
Global Const $REST_PROMPTRUNASINSTALLNETPATH = 82
Global Const $REST_NOMANAGEMYCOMPUTERVERB = 83
Global Const $REST_NORECENTDOCSNETHOOD = 84
Global Const $REST_DISALLOWRUN = 85
Global Const $REST_NOWELCOMESCREEN = 86
Global Const $REST_RESTRICTCPL = 87
Global Const $REST_DISALLOWCPL = 88
Global Const $REST_NOSMBALLOONTIP = 89
Global Const $REST_NOSMHELP = 90
Global Const $REST_NOWINKEYS = 91
Global Const $REST_NOENCRYPTONMOVE = 92
Global Const $REST_NOLOCALMACHINERUN = 93
Global Const $REST_NOCURRENTUSERRUN = 94
Global Const $REST_NOLOCALMACHINERUNONCE = 95
Global Const $REST_NOCURRENTUSERRUNONCE = 96
Global Const $REST_FORCEACTIVEDESKTOPON = 97
Global Const $REST_NOCOMPUTERSNEARME = 98
Global Const $REST_NOVIEWONDRIVE = 99
Global Const $REST_NONETCRAWL = 100
Global Const $REST_NOSHAREDDOCUMENTS = 101
Global Const $REST_NOSMMYDOCS = 102
Global Const $REST_NOSMMYPICS = 103
Global Const $REST_ALLOWBITBUCKDRIVES = 104
Global Const $REST_NONLEGACYSHELLMODE = 105
Global Const $REST_NOCONTROLPANELBARRICADE = 106
Global Const $REST_NOSTARTPAGE = 107
Global Const $REST_NOAUTOTRAYNOTIFY = 108
Global Const $REST_NOTASKGROUPING = 109
Global Const $REST_NOCDBURNING = 110
Global Const $REST_MYCOMPNOPROP = 111
Global Const $REST_MYDOCSNOPROP = 112
Global Const $REST_NOSTARTPANEL = 113
Global Const $REST_NODISPLAYAPPEARANCEPAGE = 114
Global Const $REST_NOTHEMESTAB = 115
Global Const $REST_NOVISUALSTYLECHOICE = 116
Global Const $REST_NOSIZECHOICE = 117
Global Const $REST_NOCOLORCHOICE = 118
Global Const $REST_SETVISUALSTYLE = 119
Global Const $REST_STARTRUNNOHOMEPATH = 120
Global Const $REST_NOUSERNAMEINSTARTPANEL = 121
Global Const $REST_NOMYCOMPUTERICON = 122
Global Const $REST_NOSMNETWORKPLACES = 123
Global Const $REST_NOSMPINNEDLIST = 124
Global Const $REST_NOSMMYMUSIC = 125
Global Const $REST_NOSMEJECTPC = 126
Global Const $REST_NOSMMOREPROGRAMS = 127
Global Const $REST_NOSMMFUPROGRAMS = 128
Global Const $REST_NOTRAYITEMSDISPLAY = 129
Global Const $REST_NOTOOLBARSONTASKBAR = 130
Global Const $REST_NOSMCONFIGUREPROGRAMS = 131
Global Const $REST_HIDECLOCK = 132
Global Const $REST_NOLOWDISKSPACECHECKS = 133
Global Const $REST_NOENTIRENETWORK = 134
Global Const $REST_NODESKTOPCLEANUP = 135
Global Const $REST_BITBUCKNUKEONDELETE = 136
Global Const $REST_BITBUCKCONFIRMDELETE = 137
Global Const $REST_BITBUCKNOPROP = 138
Global Const $REST_NODISPBACKGROUND = 139
Global Const $REST_NODISPSCREENSAVEPG = 140
Global Const $REST_NODISPSETTINGSPG = 141
Global Const $REST_NODISPSCREENSAVEPREVIEW = 142
Global Const $REST_NODISPLAYCPL = 143
Global Const $REST_HIDERUNASVERB = 144
Global Const $REST_NOTHUMBNAILCACHE = 145
Global Const $REST_NOSTRCMPLOGICAL = 146
Global Const $REST_NOPUBLISHWIZARD = 147
Global Const $REST_NOONLINEPRINTSWIZARD = 148
Global Const $REST_NOWEBSERVICES = 149
Global Const $REST_ALLOWUNHASHEDWEBVIEW = 150
Global Const $REST_ALLOWLEGACYWEBVIEW = 151
Global Const $REST_REVERTWEBVIEWSECURITY = 152
Global Const $REST_INHERITCONSOLEHANDLES = 153
Global Const $REST_SORTMAXITEMCOUNT = 154
Global Const $REST_NOREMOTERECURSIVEEVENTS = 155
Global Const $REST_NOREMOTECHANGENOTIFY = 156
Global Const $REST_NOSIMPLENETIDLIST = 157
Global Const $REST_NOENUMENTIRENETWORK = 158
Global Const $REST_NODETAILSTHUMBNAILONNETWORK = 159
Global Const $REST_NOINTERNETOPENWITH = 160
Global Const $REST_ALLOWLEGACYLMZBEHAVIOR = 161
Global Const $REST_DONTRETRYBADNETNAME = 162
Global Const $REST_ALLOWFILECLSIDJUNCTIONS = 163
Global Const $REST_NOUPNPINSTALL = 164
Global Const $REST_ARP_DONTGROUPPATCHES = 165
Global Const $REST_ARP_NOCHOOSEPROGRAMSPAGE = 166
Global Const $REST_NODISCONNECT = 167
Global Const $REST_NOSECURITY = 168
Global Const $REST_NOFILEASSOCIATE = 169
Global Const $REST_ALLOWCOMMENTTOGGLE = 170
Global Const $REST_USEDESKTOPINICACHE = 171

; ===============================================================================================================================
; _WinAPI_ShellStartNetConnectionDlg()
; ===============================================================================================================================

;Global Const $RESOURCETYPE_ANY = 0x00
;Global Const $RESOURCETYPE_DISK = 0x01
;Global Const $RESOURCETYPE_PRINT = 0x02

; ===============================================================================================================================
; _WinAPI_ShellUpdateImage()
; ===============================================================================================================================

Global Const $GIL_DONTCACHE = 0x0010
Global Const $GIL_NOTFILENAME = 0x0008
Global Const $GIL_PERCLASS = 0x0004
Global Const $GIL_PERINSTANCE = 0x0002
Global Const $GIL_SIMULATEDOC = 0x0001
Global Const $GIL_SHIELD = 0x0200
Global Const $GIL_FORCENOSHIELD = 0x0400

; ===============================================================================================================================
; _WinAPI_ShellUserAuthenticationDlg()
; ===============================================================================================================================

Global Const $CREDUI_FLAGS_ALWAYS_SHOW_UI = 0x00000080
Global Const $CREDUI_FLAGS_COMPLETE_USERNAME = 0x00000800
Global Const $CREDUI_FLAGS_DO_NOT_PERSIST = 0x00000002
Global Const $CREDUI_FLAGS_EXCLUDE_CERTIFICATES = 0x00000008
Global Const $CREDUI_FLAGS_EXPECT_CONFIRMATION = 0x00020000
Global Const $CREDUI_FLAGS_GENERIC_CREDENTIALS = 0x00040000
Global Const $CREDUI_FLAGS_INCORRECT_PASSWORD = 0x00000001
Global Const $CREDUI_FLAGS_KEEP_USERNAME = 0x00100000
Global Const $CREDUI_FLAGS_PASSWORD_ONLY_OK = 0x00000200
Global Const $CREDUI_FLAGS_PERSIST = 0x00001000
Global Const $CREDUI_FLAGS_REQUEST_ADMINISTRATOR = 0x00000004
Global Const $CREDUI_FLAGS_REQUIRE_CERTIFICATE = 0x00000010
Global Const $CREDUI_FLAGS_REQUIRE_SMARTCARD = 0x00000100
Global Const $CREDUI_FLAGS_SERVER_CREDENTIAL = 0x00004000
Global Const $CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX = 0x00000040
Global Const $CREDUI_FLAGS_USERNAME_TARGET_CREDENTIALS = 0x00080000
Global Const $CREDUI_FLAGS_VALIDATE_USERNAME = 0x00000400

; ===============================================================================================================================
; _WinAPI_ShellUserAuthenticationDlgEx()
; ===============================================================================================================================

Global Const $CREDUIWIN_AUTHPACKAGE_ONLY = 0x00000010
Global Const $CREDUIWIN_CHECKBOX = 0x00000002
Global Const $CREDUIWIN_ENUMERATE_ADMINS = 0x00000100
Global Const $CREDUIWIN_ENUMERATE_CURRENT_USER = 0x00000200
Global Const $CREDUIWIN_GENERIC = 0x00000001
Global Const $CREDUIWIN_IN_CRED_ONLY = 0x00000020
Global Const $CREDUIWIN_SECURE_PROMPT = 0x00001000
Global Const $CREDUIWIN_PACK_32_WOW = 0x10000000
Global Const $CREDUIWIN_PREPROMPTING = 0x00002000

;Global Const $CRED_PACK_GENERIC_CREDENTIALS = 0x04
;Global Const $CRED_PACK_PROTECTED_CREDENTIALS = 0x01
;Global Const $CRED_PACK_WOW_BUFFER = 0x02

; ===============================================================================================================================
; _WinAPI_Shell*KnownFolder*()
; ===============================================================================================================================

Global Const $FOLDERID_AddNewPrograms = '{DE61D971-5EBC-4F02-A3A9-6C82895E5C04}'
Global Const $FOLDERID_AdminTools = '{724EF170-A42D-4FEF-9F26-B60E846FBA4F}'
Global Const $FOLDERID_AppUpdates = '{A305CE99-F527-492B-8B1A-7E76FA98D6E4}'
Global Const $FOLDERID_CDBurning = '{9E52AB10-F80D-49DF-ACB8-4330F5687855}'
Global Const $FOLDERID_ChangeRemovePrograms = '{DF7266AC-9274-4867-8D55-3BD661DE872D}'
Global Const $FOLDERID_CommonAdminTools = '{D0384E7D-BAC3-4797-8F14-CBA229B392B5}'
Global Const $FOLDERID_CommonOEMLinks = '{C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D}'
Global Const $FOLDERID_CommonPrograms = '{0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8}'
Global Const $FOLDERID_CommonStartMenu = '{A4115719-D62E-491D-AA7C-E74B8BE3B067}'
Global Const $FOLDERID_CommonStartup = '{82A5EA35-D9CD-47C5-9629-E15D2F714E6E}'
Global Const $FOLDERID_CommonTemplates = '{B94237E7-57AC-4347-9151-B08C6C32D1F7}'
Global Const $FOLDERID_ComputerFolder = '{0AC0837C-BBF8-452A-850D-79D08E667CA7}'
Global Const $FOLDERID_ConflictFolder = '{4BFEFB45-347D-4006-A5BE-AC0CB0567192}'
Global Const $FOLDERID_ConnectionsFolder = '{6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD}'
Global Const $FOLDERID_Contacts = '{56784854-C6CB-462B-8169-88E350ACB882}'
Global Const $FOLDERID_ControlPanelFolder = '{82A74AEB-AEB4-465C-A014-D097EE346D63}'
Global Const $FOLDERID_Cookies = '{2B0F765D-C0E9-4171-908E-08A611B84FF6}'
Global Const $FOLDERID_Desktop = '{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}'
Global Const $FOLDERID_DeviceMetadataStore = '{5CE4A5E9-E4EB-479D-B89F-130C02886155}'
Global Const $FOLDERID_DocumentsLibrary = '{7B0DB17D-9CD2-4A93-9733-46CC89022E7C}'
Global Const $FOLDERID_Downloads = '{374DE290-123F-4565-9164-39C4925E467B}'
Global Const $FOLDERID_Favorites = '{1777F761-68AD-4D8A-87BD-30B759FA33DD}'
Global Const $FOLDERID_Fonts = '{FD228CB7-AE11-4AE3-864C-16F3910AB8FE}'
Global Const $FOLDERID_Games = '{CAC52C1A-B53D-4EDC-92D7-6B2E8AC19434}'
Global Const $FOLDERID_GameTasks = '{054FAE61-4DD8-4787-80B6-090220C4B700}'
Global Const $FOLDERID_History = '{D9DC8A3B-B784-432E-A781-5A1130A75963}'
Global Const $FOLDERID_HomeGroup = '{52528A6B-B9E3-4ADD-B60D-588C2DBA842D}'
Global Const $FOLDERID_ImplicitAppShortcuts = '{BCB5256F-79F6-4CEE-B725-DC34E402FD46}'
Global Const $FOLDERID_InternetCache = '{352481E8-33BE-4251-BA85-6007CAEDCF9D}'
Global Const $FOLDERID_InternetFolder = '{4D9F7874-4E0C-4904-967B-40B0D20C3E4B}'
Global Const $FOLDERID_Libraries = '{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}'
Global Const $FOLDERID_Links = '{BFB9D5E0-C6A9-404C-B2B2-AE6DB6AF4968}'
Global Const $FOLDERID_LocalAppData = '{F1B32785-6FBA-4FCF-9D55-7B8E7F157091}'
Global Const $FOLDERID_LocalAppDataLow = '{A520A1A4-1780-4FF6-BD18-167343C5AF16}'
Global Const $FOLDERID_LocalizedResourcesDir = '{2A00375E-224C-49DE-B8D1-440DF7EF3DDC}'
Global Const $FOLDERID_Music = '{4BD8D571-6D19-48D3-BE97-422220080E43}'
Global Const $FOLDERID_MusicLibrary = '{2112AB0A-C86A-4FFE-A368-0DE96E47012E}'
Global Const $FOLDERID_NetHood = '{C5ABBF53-E17F-4121-8900-86626FC2C973}'
Global Const $FOLDERID_NetworkFolder = '{D20BEEC4-5CA8-4905-AE3B-BF251EA09B53}'
Global Const $FOLDERID_OriginalImages = '{2C36C0AA-5812-4B87-BFD0-4CD0DFB19B39}'
Global Const $FOLDERID_PhotoAlbums = '{69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C}'
Global Const $FOLDERID_PicturesLibrary = '{A990AE9F-A03B-4E80-94BC-9912D7504104}'
Global Const $FOLDERID_Pictures = '{33E28130-4E1E-4676-835A-98395C3BC3BB}'
Global Const $FOLDERID_Playlists = '{DE92C1C7-837F-4F69-A3BB-86E631204A23}'
Global Const $FOLDERID_PrintersFolder = '{76FC4E2D-D6AD-4519-A663-37BD56068185}'
Global Const $FOLDERID_PrintHood = '{9274BD8D-CFD1-41C3-B35E-B13F55A758F4}'
Global Const $FOLDERID_Profile = '{5E6C858F-0E22-4760-9AFE-EA3317B67173}'
Global Const $FOLDERID_ProgramData = '{62AB5D82-FDC1-4DC3-A9DD-070D1D495D97}'
Global Const $FOLDERID_ProgramFiles = '{905E63B6-C1BF-494E-B29C-65B732D3D21A}'
Global Const $FOLDERID_ProgramFilesX64 = '{6D809377-6AF0-444B-8957-A3773F02200E}'
Global Const $FOLDERID_ProgramFilesX86 = '{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}'
Global Const $FOLDERID_ProgramFilesCommon = '{F7F1ED05-9F6D-47A2-AAAE-29D317C6F066}'
Global Const $FOLDERID_ProgramFilesCommonX64 = '{6365D5A7-0F0D-45E5-87F6-0DA56B6A4F7D}'
Global Const $FOLDERID_ProgramFilesCommonX86 = '{DE974D24-D9C6-4D3E-BF91-F4455120B917}'
Global Const $FOLDERID_Programs = '{A77F5D77-2E2B-44C3-A6A2-ABA601054A51}'
Global Const $FOLDERID_Public = '{DFDF76A2-C82A-4D63-906A-5644AC457385}'
Global Const $FOLDERID_PublicDesktop = '{C4AA340D-F20F-4863-AFEF-F87EF2E6BA25}'
Global Const $FOLDERID_PublicDocuments = '{ED4824AF-DCE4-45A8-81E2-FC7965083634}'
Global Const $FOLDERID_PublicDownloads = '{3D644C9B-1FB8-4F30-9B45-F670235F79C0}'
Global Const $FOLDERID_PublicGameTasks = '{DEBF2536-E1A8-4C59-B6A2-414586476AEA}'
Global Const $FOLDERID_PublicLibraries = '{48DAF80B-E6CF-4F4E-B800-0E69D84EE384}'
Global Const $FOLDERID_PublicMusic = '{3214FAB5-9757-4298-BB61-92A9DEAA44FF}'
Global Const $FOLDERID_PublicPictures = '{B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5}'
Global Const $FOLDERID_PublicRingtones = '{E555AB60-153B-4D17-9F04-A5FE99FC15EC}'
Global Const $FOLDERID_PublicVideos = '{2400183A-6185-49FB-A2D8-4A392A602BA3}'
Global Const $FOLDERID_QuickLaunch = '{52A4F021-7B75-48A9-9F6B-4B87A210BC8F}'
Global Const $FOLDERID_Recent = '{AE50C081-EBD2-438A-8655-8A092E34987A}'
Global Const $FOLDERID_RecordedTVLibrary = '{1A6FDBA2-F42D-4358-A798-B74D745926C5}'
Global Const $FOLDERID_RecycleBinFolder = '{B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC}'
Global Const $FOLDERID_ResourceDir = '{8AD10C31-2ADB-4296-A8F7-E4701232C972}'
Global Const $FOLDERID_Ringtones = '{C870044B-F49E-4126-A9C3-B52A1FF411E8}'
Global Const $FOLDERID_RoamingAppData = '{3EB685DB-65F9-4CF6-A03A-E3EF65729F3D}'
Global Const $FOLDERID_SampleMusic = '{B250C668-F57D-4EE1-A63C-290EE7D1AA1F}'
Global Const $FOLDERID_SamplePictures = '{C4900540-2379-4C75-844B-64E6FAF8716B}'
Global Const $FOLDERID_SamplePlaylists = '{15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5}'
Global Const $FOLDERID_SampleVideos = '{859EAD94-2E85-48AD-A71A-0969CB56A6CD}'
Global Const $FOLDERID_SavedGames = '{4C5C32FF-BB9D-43B0-B5B4-2D72E54EAAA4}'
Global Const $FOLDERID_SavedSearches = '{7D1D3A04-DEBB-4115-95CF-2F29DA2920DA}'
Global Const $FOLDERID_SEARCH_CSC = '{EE32E446-31CA-4ABA-814F-A5EBD2FD6D5E}'
Global Const $FOLDERID_SEARCH_MAPI = '{98EC0E18-2098-4D44-8644-66979315A281}'
Global Const $FOLDERID_SearchHome = '{190337D1-B8CA-4121-A639-6D472D16972A}'
Global Const $FOLDERID_SendTo = '{8983036C-27C0-404B-8F08-102D10DCFD74}'
Global Const $FOLDERID_SidebarDefaultParts = '{7B396E54-9EC5-4300-BE0A-2482EBAE1A26}'
Global Const $FOLDERID_SidebarParts = '{A75D362E-50FC-4FB7-AC2C-A8BEAA314493}'
Global Const $FOLDERID_StartMenu = '{625B53C3-AB48-4EC1-BA1F-A1EF4146FC19}'
Global Const $FOLDERID_Startup = '{B97D20BB-F46A-4C97-BA10-5E3608430854}'
Global Const $FOLDERID_SyncManagerFolder = '{43668BF8-C14E-49B2-97C9-747784D784B7}'
Global Const $FOLDERID_SyncResultsFolder = '{289A9A43-BE44-4057-A41B-587A76D7E7F9}'
Global Const $FOLDERID_SyncSetupFolder = '{0F214138-B1D3-4A90-BBA9-27CBC0C5389A}'
Global Const $FOLDERID_System = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}'
Global Const $FOLDERID_SystemX86 = '{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}'
Global Const $FOLDERID_Templates = '{A63293E8-664E-48DB-A079-DF759E0509F7}'
Global Const $FOLDERID_UserPinned = '{9E3995AB-1F9C-4F13-B827-48B24B6C7174}'
Global Const $FOLDERID_UserProfiles = '{0762D272-C50A-4BB0-A382-697DCD729B80}'
Global Const $FOLDERID_UserProgramFiles = '{5CD7AEE2-2219-4A67-B85D-6C9CE15660CB}'
Global Const $FOLDERID_UserProgramFilesCommon = '{BCBD3057-CA5C-4622-B42D-BC56DB0AE516}'
Global Const $FOLDERID_UsersFiles = '{F3CE0F7C-4901-4ACC-8648-D5D44B04EF8F}'
Global Const $FOLDERID_UsersLibraries = '{A302545D-DEFF-464B-ABE8-61C8648D939B}'
Global Const $FOLDERID_Videos = '{18989B1D-99B5-455B-841C-AB7C74E4DDFC}'
Global Const $FOLDERID_VideosLibrary = '{491E922F-5643-4AF4-A7EB-4E7A138D8174}'
Global Const $FOLDERID_Windows = '{F38BF404-1D43-42F2-9305-67DE0B28FC23}'

Global Const $KF_FLAG_ALIAS_ONLY = 0x80000000
Global Const $KF_FLAG_CREATE = 0x00008000
Global Const $KF_FLAG_DONT_VERIFY = 0x00004000
Global Const $KF_FLAG_DONT_UNEXPAND = 0x00002000
Global Const $KF_FLAG_NO_ALIAS = 0x00001000
Global Const $KF_FLAG_INIT = 0x00000800
Global Const $KF_FLAG_DEFAULT_PATH = 0x00000400
Global Const $KF_FLAG_NO_APPCONTAINER_REDIRECTION = 0x00010000
Global Const $KF_FLAG_NOT_PARENT_RELATIVE = 0x00000200
Global Const $KF_FLAG_SIMPLE_IDLIST = 0x00000100

; ===============================================================================================================================
; _WinAPI_SystemParametersInfo()
; ===============================================================================================================================

Global Const $SPI_GETBEEP = 0x0001
Global Const $SPI_SETBEEP = 0x0002
Global Const $SPI_GETMOUSE = 0x0003
Global Const $SPI_SETMOUSE = 0x0004
Global Const $SPI_GETBORDER = 0x0005
Global Const $SPI_SETBORDER = 0x0006
Global Const $SPI_GETKEYBOARDSPEED = 0x000A
Global Const $SPI_SETKEYBOARDSPEED = 0x000B
Global Const $SPI_LANGDRIVER = 0x000C
Global Const $SPI_ICONHORIZONTALSPACING = 0x000D
Global Const $SPI_GETSCREENSAVETIMEOUT = 0x000E
Global Const $SPI_SETSCREENSAVETIMEOUT = 0x000F
Global Const $SPI_GETSCREENSAVEACTIVE = 0x0010
Global Const $SPI_SETSCREENSAVEACTIVE = 0x0011
Global Const $SPI_GETGRIDGRANULARITY = 0x0012
Global Const $SPI_SETGRIDGRANULARITY = 0x0013
Global Const $SPI_SETDESKWALLPAPER = 0x0014
Global Const $SPI_SETDESKPATTERN = 0x0015
Global Const $SPI_GETKEYBOARDDELAY = 0x0016
Global Const $SPI_SETKEYBOARDDELAY = 0x0017
Global Const $SPI_ICONVERTICALSPACING = 0x0018
Global Const $SPI_GETICONTITLEWRAP = 0x0019
Global Const $SPI_SETICONTITLEWRAP = 0x001A
Global Const $SPI_GETMENUDROPALIGNMENT = 0x001B
Global Const $SPI_SETMENUDROPALIGNMENT = 0x001C
Global Const $SPI_SETDOUBLECLKWIDTH = 0x001D
Global Const $SPI_SETDOUBLECLKHEIGHT = 0x001E
Global Const $SPI_GETICONTITLELOGFONT = 0x001F
Global Const $SPI_SETDOUBLECLICKTIME = 0x0020
Global Const $SPI_SETMOUSEBUTTONSWAP = 0x0021
Global Const $SPI_SETICONTITLELOGFONT = 0x0022
Global Const $SPI_GETFASTTASKSWITCH = 0x0023
Global Const $SPI_SETFASTTASKSWITCH = 0x0024
Global Const $SPI_SETDRAGFULLWINDOWS = 0x0025
Global Const $SPI_GETDRAGFULLWINDOWS = 0x0026
Global Const $SPI_GETNONCLIENTMETRICS = 0x0029
Global Const $SPI_SETNONCLIENTMETRICS = 0x002A
Global Const $SPI_GETMINIMIZEDMETRICS = 0x002B
Global Const $SPI_SETMINIMIZEDMETRICS = 0x002C
Global Const $SPI_GETICONMETRICS = 0x002D
Global Const $SPI_SETICONMETRICS = 0x002E
Global Const $SPI_SETWORKAREA = 0x002F
Global Const $SPI_GETWORKAREA = 0x0030
Global Const $SPI_SETPENWINDOWS = 0x0031
Global Const $SPI_GETHIGHCONTRAST = 0x0042
Global Const $SPI_SETHIGHCONTRAST = 0x0043
Global Const $SPI_GETKEYBOARDPREF = 0x0044
Global Const $SPI_SETKEYBOARDPREF = 0x0045
Global Const $SPI_GETSCREENREADER = 0x0046
Global Const $SPI_SETSCREENREADER = 0x0047
Global Const $SPI_GETANIMATION = 0x0048
Global Const $SPI_SETANIMATION = 0x0049
Global Const $SPI_GETFONTSMOOTHING = 0x004A
Global Const $SPI_SETFONTSMOOTHING = 0x004B
Global Const $SPI_SETDRAGWIDTH = 0x004C
Global Const $SPI_SETDRAGHEIGHT = 0x004D
Global Const $SPI_SETHANDHELD = 0x004E
Global Const $SPI_GETLOWPOWERTIMEOUT = 0x004F
Global Const $SPI_GETPOWEROFFTIMEOUT = 0x0050
Global Const $SPI_SETLOWPOWERTIMEOUT = 0x0051
Global Const $SPI_SETPOWEROFFTIMEOUT = 0x0052
Global Const $SPI_GETLOWPOWERACTIVE = 0x0053
Global Const $SPI_GETPOWEROFFACTIVE = 0x0054
Global Const $SPI_SETLOWPOWERACTIVE = 0x0055
Global Const $SPI_SETPOWEROFFACTIVE = 0x0056
Global Const $SPI_SETCURSORS = 0x0057
Global Const $SPI_SETICONS = 0x0058
Global Const $SPI_GETDEFAULTINPUTLANG = 0x0059
Global Const $SPI_SETDEFAULTINPUTLANG = 0x005A
Global Const $SPI_SETLANGTOGGLE = 0x005B
Global Const $SPI_GETWINDOWSEXTENSION = 0x005C
Global Const $SPI_SETMOUSETRAILS = 0x005D
Global Const $SPI_GETMOUSETRAILS = 0x005E
Global Const $SPI_SETSCREENSAVERRUNNING = 0x0061
Global Const $SPI_SCREENSAVERRUNNING = $SPI_SETSCREENSAVERRUNNING
Global Const $SPI_GETFILTERKEYS = 0x0032
Global Const $SPI_SETFILTERKEYS = 0x0033
Global Const $SPI_GETTOGGLEKEYS = 0x0034
Global Const $SPI_SETTOGGLEKEYS = 0x0035
Global Const $SPI_GETMOUSEKEYS = 0x0036
Global Const $SPI_SETMOUSEKEYS = 0x0037
Global Const $SPI_GETSHOWSOUNDS = 0x0038
Global Const $SPI_SETSHOWSOUNDS = 0x0039
Global Const $SPI_GETSTICKYKEYS = 0x003A
Global Const $SPI_SETSTICKYKEYS = 0x003B
Global Const $SPI_GETACCESSTIMEOUT = 0x003C
Global Const $SPI_SETACCESSTIMEOUT = 0x003D
Global Const $SPI_GETSERIALKEYS = 0x003E
Global Const $SPI_SETSERIALKEYS = 0x003F
Global Const $SPI_GETSOUNDSENTRY = 0x0040
Global Const $SPI_SETSOUNDSENTRY = 0x0041
Global Const $SPI_GETSNAPTODEFBUTTON = 0x005F
Global Const $SPI_SETSNAPTODEFBUTTON = 0x0060
Global Const $SPI_GETMOUSEHOVERWIDTH = 0x0062
Global Const $SPI_SETMOUSEHOVERWIDTH = 0x0063
Global Const $SPI_GETMOUSEHOVERHEIGHT = 0x0064
Global Const $SPI_SETMOUSEHOVERHEIGHT = 0x0065
Global Const $SPI_GETMOUSEHOVERTIME = 0x0066
Global Const $SPI_SETMOUSEHOVERTIME = 0x0067
Global Const $SPI_GETWHEELSCROLLLINES = 0x0068
Global Const $SPI_SETWHEELSCROLLLINES = 0x0069
Global Const $SPI_GETMENUSHOWDELAY = 0x006A
Global Const $SPI_SETMENUSHOWDELAY = 0x006B
Global Const $SPI_GETSHOWIMEUI = 0x006E
Global Const $SPI_SETSHOWIMEUI = 0x006F
Global Const $SPI_GETMOUSESPEED = 0x0070
Global Const $SPI_SETMOUSESPEED = 0x0071
Global Const $SPI_GETSCREENSAVERRUNNING = 0x0072
Global Const $SPI_GETDESKWALLPAPER = 0x0073
Global Const $SPI_GETACTIVEWINDOWTRACKING = 0x1000
Global Const $SPI_SETACTIVEWINDOWTRACKING = 0x1001
Global Const $SPI_GETMENUANIMATION = 0x1002
Global Const $SPI_SETMENUANIMATION = 0x1003
Global Const $SPI_GETCOMBOBOXANIMATION = 0x1004
Global Const $SPI_SETCOMBOBOXANIMATION = 0x1005
Global Const $SPI_GETLISTBOXSMOOTHSCROLLING = 0x1006
Global Const $SPI_SETLISTBOXSMOOTHSCROLLING = 0x1007
Global Const $SPI_GETGRADIENTCAPTIONS = 0x1008
Global Const $SPI_SETGRADIENTCAPTIONS = 0x1009
Global Const $SPI_GETKEYBOARDCUES = 0x100A
Global Const $SPI_SETKEYBOARDCUES = 0x100B
Global Const $SPI_GETMENUUNDERLINES = $SPI_GETKEYBOARDCUES
Global Const $SPI_SETMENUUNDERLINES = $SPI_SETKEYBOARDCUES
Global Const $SPI_GETACTIVEWNDTRKZORDER = 0x100C
Global Const $SPI_SETACTIVEWNDTRKZORDER = 0x100D
Global Const $SPI_GETHOTTRACKING = 0x100E
Global Const $SPI_SETHOTTRACKING = 0x100F
Global Const $SPI_GETMENUFADE = 0x1012
Global Const $SPI_SETMENUFADE = 0x1013
Global Const $SPI_GETSELECTIONFADE = 0x1014
Global Const $SPI_SETSELECTIONFADE = 0x1015
Global Const $SPI_GETTOOLTIPANIMATION = 0x1016
Global Const $SPI_SETTOOLTIPANIMATION = 0x1017
Global Const $SPI_GETTOOLTIPFADE = 0x1018
Global Const $SPI_SETTOOLTIPFADE = 0x1019
Global Const $SPI_GETCURSORSHADOW = 0x101A
Global Const $SPI_SETCURSORSHADOW = 0x101B
Global Const $SPI_GETMOUSESONAR = 0x101C
Global Const $SPI_SETMOUSESONAR = 0x101D
Global Const $SPI_GETMOUSECLICKLOCK = 0x101E
Global Const $SPI_SETMOUSECLICKLOCK = 0x101F
Global Const $SPI_GETMOUSEVANISH = 0x1020
Global Const $SPI_SETMOUSEVANISH = 0x1021
Global Const $SPI_GETFLATMENU = 0x1022
Global Const $SPI_SETFLATMENU = 0x1023
Global Const $SPI_GETDROPSHADOW = 0x1024
Global Const $SPI_SETDROPSHADOW = 0x1025
Global Const $SPI_GETBLOCKSENDINPUTRESETS = 0x1026
Global Const $SPI_SETBLOCKSENDINPUTRESETS = 0x1027
Global Const $SPI_GETUIEFFECTS = 0x103E
Global Const $SPI_SETUIEFFECTS = 0x103F
Global Const $SPI_GETFOREGROUNDLOCKTIMEOUT = 0x2000
Global Const $SPI_SETFOREGROUNDLOCKTIMEOUT = 0x2001
Global Const $SPI_GETACTIVEWNDTRKTIMEOUT = 0x2002
Global Const $SPI_SETACTIVEWNDTRKTIMEOUT = 0x2003
Global Const $SPI_GETFOREGROUNDFLASHCOUNT = 0x2004
Global Const $SPI_SETFOREGROUNDFLASHCOUNT = 0x2005
Global Const $SPI_GETCARETWIDTH = 0x2006
Global Const $SPI_SETCARETWIDTH = 0x2007
Global Const $SPI_GETMOUSECLICKLOCKTIME = 0x2008
Global Const $SPI_SETMOUSECLICKLOCKTIME = 0x2009
Global Const $SPI_GETFONTSMOOTHINGTYPE = 0x200A
Global Const $SPI_SETFONTSMOOTHINGTYPE = 0x200B
Global Const $SPI_GETFONTSMOOTHINGCONTRAST = 0x200C
Global Const $SPI_SETFONTSMOOTHINGCONTRAST = 0x200D
Global Const $SPI_GETFOCUSBORDERWIDTH = 0x200E
Global Const $SPI_SETFOCUSBORDERWIDTH = 0x200F
Global Const $SPI_GETFOCUSBORDERHEIGHT = 0x2010
Global Const $SPI_SETFOCUSBORDERHEIGHT = 0x2011
Global Const $SPI_GETFONTSMOOTHINGORIENTATION = 0x2012
Global Const $SPI_SETFONTSMOOTHINGORIENTATION = 0x2013

Global Const $FE_FONTSMOOTHINGSTANDARD = 0x0001
Global Const $FE_FONTSMOOTHINGCLEARTYPE = 0x0002
Global Const $FE_FONTSMOOTHINGDOCKING = 0x8000

Global Const $FE_FONTSMOOTHINGORIENTATIONBGR = 0x0000
Global Const $FE_FONTSMOOTHINGORIENTATIONRGB = 0x0001

Global Const $SPIF_UPDATEINIFILE = 0x0001
Global Const $SPIF_SENDWININICHANGE = 0x0002
Global Const $SPIF_SENDCHANGE = $SPIF_SENDWININICHANGE

; ===============================================================================================================================
; _WinAPI_TrackMouseEvent()
; ===============================================================================================================================

Global Const $TME_CANCEL = 0x80000000
Global Const $TME_HOVER = 0x00000001
Global Const $TME_LEAVE = 0x00000002
Global Const $TME_NONCLIENT = 0x00000010
Global Const $TME_QUERY = 0x40000000

; ===============================================================================================================================
; _WinAPI_UniqueHardwareID()
; ===============================================================================================================================

Global Const $UHID_MB = 0x00
Global Const $UHID_BIOS = 0x01
Global Const $UHID_CPU = 0x02
Global Const $UHID_HDD = 0x04
Global Const $UHID_All = BitOR($UHID_MB, $UHID_BIOS, $UHID_CPU, $UHID_HDD)

; ===============================================================================================================================
; _WinAPI_UpdateLayeredWindow*()
; ===============================================================================================================================

;Global Const $ULW_ALPHA = 0x02
;Global Const $ULW_COLORKEY = 0x01
;Global Const $ULW_OPAQUE = 0x04

Global Const $ULW_EX_NORESIZE = 0x08

; ===============================================================================================================================
; _WinAPI_UrlApplyScheme()
; ===============================================================================================================================

Global Const $URL_APPLY_DEFAULT = 0x01
Global Const $URL_APPLY_GUESSSCHEME = 0x02
Global Const $URL_APPLY_GUESSFILE = 0x04
Global Const $URL_APPLY_FORCEAPPLY = 0x08

; ===============================================================================================================================
; _WinAPI_UrlCanonicalize(), _WinAPI_UrlCombine()
; ===============================================================================================================================

Global Const $URL_DONT_SIMPLIFY = 0x08000000
Global Const $URL_ESCAPE_AS_UTF8 = 0x00040000
Global Const $URL_ESCAPE_PERCENT = 0x00001000
Global Const $URL_ESCAPE_SPACES_ONLY = 0x04000000
Global Const $URL_ESCAPE_UNSAFE = 0x20000000
Global Const $URL_NO_META = 0x08000000
Global Const $URL_PLUGGABLE_PROTOCOL = 0x40000000
Global Const $URL_UNESCAPE = 0x10000000

; ===============================================================================================================================
; _WinAPI_UrlGetPart()
; ===============================================================================================================================

Global Const $URL_PART_HOSTNAME = 2
Global Const $URL_PART_PASSWORD = 4
Global Const $URL_PART_PORT = 5
Global Const $URL_PART_QUERY = 6
Global Const $URL_PART_SCHEME = 1
Global Const $URL_PART_USERNAME = 3

; ===============================================================================================================================
; _WinAPI_UrlIs()
; ===============================================================================================================================

Global Const $URLIS_APPLIABLE = 4
Global Const $URLIS_DIRECTORY = 5
Global Const $URLIS_FILEURL = 3
Global Const $URLIS_HASQUERY = 6
Global Const $URLIS_NOHISTORY = 2
Global Const $URLIS_OPAQUE = 1
Global Const $URLIS_URL = 0

; ===============================================================================================================================
; _WinAPI_VerQueryRoot()
; ===============================================================================================================================

Global Const $VS_FF_DEBUG = 0x00000001
Global Const $VS_FF_INFOINFERRED = 0x00000010
Global Const $VS_FF_PATCHED = 0x00000004
Global Const $VS_FF_PRERELEASE = 0x00000002
Global Const $VS_FF_PRIVATEBUILD = 0x00000008
Global Const $VS_FF_SPECIALBUILD = 0x00000020

Global Const $VOS_DOS = 0x00010000
Global Const $VOS_NT = 0x00040000
Global Const $VOS__WINDOWS16 = 0x00000001
Global Const $VOS__WINDOWS32 = 0x00000004
Global Const $VOS_OS216 = 0x00020000
Global Const $VOS_OS232 = 0x00030000
Global Const $VOS__PM16 = 0x00000002
Global Const $VOS__PM32 = 0x00000003
Global Const $VOS_UNKNOWN = 0x00000000

Global Const $VOS_DOS_WINDOWS16 = 0x00010001
Global Const $VOS_DOS_WINDOWS32 = 0x00010004
Global Const $VOS_NT_WINDOWS32 = 0x00040004
Global Const $VOS_OS216_PM16 = 0x00020002
Global Const $VOS_OS232_PM32 = 0x00030003

Global Const $VFT_APP = 0x00000001
Global Const $VFT_DLL = 0x00000002
Global Const $VFT_DRV = 0x00000003
Global Const $VFT_FONT = 0x00000004
Global Const $VFT_STATIC_LIB = 0x00000007
Global Const $VFT_UNKNOWN = 0x00000000
Global Const $VFT_VXD = 0x00000005

Global Const $VFT2_DRV_COMM = 0x0000000A
Global Const $VFT2_DRV_DISPLAY = 0x00000004
Global Const $VFT2_DRV_INSTALLABLE = 0x00000008
Global Const $VFT2_DRV_KEYBOARD = 0x00000002
Global Const $VFT2_DRV_LANGUAGE = 0x00000003
Global Const $VFT2_DRV_MOUSE = 0x00000005
Global Const $VFT2_DRV_NETWORK = 0x00000006
Global Const $VFT2_DRV_PRINTER = 0x00000001
Global Const $VFT2_DRV_SOUND = 0x00000009
Global Const $VFT2_DRV_SYSTEM = 0x00000007
Global Const $VFT2_DRV_VERSIONED_PRINTER = 0x0000000C
Global Const $VFT2_UNKNOWN = 0x00000000

Global Const $VFT2_FONT_RASTER = 0x00000001
Global Const $VFT2_FONT_TRUETYPE = 0x00000003
Global Const $VFT2_FONT_VECTOR = 0x00000002
;Global Const $VFT2_UNKNOWN = 0x00000000

; ===============================================================================================================================
; _WinAPI_*Desktop*()
; ===============================================================================================================================

Global Const $DESKTOP_CREATEMENU = 0x0004
Global Const $DESKTOP_CREATEWINDOW = 0x0002
Global Const $DESKTOP_ENUMERATE = 0x0040
Global Const $DESKTOP_HOOKCONTROL = 0x0008
Global Const $DESKTOP_JOURNALPLAYBACK = 0x0020
Global Const $DESKTOP_JOURNALRECORD = 0x0010
Global Const $DESKTOP_READOBJECTS = 0x0001
Global Const $DESKTOP_SWITCHDESKTOP = 0x0100
Global Const $DESKTOP_WRITEOBJECTS = 0x0080
Global Const $DESKTOP_ALL_ACCESS = BitOR($DESKTOP_CREATEMENU, $DESKTOP_CREATEWINDOW, $DESKTOP_ENUMERATE, $DESKTOP_HOOKCONTROL, $DESKTOP_JOURNALPLAYBACK, $DESKTOP_JOURNALRECORD, $DESKTOP_READOBJECTS, $DESKTOP_SWITCHDESKTOP, $DESKTOP_WRITEOBJECTS)

; ===============================================================================================================================
; _WinAPI_*Rgn*()
; ===============================================================================================================================

;Global Const $COMPLEXREGION = 3
;Global Const $NULLREGION = 1
;Global Const $SIMPLEREGION = 2

; ===============================================================================================================================
; _WinAPI_*RowInput*()
; ===============================================================================================================================

Global Const $RIDEV_APPKEYS = 0x00000400
Global Const $RIDEV_CAPTUREMOUSE = 0x00000200
Global Const $RIDEV_DEVNOTIFY = 0x00002000
Global Const $RIDEV_EXCLUDE = 0x00000010
Global Const $RIDEV_EXINPUTSINK = 0x00001000
Global Const $RIDEV_INPUTSINK = 0x00000100
Global Const $RIDEV_NOHOTKEYS = 0x00000200
Global Const $RIDEV_NOLEGACY = 0x00000030
Global Const $RIDEV_PAGEONLY = 0x00000020
Global Const $RIDEV_REMOVE = 0x00000001

Global Const $RID_HEADER = 0x10000005
Global Const $RID_INPUT = 0x10000003

Global Const $RIM_TYPEHID = 2
Global Const $RIM_TYPEKEYBOARD = 1
Global Const $RIM_TYPEMOUSE = 0

Global Const $RIDI_DEVICENAME = 0x20000007
Global Const $RIDI_DEVICEINFO = 0x2000000B
Global Const $RIDI_PREPARSEDDATA = 0x20000005

Global Const $MOUSE_ATTRIBUTES_CHANGED = 0x04
Global Const $MOUSE_MOVE_ABSOLUTE = 0x01
Global Const $MOUSE_MOVE_RELATIVE = 0x00
Global Const $MOUSE_VIRTUAL_DESKTOP = 0x02

Global Const $RI_MOUSE_LEFT_BUTTON_DOWN = 0x0001
Global Const $RI_MOUSE_LEFT_BUTTON_UP = 0x0002
Global Const $RI_MOUSE_MIDDLE_BUTTON_DOWN = 0x0010
Global Const $RI_MOUSE_MIDDLE_BUTTON_UP = 0x0020
Global Const $RI_MOUSE_RIGHT_BUTTON_DOWN = 0x0004
Global Const $RI_MOUSE_RIGHT_BUTTON_UP = 0x0008
Global Const $RI_MOUSE_BUTTON_1_DOWN = $RI_MOUSE_LEFT_BUTTON_DOWN
Global Const $RI_MOUSE_BUTTON_1_UP = $RI_MOUSE_LEFT_BUTTON_UP
Global Const $RI_MOUSE_BUTTON_2_DOWN = $RI_MOUSE_RIGHT_BUTTON_DOWN
Global Const $RI_MOUSE_BUTTON_2_UP = $RI_MOUSE_RIGHT_BUTTON_UP
Global Const $RI_MOUSE_BUTTON_3_DOWN = $RI_MOUSE_MIDDLE_BUTTON_DOWN
Global Const $RI_MOUSE_BUTTON_3_UP = $RI_MOUSE_MIDDLE_BUTTON_UP
Global Const $RI_MOUSE_BUTTON_4_DOWN = 0x0040
Global Const $RI_MOUSE_BUTTON_4_UP = 0x0080
Global Const $RI_MOUSE_BUTTON_5_DOWN = 0x0100
Global Const $RI_MOUSE_BUTTON_5_UP = 0x0200
Global Const $RI_MOUSE_WHEEL = 0x0400

Global Const $RI_KEY_BREAK = 1
Global Const $RI_KEY_E0 = 2
Global Const $RI_KEY_E1 = 4
Global Const $RI_KEY_MAKE = 0

; ===============================================================================================================================
; _WinAPI_*Theme*()
; ===============================================================================================================================

Global Const $TMT_BOOL = 203
Global Const $TMT_COLOR = 204
Global Const $TMT_DIBDATA = 2
Global Const $TMT_DISKSTREAM = 213
Global Const $TMT_ENUM = 200
Global Const $TMT_FILENAME = 206
Global Const $TMT_FONT = 210
Global Const $TMT_GLYPHDIBDATA = 8
Global Const $TMT_HBITMAP = 212
Global Const $TMT_INT = 202
Global Const $TMT_INTLIST = 211
Global Const $TMT_MARGINS = 205
Global Const $TMT_POSITION = 208
Global Const $TMT_RECT = 209
Global Const $TMT_SIZE = 207
Global Const $TMT_STRING = 201

; *Bool
Global Const $TMT_ALWAYSSHOWSIZINGBAR = 2208
Global Const $TMT_AUTOSIZE = 2202
Global Const $TMT_BGFILL = 2205
Global Const $TMT_BORDERONLY = 2203
Global Const $TMT_COMPOSITED = 2204
Global Const $TMT_COMPOSITEDOPAQUE = 2219
Global Const $TMT_DRAWBORDERS = 2214
Global Const $TMT_FLATMENUS = 1001
Global Const $TMT_GLYPHONLY = 2207
Global Const $TMT_GLYPHTRANSPARENT = 2206
Global Const $TMT_INTEGRALSIZING = 2211
Global Const $TMT_LOCALIZEDMIRRORIMAGE = 2220
Global Const $TMT_MIRRORIMAGE = 2209
Global Const $TMT_NOETCHEDEFFECT = 2215
Global Const $TMT_SOURCEGROW = 2212
Global Const $TMT_SOURCESHRINK = 2213
Global Const $TMT_TEXTAPPLYOVERLAY = 2216
Global Const $TMT_TEXTGLOW = 2217
Global Const $TMT_TEXTITALIC = 2218
Global Const $TMT_TRANSPARENT = 2201
Global Const $TMT_UNIFORMSIZING = 2210
Global Const $TMT_USERPICTURE = 5001

; *Color
Global Const $TMT_ACCENTCOLORHINT = 3823
Global Const $TMT_ACTIVEBORDER = 1611
Global Const $TMT_ACTIVECAPTION = 1603
Global Const $TMT_APPWORKSPACE = 1613
Global Const $TMT_BACKGROUND = 1602
Global Const $TMT_BLENDCOLOR = 5003
Global Const $TMT_BODYTEXTCOLOR = 3827
Global Const $TMT_BORDERCOLOR = 3801
Global Const $TMT_BORDERCOLORHINT = 3822
Global Const $TMT_BTNFACE = 1616
Global Const $TMT_BTNHIGHLIGHT = 1621
Global Const $TMT_BTNSHADOW = 1617
Global Const $TMT_BTNTEXT = 1619
Global Const $TMT_BUTTONALTERNATEFACE = 1626
Global Const $TMT_CAPTIONTEXT = 1610
Global Const $TMT_DKSHADOW3D = 1622
Global Const $TMT_EDGEDKSHADOWCOLOR = 3807
Global Const $TMT_EDGEFILLCOLOR = 3808
Global Const $TMT_EDGEHIGHLIGHTCOLOR = 3805
Global Const $TMT_EDGELIGHTCOLOR = 3804
Global Const $TMT_EDGESHADOWCOLOR = 3806
Global Const $TMT_FILLCOLOR = 3802
Global Const $TMT_FILLCOLORHINT = 3821
Global Const $TMT_FROMCOLOR1 = 2001
Global Const $TMT_FROMCOLOR2 = 2002
Global Const $TMT_FROMCOLOR3 = 2003
Global Const $TMT_FROMCOLOR4 = 2004
Global Const $TMT_FROMCOLOR5 = 2005
Global Const $TMT_GLOWCOLOR = 3816
Global Const $TMT_GLYPHTEXTCOLOR = 3819
Global Const $TMT_GLYPHTRANSPARENTCOLOR = 3820
Global Const $TMT_GRADIENTACTIVECAPTION = 1628
Global Const $TMT_GRADIENTCOLOR1 = 3810
Global Const $TMT_GRADIENTCOLOR2 = 3811
Global Const $TMT_GRADIENTCOLOR3 = 3812
Global Const $TMT_GRADIENTCOLOR4 = 3813
Global Const $TMT_GRADIENTCOLOR5 = 3814
Global Const $TMT_GRADIENTINACTIVECAPTION = 1629
Global Const $TMT_GRAYTEXT = 1618
Global Const $TMT_HEADING1TEXTCOLOR = 3825
Global Const $TMT_HEADING2TEXTCOLOR = 3826
Global Const $TMT_HIGHLIGHT = 1614
Global Const $TMT_HIGHLIGHTTEXT = 1615
Global Const $TMT_HOTTRACKING = 1627
Global Const $TMT_INACTIVEBORDER = 1612
Global Const $TMT_INACTIVECAPTION = 1604
Global Const $TMT_INACTIVECAPTIONTEXT = 1620
Global Const $TMT_INFOBK = 1625
Global Const $TMT_INFOTEXT = 1624
Global Const $TMT_LIGHT3D = 1623
Global Const $TMT_MENU = 1605
Global Const $TMT_MENUBAR = 1631
Global Const $TMT_MENUHILIGHT = 1630
Global Const $TMT_MENUTEXT = 1608
Global Const $TMT_SCROLLBAR = 1601
Global Const $TMT_SHADOWCOLOR = 3815
Global Const $TMT_TEXTBORDERCOLOR = 3817
Global Const $TMT_TEXTCOLOR = 3803
Global Const $TMT_TEXTCOLORHINT = 3824
Global Const $TMT_TEXTSHADOWCOLOR = 3818
Global Const $TMT_TRANSPARENTCOLOR = 3809
Global Const $TMT_WINDOW = 1606
Global Const $TMT_WINDOWFRAME = 1607
Global Const $TMT_WINDOWTEXT = 1609

; *Stream
Global Const $TMT_ATLASIMAGE = 8000

; *Enum
Global Const $TMT_BGTYPE = 4001
Global Const $TMT_BORDERTYPE = 4002
Global Const $TMT_CONTENTALIGNMENT = 4006
Global Const $TMT_FILLTYPE = 4003
Global Const $TMT_GLYPHTYPE = 4012
Global Const $TMT_GLYPHFONTSIZINGTYPE = 4014
Global Const $TMT_HALIGN = 4005
Global Const $TMT_ICONEFFECT = 4009
Global Const $TMT_IMAGELAYOUT = 4011
Global Const $TMT_IMAGESELECTTYPE = 4013
Global Const $TMT_OFFSETTYPE = 4008
Global Const $TMT_SIZINGTYPE = 4004
Global Const $TMT_TEXTSHADOWTYPE = 4010
Global Const $TMT_TRUESIZESCALINGTYPE = 4015
Global Const $TMT_VALIGN = 4007

; *Filename
Global Const $TMT_GLYPHIMAGEFILE = 3008
Global Const $TMT_IMAGEFILE = 3001
Global Const $TMT_IMAGEFILE1 = 3002
Global Const $TMT_IMAGEFILE2 = 3003
Global Const $TMT_IMAGEFILE3 = 3004
Global Const $TMT_IMAGEFILE4 = 3005
Global Const $TMT_IMAGEFILE5 = 3006
Global Const $TMT_SCALEDBACKGROUND = 7001

; *Font
Global Const $TMT_BODYFONT = 809
Global Const $TMT_CAPTIONFONT = 801
Global Const $TMT_GLYPHFONT = 2601
Global Const $TMT_HEADING1FONT = 807
Global Const $TMT_HEADING2FONT = 808
Global Const $TMT_ICONTITLEFONT = 806
Global Const $TMT_MENUFONT = 803
Global Const $TMT_MSGBOXFONT = 805
Global Const $TMT_SMALLCAPTIONFONT = 802
Global Const $TMT_STATUSFONT = 804

; *Int
Global Const $TMT_ALPHALEVEL = 2402
Global Const $TMT_ALPHATHRESHOLD = 2415
Global Const $TMT_ANIMATIONDELAY = 2428
Global Const $TMT_ANIMATIONDURATION = 5006
Global Const $TMT_BORDERSIZE = 2403
Global Const $TMT_CHARSET = 403
Global Const $TMT_COLORIZATIONCOLOR = 2431
Global Const $TMT_COLORIZATIONOPACITY = 2432
Global Const $TMT_FRAMESPERSECOND = 2426
Global Const $TMT_FROMHUE1 = 1801
Global Const $TMT_FROMHUE2 = 1802
Global Const $TMT_FROMHUE3 = 1803
Global Const $TMT_FROMHUE4 = 1804
Global Const $TMT_FROMHUE5 = 1805
Global Const $TMT_GLOWINTENSITY = 2429
Global Const $TMT_GLYPHINDEX = 2418
Global Const $TMT_GRADIENTRATIO1 = 2406
Global Const $TMT_GRADIENTRATIO2 = 2407
Global Const $TMT_GRADIENTRATIO3 = 2408
Global Const $TMT_GRADIENTRATIO4 = 2409
Global Const $TMT_GRADIENTRATIO5 = 2410
Global Const $TMT_HEIGHT = 2417
Global Const $TMT_IMAGECOUNT = 2401
Global Const $TMT_MINCOLORDEPTH = 1301
Global Const $TMT_MINDPI1 = 2420
Global Const $TMT_MINDPI2 = 2421
Global Const $TMT_MINDPI3 = 2422
Global Const $TMT_MINDPI4 = 2423
Global Const $TMT_MINDPI5 = 2424
Global Const $TMT_OPACITY = 2430
Global Const $TMT_PIXELSPERFRAME = 2427
Global Const $TMT_PROGRESSCHUNKSIZE = 2411
Global Const $TMT_PROGRESSSPACESIZE = 2412
Global Const $TMT_ROUNDCORNERHEIGHT = 2405
Global Const $TMT_ROUNDCORNERWIDTH = 2404
Global Const $TMT_SATURATION = 2413
Global Const $TMT_TEXTBORDERSIZE = 2414
Global Const $TMT_TEXTGLOWSIZE = 2425
Global Const $TMT_TOCOLOR1 = 2006
Global Const $TMT_TOCOLOR2 = 2007
Global Const $TMT_TOCOLOR3 = 2008
Global Const $TMT_TOCOLOR4 = 2009
Global Const $TMT_TOCOLOR5 = 2010
Global Const $TMT_TOHUE1 = 1806
Global Const $TMT_TOHUE2 = 1807
Global Const $TMT_TOHUE3 = 1808
Global Const $TMT_TOHUE4 = 1809
Global Const $TMT_TOHUE5 = 1810
Global Const $TMT_TRUESIZESTRETCHMARK = 2419
Global Const $TMT_WIDTH = 2416

; *IntList
Global Const $TMT_TRANSITIONDURATIONS = 6000

; *Margins
Global Const $TMT_CAPTIONMARGINS = 3603
Global Const $TMT_CONTENTMARGINS = 3602
Global Const $TMT_SIZINGMARGINS = 3601

; *Position
Global Const $TMT_MINSIZE = 3403
Global Const $TMT_MINSIZE1 = 3404
Global Const $TMT_MINSIZE2 = 3405
Global Const $TMT_MINSIZE3 = 3406
Global Const $TMT_MINSIZE4 = 3407
Global Const $TMT_MINSIZE5 = 3408
Global Const $TMT_NORMALSIZE = 3409
Global Const $TMT_OFFSET = 3401
Global Const $TMT_TEXTSHADOWOFFSET = 3402

; *Rect
Global Const $TMT_ANIMATIONBUTTONRECT = 5005
Global Const $TMT_ATLASRECT = 8002
Global Const $TMT_CUSTOMSPLITRECT = 5004
Global Const $TMT_DEFAULTPANESIZE = 5002

; *Size
Global Const $TMT_CAPTIONBARHEIGHT = 1205
Global Const $TMT_CAPTIONBARWIDTH = 1204
Global Const $TMT_MENUBARHEIGHT = 1209
Global Const $TMT_MENUBARWIDTH = 1208
Global Const $TMT_PADDEDBORDERWIDTH = 1210
Global Const $TMT_SCROLLBARHEIGHT = 1203
Global Const $TMT_SCROLLBARWIDTH = 1202
Global Const $TMT_SIZINGBORDERWIDTH = 1201
Global Const $TMT_SMCAPTIONBARHEIGHT = 1207
Global Const $TMT_SMCAPTIONBARWIDTH = 1206

; *String
Global Const $TMT_ALIAS = 1404
Global Const $TMT_ATLASINPUTIMAGE = 8001
Global Const $TMT_AUTHOR = 604
Global Const $TMT_CLASSICVALUE = 3202
Global Const $TMT_COLORSCHEMES = 401
Global Const $TMT_COMPANY = 603
Global Const $TMT_COPYRIGHT = 605
Global Const $TMT_CSSNAME = 1401
Global Const $TMT_DESCRIPTION = 608
Global Const $TMT_DISPLAYNAME = 601
Global Const $TMT_LASTUPDATED = 1403
Global Const $TMT_SIZES = 402
Global Const $TMT_TEXT = 3201
Global Const $TMT_TOOLTIP = 602
Global Const $TMT_URL = 606
Global Const $TMT_VERSION = 607
Global Const $TMT_XMLNAME = 1402
Global Const $TMT_NAME = 600

#EndRegion Global Variables and Constants
