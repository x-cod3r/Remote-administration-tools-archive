Imports System.Runtime.InteropServices

Public Class Form34
    Public xxx As Integer






    Private Sub Form34_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        On Error Resume Next
        ContextMenuStrip1.Renderer = New clsVistaToolStripRenderer
        Dim xtt$ = RichTextBox1.Text
        ToolStripStatusLabel2.Text = " / The Number Of Characters[ 0 ]".Replace("0", xtt.Length)
        ToolStripStatusLabel1.Text = "Line:[ " & RichTextBox1.Lines.Length & " ]"
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        On Error Resume Next
        Dim xtt$ = RichTextBox1.Text
        ToolStripStatusLabel2.Text = " / The Number Of Characters[ 0 ]".Replace("0", xtt.Length)
        ToolStripStatusLabel1.Text = "Line:[ " & RichTextBox1.Lines.Length & " ]"
    End Sub

    Private Sub CopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyToolStripMenuItem.Click
        RichTextBox1.Copy()
    End Sub

    Private Sub SaveToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SaveToolStripMenuItem.Click
        Dim oi As New SaveFileDialog
        oi.Filter = "rtf|*.rtf"
        If oi.ShowDialog = Windows.Forms.DialogResult.OK Then

            My.Computer.FileSystem.WriteAllText(oi.FileName, RichTextBox1.Text, False)

            MsgBox("OK")
        End If
    End Sub

    Private Sub RichTextBox1_LinkClicked(sender As Object, e As LinkClickedEventArgs) Handles RichTextBox1.LinkClicked
        On Error Resume Next
        Process.Start(e.LinkText)
    End Sub

    Private Sub RichTextBox1_TextChanged(sender As Object, e As EventArgs) Handles RichTextBox1.TextChanged

    End Sub
End Class