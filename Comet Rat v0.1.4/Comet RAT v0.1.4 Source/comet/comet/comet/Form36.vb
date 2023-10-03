Imports System.Text.RegularExpressions

Public Class Form36
    Public xxx As Integer
    Dim cmd$ = 0
    Private Sub RemoteShell_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles TextBox2.KeyDown, MyBase.KeyDown
        If e.KeyCode = Keys.Enter Then
            'RichTextBox1.Clear()
            'RichTextBox1.SelectedText += "        )" & vbNewLine
            TextBox2.AutoCompleteCustomSource.Add(TextBox2.Text)
            Form1.S.Send(xxx, "rs" & "|U|" & ENB(TextBox2.Text))
            TextBox2.Clear()

            'RichTextBox1.SelectedText += "    (" & vbNewLine
        End If
    End Sub


    Private Sub RemoteShell_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
        On Error Resume Next
        Form1.S.Send(xxx, "rs" & "|U|" & ENB("exit"))
        TextBox2.Clear()
        Form1.S.Send(xxx, "rsc" & "|U|")
    End Sub



    'Sub ColoringSizing(ByVal RTB As RichTextBox, ByVal Word As String, ByVal Size As Integer, ByVal Color As Color)
    '    On Error Resume Next
    '    Dim SS As Integer = RTB.SelectionStart
    '    RTB.SelectAll()
    '    RTB.SelectionColor = RTB.ForeColor
    '    RTB.SelectionFont = RTB.Font
    '    For Each M As Match In Regex.Matches(RTB.Text, "(" & Word & ")", RegexOptions.IgnoreCase)
    '        RTB.SelectionStart = M.Index
    '        RTB.SelectionLength = M.Length
    '        RTB.SelectionColor = Color
    '        RTB.SelectionFont = New Font(RTB.Font.FontFamily, Size, RTB.Font.Style)
    '    Next
    '    RTB.SelectionStart = SS


    'End Sub

    Private Sub RichTextBox1_TextChanged_1(sender As Object, e As EventArgs) Handles RichTextBox1.TextChanged
        RichTextBox1.ScrollToCaret()



        'ColoringSizing(RichTextBox1, "1|2|3|4|5|6|7|8|9|0", "10", Color.Blue)


        'On Error Resume Next
        'Dim era78 As Integer = RichTextBox1.Find(":", 1, RichTextBoxFinds.None)
        'Do While era78 > -0
        '    RichTextBox1.Select(era78, ":".Length)
        '    RichTextBox1.SelectionColor = Color.DeepPink
        '    era78 = RichTextBox1.Find(":", era78 + ":".Length, RichTextBoxFinds.None)
        '    Application.DoEvents()
        '    RichTextBox1.HideSelection = True
        '    'RichTextBox1.Enabled = True
        'Loop
        'Dim R$="C:\"
        Dim Words As MatchCollection = System.Text.RegularExpressions.Regex.Matches(RichTextBox1.Text, "(?<=>).+")
        For i = 0 To Words.Count - 1
            RichTextBox1.Select(Words(i).Index, Words(i).Length)
            RichTextBox1.SelectionColor = Color.ForestGreen
            RichTextBox1.SelectionFont = New System.Drawing.Font("Courier New", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))


        Next
        'On Error Resume Next
        'Dim era7 As Integer = RichTextBox1.Find(".", 1, RichTextBoxFinds.None)
        'Do While era7 > -0
        '    RichTextBox1.Select(era7, ".".Length)
        '    RichTextBox1.SelectionColor = Color.DeepPink
        '    era7 = RichTextBox1.Find(".", era7 + ".".Length, RichTextBoxFinds.None)
        '    Application.DoEvents()
        '    RichTextBox1.HideSelection = True
        '    'RichTextBox1.Enabled = True
        'Loop


        'On Error Resume Next
        'Dim era7s As Integer = RichTextBox1.Find("TCP", 1, RichTextBoxFinds.None)
        'Do While era7s > -0
        '    RichTextBox1.SelectionFont = New System.Drawing.Font("Courier New", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))

        '    RichTextBox1.Select(era7s, "TCP".Length)
        '    RichTextBox1.SelectionColor = Color.RoyalBlue
        '    era7s = RichTextBox1.Find("TCP", era7s + "TCP".Length, RichTextBoxFinds.None)
        '    Application.DoEvents()
        '    RichTextBox1.HideSelection = True

        'Loop

        'If cmd = 0 Then

        '    Timer1.Enabled = True
        'Else
        '    Timer1.Enabled = False
        '    'RichTextBox1.Text = "Microsoft Windows [Version 6.1.7601]" & vbNewLine & vbNewLine + "C:\Users\\<"
        'End If


        'cmd = 1

    End Sub

 



    Private Sub CopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyToolStripMenuItem.Click
        RichTextBox1.Copy()
    End Sub

    Private Sub SeveToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SeveToolStripMenuItem.Click
        Dim oi As New SaveFileDialog
        oi.Filter = "rtf|*.rtf"
        If oi.ShowDialog = Windows.Forms.DialogResult.OK Then

            My.Computer.FileSystem.WriteAllText(oi.FileName, RichTextBox1.Text, False)

            MsgBox("OK")
        End If
    End Sub


    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

    End Sub

    Private Sub Form36_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ContextMenuStrip1.Renderer = New clsVistaToolStripRenderer
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        'Timer1.Interval += 1
        RichTextBox1.Text = ""
        'If cmd = 0 Then


        '    'RichTextBox1.Text = "Microsoft Windows [Version 6.1.7601]" & vbNewLine & vbNewLine + "C:\Users\\<"
        'End If
        'If Timer1.Interval = 5000 Then
        '    Timer1.Enabled = False
        'End If

        'cmd = 1
        If RichTextBox1.Text = "" Then
            Timer1.Enabled = False
            RichTextBox1.Text = "Microsoft Windows [Version 6.1.7601]" & vbNewLine + "Copyright (c) 2009 Microsoft Corporation.  All rights reserved." & vbNewLine + vbNewLine + Text & vbNewLine
            RichTextBox1.ForeColor = Color.White
            'Form1.S.Send(xxx, "rs" & "|U|" & ENB("Cmd"))
        End If
    End Sub
End Class