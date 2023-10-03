Imports System.Runtime.InteropServices
Imports System.ComponentModel
Public Class Form16

    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Public xxx As Integer
    Public f As Form1

    Public WithEvents bw As BackgroundWorker = New BackgroundWorker
    Dim state As Integer
    Dim time As Integer
    Private Sub Form16_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ContextMenuStrip1.Renderer = New clsVistaToolStripRenderer
        Panel1.Hide()
        Me.Opacity = 0.8R
        TextBox3.Hide()


        Timer2.Enabled = True
        HuraAlertBox1.Show()
        TextBox1.Hide()
        TextBox2.Hide()



        SetWindowTheme(ListView1.Handle, "explorer", Nothing)


        If state = 1 Then

            Timer1.Interval = time
            Timer1.Start()
        Else

            Timer1.Stop()
        End If

        Form1.S.Send(xxx, "xxx")
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        ListView1.Items.Clear()
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()

        End If


        On Error Resume Next

    End Sub


    Private Sub EwfwesdToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles EwfwesdToolStripMenuItem.Click

        Dim sr$ = ListView1.FocusedItem.Index
        Form1.S.Send(xxx, "lDL" & Form1.Yy & sr)
    End Sub

    Private Sub RToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RToolStripMenuItem.Click
        HuraAlertBox1.Show()
        Me.Opacity = 0.8R
        TextBox2.Text = 1
        Timer2.Enabled = True
        ListView1.Items.Clear()

        Form1.S.Send(xxx, "xxx")
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        TextBox2.Text += 1
        If TextBox2.Text = 5 Then


            HuraAlertBox1.Hide()
            Me.Opacity = 9.9R
            TextBox2.Text = 1
            Timer2.Enabled = False
        End If
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        Dim C As String
        C = ListView1.Items.Count.ToString
        ToolStripStatusLabel1.Text = "Installed(" & C & ")"
        TextBox3.Text = C
    End Sub


    Private Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        TextBox2.Text = 1
    End Sub

    Private Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged

    End Sub

    Private Sub HuraAlertBox1_Click(sender As Object, e As EventArgs) Handles HuraAlertBox1.Click

    End Sub
End Class