Public Class tople1
    Inherits ProgressBar
    Protected Overloads Overrides ReadOnly Property CreateParams() As CreateParams
        Get

            Dim cp As CreateParams = MyBase.CreateParams
            cp.Style = cp.Style Or &H4
            Return cp
        End Get
    End Property
End Class