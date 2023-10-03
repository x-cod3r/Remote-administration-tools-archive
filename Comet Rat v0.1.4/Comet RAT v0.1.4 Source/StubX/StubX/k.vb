Imports System.Net
Imports System.Net.Sockets
Public Class k
    Private comet As TcpClient
    Public Event Connected()
    Public Event Disconnected()
    Public Event Data(ByVal b As Byte())
    Private IsBuzy As Boolean = False
    Public Function Statconnected() As Boolean
        Try
            If comet.Client.Connected = True Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
        End Try
    End Function
    Sub Connect(ByVal h As String, ByVal p As Integer)
        Try
            Try
                If comet IsNot Nothing Then
                    comet.Close()
                    comet = Nothing
                End If
            Catch ex As Exception
            End Try
            Do Until IsBuzy = False
                Threading.Thread.Sleep(1)
            Loop
            Try
                comet = New TcpClient
                comet.Connect(h, p)
                Dim t As New Threading.Thread(AddressOf RC, 10)
                t.Start()
                RaiseEvent Connected()
            Catch ex As Exception
            End Try
        Catch ex As Exception
            RaiseEvent Disconnected()
        End Try
    End Sub
    Private SPL As String = "Comet 0.1.3.0" ' المفتاح
    Sub DisConnect()
        Try
            comet.Close()
        Catch ex As Exception
        End Try
        comet = Nothing
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
            comet.Client.Send(m.ToArray, 0, m.Length, SocketFlags.None)
        Catch ex As Exception
            DisConnect()
        End Try
    End Sub
    Private Sub RC()
        IsBuzy = True
        Dim M As New IO.MemoryStream
        Dim cc As Integer = 0
re:
        Threading.Thread.Sleep(1)

        Try
            If comet Is Nothing Then
                GoTo co
            Else
                If comet.Client.Connected = False Then
                    GoTo co
                Else
                    cc += 1
                    If cc > 100 Then
                        cc = 0
                        Try
                            If comet.Client.Poll(-1, Net.Sockets.SelectMode.SelectRead) And comet.Client.Available <= 0 Then
                                GoTo co
                            End If
                        Catch ex As Exception
                            GoTo co
                        End Try
                    End If

                End If
            End If
            If comet.Available > 0 Then
                Dim B(comet.Available - 1) As Byte
                comet.Client.Receive(B, 0, B.Length, Net.Sockets.SocketFlags.None)
                M.Write(B, 0, B.Length)
rr:
                If BS(M.ToArray).Contains(SPL) Then
                    Dim A As Array = fx(M.ToArray, SPL)
                    RaiseEvent Data(A(0))
                    M.Dispose()
                    M = New IO.MemoryStream
                    If A.Length = 2 Then
                        M.Write(A(1), 0, A(1).length)
                        Threading.Thread.Sleep(1)
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
