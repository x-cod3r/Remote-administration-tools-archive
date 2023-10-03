Imports Microsoft.Win32

Public Class Form37
    Public Path As String
    Public xxx As Integer

   
    Public Function Typ(ByVal t As String) As Integer
        Dim num As Integer
        Dim str As String = t.ToLower
        If (str = RegistryValueKind.Binary.ToString.ToLower) Then
            Return 3
        End If
        If (str = RegistryValueKind.DWord.ToString.ToLower) Then
            Return 4
        End If
        If (str = RegistryValueKind.ExpandString.ToString.ToLower) Then
            Return 2
        End If
        If (str = RegistryValueKind.MultiString.ToString.ToLower) Then
            Return 7
        End If
        If (str = RegistryValueKind.QWord.ToString.ToLower) Then
            Return 11
        End If
        If (str = RegistryValueKind.String.ToString.ToLower) Then
            Return 1
        End If
        Return num
    End Function

    Private Sub Rgv_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub AvButton1_Click(sender As Object, e As EventArgs) Handles AvButton1.Click
        Form1.S.Send(xxx, "RG" & "|U|" & "!" & "|U|" & Path & "|U|" & TextBox1.Text & "|U|" & TextBox3.Text & "|U|" & Typ(Me.ComboBox1.Text))
        Me.Close()
    End Sub
End Class