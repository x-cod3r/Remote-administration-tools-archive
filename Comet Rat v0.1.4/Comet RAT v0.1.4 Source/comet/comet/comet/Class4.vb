Class FiczZzZzZz
    Inherits ListView

    Public Event FiczZzZzZzFiczZzZzZz As EventHandler
    Public Event ItemRemoved As EventHandler
    Protected Overrides Sub WndProc(ByRef m As Message)
        On Error Resume Next
        MyBase.WndProc(m)

        Select Case m.Msg
            Case &H104D
                RaiseEvent FiczZzZzZzFiczZzZzZz(Me, EventArgs.Empty)
            Case &H1008
                RaiseEvent ItemRemoved(Me, EventArgs.Empty)
        End Select
    End Sub
End Class
