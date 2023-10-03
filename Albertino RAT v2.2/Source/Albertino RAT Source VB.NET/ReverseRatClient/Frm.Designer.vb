Imports Microsoft.VisualBasic
Imports System
Partial Public Class Frm
    ''' <summary>
    ''' Required designer variable.
    ''' </summary>
    Private components As System.ComponentModel.IContainer = Nothing

    ''' <summary>
    ''' Clean up any resources being used.
    ''' </summary>
    ''' <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso (components IsNot Nothing) Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

#Region "Windows Form Designer generated code"

    ''' <summary>
    ''' Required method for Designer support - do not modify
    ''' the contents of this method with the code editor.
    ''' </summary>
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim TreeNode1 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("System Info", 0, 20)
        Dim TreeNode2 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Last 25 visits", 8, 20)
        Dim TreeNode3 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("PC Info", 0, 20, New System.Windows.Forms.TreeNode() {TreeNode1, TreeNode2})
        Dim TreeNode4 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Messages", 2, 20)
        Dim TreeNode5 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Funny Stuff", 17, 20)
        Dim TreeNode6 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("IExplorer", 14, 20)
        Dim TreeNode7 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Restart", 16, 20)
        Dim TreeNode8 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Turn Off", 19, 20)
        Dim TreeNode9 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Log Off", 13, 20)
        Dim TreeNode10 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Shutdown PC", 19, 20, New System.Windows.Forms.TreeNode() {TreeNode7, TreeNode8, TreeNode9})
        Dim TreeNode11 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Clipboard", 3, 20)
        Dim TreeNode12 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Remote Download", 4, 20)
        Dim TreeNode13 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Printer", 15, 20)
        Dim TreeNode14 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("File Manager", 5, 20)
        Dim TreeNode15 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Search File", 22, 20)
        Dim TreeNode16 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("KeyLogger", 1, 20)
        Dim TreeNode17 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Passwords", 25, 20)
        Dim TreeNode18 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Processes", 10, 20)
        Dim TreeNode19 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Services", 11, 20)
        Dim TreeNode20 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Open Windows", 9, 20)
        Dim TreeNode21 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("ScreenShots", 12, 20)
        Dim TreeNode22 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Web Camera", 23, 20)
        Dim TreeNode23 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Registry Viewer", 21, 20)
        Dim TreeNode24 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Send To All", 24, 20)
        Dim TreeNode25 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("cmd", 18, 20)
        Dim TreeNode26 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Server/Client", 6, 20)
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Frm))
        Me.textBox1 = New System.Windows.Forms.TextBox
        Me.textBox2 = New System.Windows.Forms.TextBox
        Me.statusStrip1 = New System.Windows.Forms.StatusStrip
        Me.toolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel
        Me.ToolStripStatusLabel2 = New System.Windows.Forms.ToolStripStatusLabel
        Me.TreeView1 = New System.Windows.Forms.TreeView
        Me.Images = New System.Windows.Forms.ImageList(Me.components)
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip
        Me.FileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ExitToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem
        Me.HelpToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.InfoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.AboutToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.GroupStuff = New System.Windows.Forms.GroupBox
        Me.Button7 = New System.Windows.Forms.Button
        Me.Button8 = New System.Windows.Forms.Button
        Me.Button23 = New System.Windows.Forms.Button
        Me.Button24 = New System.Windows.Forms.Button
        Me.Button25 = New System.Windows.Forms.Button
        Me.Button26 = New System.Windows.Forms.Button
        Me.Button27 = New System.Windows.Forms.Button
        Me.Button28 = New System.Windows.Forms.Button
        Me.Button13 = New System.Windows.Forms.Button
        Me.Button19 = New System.Windows.Forms.Button
        Me.Button20 = New System.Windows.Forms.Button
        Me.Button21 = New System.Windows.Forms.Button
        Me.Button22 = New System.Windows.Forms.Button
        Me.Button12 = New System.Windows.Forms.Button
        Me.Button6 = New System.Windows.Forms.Button
        Me.Button5 = New System.Windows.Forms.Button
        Me.Button4 = New System.Windows.Forms.Button
        Me.Button3 = New System.Windows.Forms.Button
        Me.GroupIE = New System.Windows.Forms.GroupBox
        Me.TextBox9 = New System.Windows.Forms.TextBox
        Me.TextBox8 = New System.Windows.Forms.TextBox
        Me.TextBox7 = New System.Windows.Forms.TextBox
        Me.TextBox6 = New System.Windows.Forms.TextBox
        Me.TextBox5 = New System.Windows.Forms.TextBox
        Me.Label7 = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.Button30 = New System.Windows.Forms.Button
        Me.Button31 = New System.Windows.Forms.Button
        Me.Button32 = New System.Windows.Forms.Button
        Me.Button33 = New System.Windows.Forms.Button
        Me.Button34 = New System.Windows.Forms.Button
        Me.GroupClip = New System.Windows.Forms.GroupBox
        Me.Button36 = New System.Windows.Forms.Button
        Me.Button35 = New System.Windows.Forms.Button
        Me.Button29 = New System.Windows.Forms.Button
        Me.TextBox10 = New System.Windows.Forms.TextBox
        Me.GroupService = New System.Windows.Forms.GroupBox
        Me.Button9 = New System.Windows.Forms.Button
        Me.ListView3 = New System.Windows.Forms.ListView
        Me.ColumnHeader9 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader10 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader11 = New System.Windows.Forms.ColumnHeader
        Me.Button56 = New System.Windows.Forms.Button
        Me.Button57 = New System.Windows.Forms.Button
        Me.Button58 = New System.Windows.Forms.Button
        Me.Button59 = New System.Windows.Forms.Button
        Me.Button60 = New System.Windows.Forms.Button
        Me.GroupDaR = New System.Windows.Forms.GroupBox
        Me.RadioButton8 = New System.Windows.Forms.RadioButton
        Me.RadioButton7 = New System.Windows.Forms.RadioButton
        Me.Button43 = New System.Windows.Forms.Button
        Me.TextBox11 = New System.Windows.Forms.TextBox
        Me.GroupText = New System.Windows.Forms.GroupBox
        Me.TextBox15 = New System.Windows.Forms.TextBox
        Me.GroupPrint = New System.Windows.Forms.GroupBox
        Me.Label11 = New System.Windows.Forms.Label
        Me.ComboBox2 = New System.Windows.Forms.ComboBox
        Me.Button49 = New System.Windows.Forms.Button
        Me.TextBox12 = New System.Windows.Forms.TextBox
        Me.GroupServer = New System.Windows.Forms.GroupBox
        Me.Button88 = New System.Windows.Forms.Button
        Me.Label23 = New System.Windows.Forms.Label
        Me.TextBox26 = New System.Windows.Forms.TextBox
        Me.CheckBox3 = New System.Windows.Forms.CheckBox
        Me.Label20 = New System.Windows.Forms.Label
        Me.TextBox21 = New System.Windows.Forms.TextBox
        Me.Label17 = New System.Windows.Forms.Label
        Me.TextBox19 = New System.Windows.Forms.TextBox
        Me.Label15 = New System.Windows.Forms.Label
        Me.Label14 = New System.Windows.Forms.Label
        Me.Button82 = New System.Windows.Forms.Button
        Me.ProgressBar2 = New System.Windows.Forms.ProgressBar
        Me.Button18 = New System.Windows.Forms.Button
        Me.Button17 = New System.Windows.Forms.Button
        Me.Label13 = New System.Windows.Forms.Label
        Me.Label12 = New System.Windows.Forms.Label
        Me.TextBox17 = New System.Windows.Forms.TextBox
        Me.TextBox14 = New System.Windows.Forms.TextBox
        Me.GroupProcess = New System.Windows.Forms.GroupBox
        Me.ListView2 = New System.Windows.Forms.ListView
        Me.ColumnHeader5 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader6 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader7 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader8 = New System.Windows.Forms.ColumnHeader
        Me.Button48 = New System.Windows.Forms.Button
        Me.Button50 = New System.Windows.Forms.Button
        Me.GroupWindows = New System.Windows.Forms.GroupBox
        Me.Button11 = New System.Windows.Forms.Button
        Me.Button10 = New System.Windows.Forms.Button
        Me.Button54 = New System.Windows.Forms.Button
        Me.Button53 = New System.Windows.Forms.Button
        Me.Button52 = New System.Windows.Forms.Button
        Me.List3 = New System.Windows.Forms.ListBox
        Me.Button39 = New System.Windows.Forms.Button
        Me.Button46 = New System.Windows.Forms.Button
        Me.Button51 = New System.Windows.Forms.Button
        Me.GroupCMD = New System.Windows.Forms.GroupBox
        Me.Button78 = New System.Windows.Forms.Button
        Me.GroupFM = New System.Windows.Forms.GroupBox
        Me.Button70 = New System.Windows.Forms.Button
        Me.ListView4 = New System.Windows.Forms.ListView
        Me.ColumnHeader13 = New System.Windows.Forms.ColumnHeader
        Me.Images2 = New System.Windows.Forms.ImageList(Me.components)
        Me.CheckBox1 = New System.Windows.Forms.CheckBox
        Me.TextBox16 = New System.Windows.Forms.TextBox
        Me.Label10 = New System.Windows.Forms.Label
        Me.Label9 = New System.Windows.Forms.Label
        Me.ProgressBar1 = New System.Windows.Forms.ProgressBar
        Me.ComboBox1 = New System.Windows.Forms.ComboBox
        Me.Button69 = New System.Windows.Forms.Button
        Me.Button68 = New System.Windows.Forms.Button
        Me.Button67 = New System.Windows.Forms.Button
        Me.Button66 = New System.Windows.Forms.Button
        Me.Button65 = New System.Windows.Forms.Button
        Me.Button41 = New System.Windows.Forms.Button
        Me.Button42 = New System.Windows.Forms.Button
        Me.Button44 = New System.Windows.Forms.Button
        Me.Button45 = New System.Windows.Forms.Button
        Me.Button64 = New System.Windows.Forms.Button
        Me.GroupKL = New System.Windows.Forms.GroupBox
        Me.Button73 = New System.Windows.Forms.Button
        Me.Button47 = New System.Windows.Forms.Button
        Me.Button38 = New System.Windows.Forms.Button
        Me.Button37 = New System.Windows.Forms.Button
        Me.Button75 = New System.Windows.Forms.Button
        Me.TextBox13 = New System.Windows.Forms.TextBox
        Me.GroupScreen = New System.Windows.Forms.GroupBox
        Me.TextBox29 = New System.Windows.Forms.TextBox
        Me.ComboBox5 = New System.Windows.Forms.ComboBox
        Me.NumericUpDown1 = New System.Windows.Forms.NumericUpDown
        Me.TrackBar1 = New System.Windows.Forms.TrackBar
        Me.Label18 = New System.Windows.Forms.Label
        Me.Button83 = New System.Windows.Forms.Button
        Me.SSCM = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.TakeScreenShotToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.StartSequenceToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.MouseControlToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.SaveToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.FullScreenToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.PictureBox2 = New System.Windows.Forms.PictureBox
        Me.ListView1 = New System.Windows.Forms.ListView
        Me.ColumnHeader1 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader2 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader3 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader4 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader12 = New System.Windows.Forms.ColumnHeader
        Me.IPtoGeo = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.FindCountryToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.OpenFile = New System.Windows.Forms.OpenFileDialog
        Me.GroupMSG = New System.Windows.Forms.GroupBox
        Me.Label8 = New System.Windows.Forms.Label
        Me.Button63 = New System.Windows.Forms.Button
        Me.Button62 = New System.Windows.Forms.Button
        Me.Button61 = New System.Windows.Forms.Button
        Me.Button55 = New System.Windows.Forms.Button
        Me.TextBox4 = New System.Windows.Forms.TextBox
        Me.TextBox3 = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.GroupMSGBuilt = New System.Windows.Forms.GroupBox
        Me.RadioButton6 = New System.Windows.Forms.RadioButton
        Me.RadioButton5 = New System.Windows.Forms.RadioButton
        Me.RadioButton4 = New System.Windows.Forms.RadioButton
        Me.RadioButton3 = New System.Windows.Forms.RadioButton
        Me.RadioButton2 = New System.Windows.Forms.RadioButton
        Me.RadioButton1 = New System.Windows.Forms.RadioButton
        Me.Button2 = New System.Windows.Forms.Button
        Me.Button1 = New System.Windows.Forms.Button
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.OpenToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ExitToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.Button14 = New System.Windows.Forms.Button
        Me.Button15 = New System.Windows.Forms.Button
        Me.Button79 = New System.Windows.Forms.Button
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.Button81 = New System.Windows.Forms.Button
        Me.Button87 = New System.Windows.Forms.Button
        Me.Notify = New System.Windows.Forms.NotifyIcon(Me.components)
        Me.CheckBox2 = New System.Windows.Forms.CheckBox
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Button40 = New System.Windows.Forms.Button
        Me.Label16 = New System.Windows.Forms.Label
        Me.TextBox18 = New System.Windows.Forms.TextBox
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.TreeView2 = New System.Windows.Forms.TreeView
        Me.imageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.ProgressBar4 = New System.Windows.Forms.ProgressBar
        Me.Label21 = New System.Windows.Forms.Label
        Me.Label19 = New System.Windows.Forms.Label
        Me.Button76 = New System.Windows.Forms.Button
        Me.TextBox20 = New System.Windows.Forms.TextBox
        Me.Button16 = New System.Windows.Forms.Button
        Me.ListView5 = New System.Windows.Forms.ListView
        Me.ColumnHeader14 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader16 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader15 = New System.Windows.Forms.ColumnHeader
        Me.ProgressBar3 = New System.Windows.Forms.ProgressBar
        Me.ComboBox3 = New System.Windows.Forms.ComboBox
        Me.Button86 = New System.Windows.Forms.Button
        Me.GroupBox3 = New System.Windows.Forms.GroupBox
        Me.ComboBox4 = New System.Windows.Forms.ComboBox
        Me.PictureBox3 = New System.Windows.Forms.PictureBox
        Me.WCCM = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.ToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolStripMenuItem2 = New System.Windows.Forms.ToolStripMenuItem
        Me.CloseWebCamConnectionToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolStripMenuItem5 = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolStripMenuItem4 = New System.Windows.Forms.ToolStripMenuItem
        Me.DisconnectToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.GroupBox4 = New System.Windows.Forms.GroupBox
        Me.GroupBox7 = New System.Windows.Forms.GroupBox
        Me.Label24 = New System.Windows.Forms.Label
        Me.Button84 = New System.Windows.Forms.Button
        Me.Button77 = New System.Windows.Forms.Button
        Me.TextBox25 = New System.Windows.Forms.TextBox
        Me.GroupBox6 = New System.Windows.Forms.GroupBox
        Me.Label25 = New System.Windows.Forms.Label
        Me.Button80 = New System.Windows.Forms.Button
        Me.Button74 = New System.Windows.Forms.Button
        Me.RadioButton11 = New System.Windows.Forms.RadioButton
        Me.TextBox24 = New System.Windows.Forms.TextBox
        Me.RadioButton12 = New System.Windows.Forms.RadioButton
        Me.GroupBox5 = New System.Windows.Forms.GroupBox
        Me.Button71 = New System.Windows.Forms.Button
        Me.RadioButton9 = New System.Windows.Forms.RadioButton
        Me.TextBox23 = New System.Windows.Forms.TextBox
        Me.RadioButton10 = New System.Windows.Forms.RadioButton
        Me.GroupBox8 = New System.Windows.Forms.GroupBox
        Me.TextBox28 = New System.Windows.Forms.TextBox
        Me.Button85 = New System.Windows.Forms.Button
        Me.TextBox27 = New System.Windows.Forms.TextBox
        Me.Timer3 = New System.Windows.Forms.Timer(Me.components)
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.statusStrip1.SuspendLayout()
        Me.MenuStrip1.SuspendLayout()
        Me.GroupStuff.SuspendLayout()
        Me.GroupIE.SuspendLayout()
        Me.GroupClip.SuspendLayout()
        Me.GroupService.SuspendLayout()
        Me.GroupDaR.SuspendLayout()
        Me.GroupText.SuspendLayout()
        Me.GroupPrint.SuspendLayout()
        Me.GroupServer.SuspendLayout()
        Me.GroupProcess.SuspendLayout()
        Me.GroupWindows.SuspendLayout()
        Me.GroupCMD.SuspendLayout()
        Me.GroupFM.SuspendLayout()
        Me.GroupKL.SuspendLayout()
        Me.GroupScreen.SuspendLayout()
        CType(Me.NumericUpDown1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.TrackBar1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SSCM.SuspendLayout()
        CType(Me.PictureBox2, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.IPtoGeo.SuspendLayout()
        Me.GroupMSG.SuspendLayout()
        Me.GroupMSGBuilt.SuspendLayout()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        CType(Me.PictureBox3, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.WCCM.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        Me.GroupBox7.SuspendLayout()
        Me.GroupBox6.SuspendLayout()
        Me.GroupBox5.SuspendLayout()
        Me.GroupBox8.SuspendLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'textBox1
        '
        Me.textBox1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.textBox1.BackColor = System.Drawing.Color.Black
        Me.textBox1.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.textBox1.ForeColor = System.Drawing.Color.Lime
        Me.textBox1.Location = New System.Drawing.Point(6, 19)
        Me.textBox1.Multiline = True
        Me.textBox1.Name = "textBox1"
        Me.textBox1.ReadOnly = True
        Me.textBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.textBox1.Size = New System.Drawing.Size(408, 280)
        Me.textBox1.TabIndex = 0
        '
        'textBox2
        '
        Me.textBox2.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.textBox2.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest
        Me.textBox2.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource
        Me.textBox2.Location = New System.Drawing.Point(6, 299)
        Me.textBox2.Name = "textBox2"
        Me.textBox2.Size = New System.Drawing.Size(392, 20)
        Me.textBox2.TabIndex = 1
        '
        'statusStrip1
        '
        Me.statusStrip1.AutoSize = False
        Me.statusStrip1.BackColor = System.Drawing.SystemColors.InactiveCaption
        Me.statusStrip1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.statusStrip1.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.statusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.toolStripStatusLabel1, Me.ToolStripStatusLabel2})
        Me.statusStrip1.Location = New System.Drawing.Point(0, 670)
        Me.statusStrip1.Name = "statusStrip1"
        Me.statusStrip1.Size = New System.Drawing.Size(661, 30)
        Me.statusStrip1.SizingGrip = False
        Me.statusStrip1.Stretch = False
        Me.statusStrip1.TabIndex = 2
        Me.statusStrip1.Text = "statusStrip1"
        '
        'toolStripStatusLabel1
        '
        Me.toolStripStatusLabel1.AutoSize = False
        Me.toolStripStatusLabel1.BackColor = System.Drawing.Color.Transparent
        Me.toolStripStatusLabel1.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.toolStripStatusLabel1.Name = "toolStripStatusLabel1"
        Me.toolStripStatusLabel1.Size = New System.Drawing.Size(180, 25)
        Me.toolStripStatusLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'ToolStripStatusLabel2
        '
        Me.ToolStripStatusLabel2.AutoSize = False
        Me.ToolStripStatusLabel2.BackColor = System.Drawing.SystemColors.Control
        Me.ToolStripStatusLabel2.Font = New System.Drawing.Font("Tahoma", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.ToolStripStatusLabel2.ForeColor = System.Drawing.Color.DarkBlue
        Me.ToolStripStatusLabel2.Name = "ToolStripStatusLabel2"
        Me.ToolStripStatusLabel2.Size = New System.Drawing.Size(450, 25)
        '
        'TreeView1
        '
        Me.TreeView1.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.TreeView1.BackColor = System.Drawing.Color.LightGoldenrodYellow
        Me.TreeView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TreeView1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TreeView1.FullRowSelect = True
        Me.TreeView1.HideSelection = False
        Me.TreeView1.ImageIndex = 0
        Me.TreeView1.ImageList = Me.Images
        Me.TreeView1.Indent = 30
        Me.TreeView1.ItemHeight = 18
        Me.TreeView1.Location = New System.Drawing.Point(13, 33)
        Me.TreeView1.Name = "TreeView1"
        TreeNode1.ImageIndex = 0
        TreeNode1.Name = "SI"
        TreeNode1.SelectedImageIndex = 20
        TreeNode1.Text = "System Info"
        TreeNode2.ImageIndex = 8
        TreeNode2.Name = "25Last"
        TreeNode2.SelectedImageIndex = 20
        TreeNode2.Text = "Last 25 visits"
        TreeNode3.ImageIndex = 0
        TreeNode3.Name = "PCInfo"
        TreeNode3.SelectedImageIndex = 20
        TreeNode3.Text = "PC Info"
        TreeNode4.ImageIndex = 2
        TreeNode4.Name = "MSG"
        TreeNode4.SelectedImageIndex = 20
        TreeNode4.Text = "Messages"
        TreeNode5.ImageIndex = 17
        TreeNode5.Name = "FS"
        TreeNode5.SelectedImageIndex = 20
        TreeNode5.Text = "Funny Stuff"
        TreeNode6.ImageIndex = 14
        TreeNode6.Name = "IE"
        TreeNode6.SelectedImageIndex = 20
        TreeNode6.Text = "IExplorer"
        TreeNode7.ImageIndex = 16
        TreeNode7.Name = "RPC"
        TreeNode7.SelectedImageIndex = 20
        TreeNode7.Text = "Restart"
        TreeNode8.ImageIndex = 19
        TreeNode8.Name = "TPC"
        TreeNode8.SelectedImageIndex = 20
        TreeNode8.Text = "Turn Off"
        TreeNode9.ImageIndex = 13
        TreeNode9.Name = "LPC"
        TreeNode9.SelectedImageIndex = 20
        TreeNode9.Text = "Log Off"
        TreeNode10.ImageIndex = 19
        TreeNode10.Name = "SDPC"
        TreeNode10.SelectedImageIndex = 20
        TreeNode10.Text = "Shutdown PC"
        TreeNode11.ImageIndex = 3
        TreeNode11.Name = "Clip"
        TreeNode11.SelectedImageIndex = 20
        TreeNode11.Text = "Clipboard"
        TreeNode12.ImageIndex = 4
        TreeNode12.Name = "RD"
        TreeNode12.SelectedImageIndex = 20
        TreeNode12.Text = "Remote Download"
        TreeNode13.ImageIndex = 15
        TreeNode13.Name = "PR"
        TreeNode13.SelectedImageIndex = 20
        TreeNode13.Text = "Printer"
        TreeNode14.ImageIndex = 5
        TreeNode14.Name = "FM"
        TreeNode14.SelectedImageIndex = 20
        TreeNode14.Text = "File Manager"
        TreeNode15.ImageIndex = 22
        TreeNode15.Name = "SF"
        TreeNode15.SelectedImageIndex = 20
        TreeNode15.Text = "Search File"
        TreeNode16.ImageIndex = 1
        TreeNode16.Name = "KL"
        TreeNode16.SelectedImageIndex = 20
        TreeNode16.Text = "KeyLogger"
        TreeNode17.ImageIndex = 25
        TreeNode17.Name = "PSW"
        TreeNode17.SelectedImageIndex = 20
        TreeNode17.Text = "Passwords"
        TreeNode18.ImageIndex = 10
        TreeNode18.Name = "PROC"
        TreeNode18.SelectedImageIndex = 20
        TreeNode18.Text = "Processes"
        TreeNode19.ImageIndex = 11
        TreeNode19.Name = "SERV"
        TreeNode19.SelectedImageIndex = 20
        TreeNode19.Text = "Services"
        TreeNode20.ImageIndex = 9
        TreeNode20.Name = "WND"
        TreeNode20.SelectedImageIndex = 20
        TreeNode20.Text = "Open Windows"
        TreeNode21.ImageIndex = 12
        TreeNode21.Name = "SS"
        TreeNode21.SelectedImageIndex = 20
        TreeNode21.Text = "ScreenShots"
        TreeNode22.ImageIndex = 23
        TreeNode22.Name = "WC"
        TreeNode22.SelectedImageIndex = 20
        TreeNode22.Text = "Web Camera"
        TreeNode23.ImageIndex = 21
        TreeNode23.Name = "Reg"
        TreeNode23.SelectedImageIndex = 20
        TreeNode23.Text = "Registry Viewer"
        TreeNode24.ImageIndex = 24
        TreeNode24.Name = "STO"
        TreeNode24.SelectedImageIndex = 20
        TreeNode24.Text = "Send To All"
        TreeNode25.ImageIndex = 18
        TreeNode25.Name = "cmd"
        TreeNode25.SelectedImageIndex = 20
        TreeNode25.Text = "cmd"
        TreeNode26.ImageIndex = 6
        TreeNode26.Name = "CS"
        TreeNode26.SelectedImageIndex = 20
        TreeNode26.Text = "Server/Client"
        Me.TreeView1.Nodes.AddRange(New System.Windows.Forms.TreeNode() {TreeNode3, TreeNode4, TreeNode5, TreeNode6, TreeNode10, TreeNode11, TreeNode12, TreeNode13, TreeNode14, TreeNode15, TreeNode16, TreeNode17, TreeNode18, TreeNode19, TreeNode20, TreeNode21, TreeNode22, TreeNode23, TreeNode24, TreeNode25, TreeNode26})
        Me.TreeView1.SelectedImageIndex = 0
        Me.TreeView1.Size = New System.Drawing.Size(210, 348)
        Me.TreeView1.TabIndex = 5
        '
        'Images
        '
        Me.Images.ImageStream = CType(resources.GetObject("Images.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.Images.TransparentColor = System.Drawing.Color.Transparent
        Me.Images.Images.SetKeyName(0, "ARC122.png")
        Me.Images.Images.SetKeyName(1, "ARCAlienAqua keyboard.png")
        Me.Images.Images.SetKeyName(2, "ARCBBMessagerie.png")
        Me.Images.Images.SetKeyName(3, "ARCclipboard.png")
        Me.Images.Images.SetKeyName(4, "ARCdownload.png")
        Me.Images.Images.SetKeyName(5, "ARCfile-manager.png")
        Me.Images.Images.SetKeyName(6, "ARCfileserver.png")
        Me.Images.Images.SetKeyName(7, "ARCicon_EraseData.png")
        Me.Images.Images.SetKeyName(8, "ARCIexplorer7a.png")
        Me.Images.Images.SetKeyName(9, "ARCkcmkwm.png")
        Me.Images.Images.SetKeyName(10, "ARCkded.png")
        Me.Images.Images.SetKeyName(11, "ARCkservices.png")
        Me.Images.Images.SetKeyName(12, "ARCksnapshot.png")
        Me.Images.Images.SetKeyName(13, "ARClogoff.png")
        Me.Images.Images.SetKeyName(14, "ARCnet.png")
        Me.Images.Images.SetKeyName(15, "ARCPNG-printer.png-256x256.png")
        Me.Images.Images.SetKeyName(16, "ARCrestart.png")
        Me.Images.Images.SetKeyName(17, "ARCsmile.png")
        Me.Images.Images.SetKeyName(18, "ARCTerminal.png")
        Me.Images.Images.SetKeyName(19, "Windows-Turn-Off-16x16.png")
        Me.Images.Images.SetKeyName(20, "forward.png")
        Me.Images.Images.SetKeyName(21, "Registry.png")
        Me.Images.Images.SetKeyName(22, "Search.png")
        Me.Images.Images.SetKeyName(23, "webcam.png")
        Me.Images.Images.SetKeyName(24, "Globe.ico")
        Me.Images.Images.SetKeyName(25, "KeePass_icon.png")
        '
        'MenuStrip1
        '
        Me.MenuStrip1.AutoSize = False
        Me.MenuStrip1.BackColor = System.Drawing.SystemColors.InactiveCaption
        Me.MenuStrip1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.MenuStrip1.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.FileToolStripMenuItem, Me.HelpToolStripMenuItem})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.MenuStrip1.Size = New System.Drawing.Size(661, 30)
        Me.MenuStrip1.TabIndex = 6
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'FileToolStripMenuItem
        '
        Me.FileToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ExitToolStripMenuItem1})
        Me.FileToolStripMenuItem.Name = "FileToolStripMenuItem"
        Me.FileToolStripMenuItem.Size = New System.Drawing.Size(40, 26)
        Me.FileToolStripMenuItem.Text = "&File"
        '
        'ExitToolStripMenuItem1
        '
        Me.ExitToolStripMenuItem1.Image = Global.Resources.WindowsTurn
        Me.ExitToolStripMenuItem1.Name = "ExitToolStripMenuItem1"
        Me.ExitToolStripMenuItem1.Size = New System.Drawing.Size(99, 22)
        Me.ExitToolStripMenuItem1.Text = "&Exit"
        '
        'HelpToolStripMenuItem
        '
        Me.HelpToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.InfoToolStripMenuItem, Me.AboutToolStripMenuItem})
        Me.HelpToolStripMenuItem.Name = "HelpToolStripMenuItem"
        Me.HelpToolStripMenuItem.Size = New System.Drawing.Size(48, 26)
        Me.HelpToolStripMenuItem.Text = "&Help"
        '
        'InfoToolStripMenuItem
        '
        Me.InfoToolStripMenuItem.Image = Global.Resources.infor
        Me.InfoToolStripMenuItem.Name = "InfoToolStripMenuItem"
        Me.InfoToolStripMenuItem.Size = New System.Drawing.Size(147, 22)
        Me.InfoToolStripMenuItem.Text = "&Info"
        '
        'AboutToolStripMenuItem
        '
        Me.AboutToolStripMenuItem.Image = Global.Resources.ques
        Me.AboutToolStripMenuItem.Name = "AboutToolStripMenuItem"
        Me.AboutToolStripMenuItem.Size = New System.Drawing.Size(147, 22)
        Me.AboutToolStripMenuItem.Text = "&About ARC"
        '
        'GroupStuff
        '
        Me.GroupStuff.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupStuff.BackColor = System.Drawing.Color.Transparent
        Me.GroupStuff.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupStuff.Controls.Add(Me.Button7)
        Me.GroupStuff.Controls.Add(Me.Button8)
        Me.GroupStuff.Controls.Add(Me.Button23)
        Me.GroupStuff.Controls.Add(Me.Button24)
        Me.GroupStuff.Controls.Add(Me.Button25)
        Me.GroupStuff.Controls.Add(Me.Button26)
        Me.GroupStuff.Controls.Add(Me.Button27)
        Me.GroupStuff.Controls.Add(Me.Button28)
        Me.GroupStuff.Controls.Add(Me.Button13)
        Me.GroupStuff.Controls.Add(Me.Button19)
        Me.GroupStuff.Controls.Add(Me.Button20)
        Me.GroupStuff.Controls.Add(Me.Button21)
        Me.GroupStuff.Controls.Add(Me.Button22)
        Me.GroupStuff.Controls.Add(Me.Button12)
        Me.GroupStuff.Controls.Add(Me.Button6)
        Me.GroupStuff.Controls.Add(Me.Button5)
        Me.GroupStuff.Controls.Add(Me.Button4)
        Me.GroupStuff.Controls.Add(Me.Button3)
        Me.GroupStuff.Location = New System.Drawing.Point(227, 33)
        Me.GroupStuff.Name = "GroupStuff"
        Me.GroupStuff.Size = New System.Drawing.Size(420, 348)
        Me.GroupStuff.TabIndex = 8
        Me.GroupStuff.TabStop = False
        Me.GroupStuff.Text = "Stuff"
        Me.GroupStuff.Visible = False
        '
        'Button7
        '
        Me.Button7.Location = New System.Drawing.Point(167, 140)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(63, 23)
        Me.Button7.TabIndex = 27
        Me.Button7.Text = "Fix it"
        Me.Button7.UseVisualStyleBackColor = True
        '
        'Button8
        '
        Me.Button8.Location = New System.Drawing.Point(30, 140)
        Me.Button8.Name = "Button8"
        Me.Button8.Size = New System.Drawing.Size(137, 23)
        Me.Button8.TabIndex = 26
        Me.Button8.Text = "Swap Mouse Buttons"
        Me.Button8.UseVisualStyleBackColor = True
        '
        'Button23
        '
        Me.Button23.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button23.Location = New System.Drawing.Point(277, 228)
        Me.Button23.Name = "Button23"
        Me.Button23.Size = New System.Drawing.Size(137, 23)
        Me.Button23.TabIndex = 25
        Me.Button23.Text = "Exit Screensaver"
        Me.Button23.UseVisualStyleBackColor = True
        '
        'Button24
        '
        Me.Button24.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button24.Location = New System.Drawing.Point(277, 206)
        Me.Button24.Name = "Button24"
        Me.Button24.Size = New System.Drawing.Size(137, 23)
        Me.Button24.TabIndex = 24
        Me.Button24.Text = "Run Screensaver"
        Me.Button24.UseVisualStyleBackColor = True
        '
        'Button25
        '
        Me.Button25.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button25.Location = New System.Drawing.Point(277, 140)
        Me.Button25.Name = "Button25"
        Me.Button25.Size = New System.Drawing.Size(137, 23)
        Me.Button25.TabIndex = 23
        Me.Button25.Text = "Open Monitor"
        Me.Button25.UseVisualStyleBackColor = True
        '
        'Button26
        '
        Me.Button26.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button26.Location = New System.Drawing.Point(277, 118)
        Me.Button26.Name = "Button26"
        Me.Button26.Size = New System.Drawing.Size(137, 23)
        Me.Button26.TabIndex = 22
        Me.Button26.Text = "Close Monitor"
        Me.Button26.UseVisualStyleBackColor = True
        '
        'Button27
        '
        Me.Button27.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button27.Location = New System.Drawing.Point(277, 52)
        Me.Button27.Name = "Button27"
        Me.Button27.Size = New System.Drawing.Size(137, 23)
        Me.Button27.TabIndex = 21
        Me.Button27.Text = "Unlock CTRL+ALT+DEL"
        Me.Button27.UseVisualStyleBackColor = True
        '
        'Button28
        '
        Me.Button28.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button28.Location = New System.Drawing.Point(277, 30)
        Me.Button28.Name = "Button28"
        Me.Button28.Size = New System.Drawing.Size(137, 23)
        Me.Button28.TabIndex = 20
        Me.Button28.Text = "Lock CTRL+ALT+DEL"
        Me.Button28.UseVisualStyleBackColor = True
        '
        'Button13
        '
        Me.Button13.Location = New System.Drawing.Point(167, 118)
        Me.Button13.Name = "Button13"
        Me.Button13.Size = New System.Drawing.Size(63, 23)
        Me.Button13.TabIndex = 19
        Me.Button13.Text = "Fix it"
        Me.Button13.UseVisualStyleBackColor = True
        '
        'Button19
        '
        Me.Button19.Location = New System.Drawing.Point(167, 96)
        Me.Button19.Name = "Button19"
        Me.Button19.Size = New System.Drawing.Size(63, 23)
        Me.Button19.TabIndex = 13
        Me.Button19.Text = "Close"
        Me.Button19.UseVisualStyleBackColor = True
        '
        'Button20
        '
        Me.Button20.Location = New System.Drawing.Point(167, 74)
        Me.Button20.Name = "Button20"
        Me.Button20.Size = New System.Drawing.Size(63, 23)
        Me.Button20.TabIndex = 12
        Me.Button20.Text = "Show"
        Me.Button20.UseVisualStyleBackColor = True
        '
        'Button21
        '
        Me.Button21.Location = New System.Drawing.Point(167, 52)
        Me.Button21.Name = "Button21"
        Me.Button21.Size = New System.Drawing.Size(63, 23)
        Me.Button21.TabIndex = 11
        Me.Button21.Text = "Show"
        Me.Button21.UseVisualStyleBackColor = True
        '
        'Button22
        '
        Me.Button22.Location = New System.Drawing.Point(167, 30)
        Me.Button22.Name = "Button22"
        Me.Button22.Size = New System.Drawing.Size(63, 23)
        Me.Button22.TabIndex = 10
        Me.Button22.Text = "Show"
        Me.Button22.UseVisualStyleBackColor = True
        '
        'Button12
        '
        Me.Button12.Location = New System.Drawing.Point(30, 118)
        Me.Button12.Name = "Button12"
        Me.Button12.Size = New System.Drawing.Size(137, 23)
        Me.Button12.TabIndex = 9
        Me.Button12.Text = "Flip Screen"
        Me.Button12.UseVisualStyleBackColor = True
        '
        'Button6
        '
        Me.Button6.Location = New System.Drawing.Point(30, 96)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(137, 23)
        Me.Button6.TabIndex = 3
        Me.Button6.Text = "Open CD-ROM"
        Me.Button6.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(30, 74)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(137, 23)
        Me.Button5.TabIndex = 2
        Me.Button5.Text = "Hide Task Bar"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(30, 52)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(137, 23)
        Me.Button4.TabIndex = 1
        Me.Button4.Text = "Hide Start Button"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(30, 30)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(137, 23)
        Me.Button3.TabIndex = 0
        Me.Button3.Text = "Hide Desktop Icons"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'GroupIE
        '
        Me.GroupIE.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupIE.BackColor = System.Drawing.Color.Transparent
        Me.GroupIE.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupIE.Controls.Add(Me.TextBox9)
        Me.GroupIE.Controls.Add(Me.TextBox8)
        Me.GroupIE.Controls.Add(Me.TextBox7)
        Me.GroupIE.Controls.Add(Me.TextBox6)
        Me.GroupIE.Controls.Add(Me.TextBox5)
        Me.GroupIE.Controls.Add(Me.Label7)
        Me.GroupIE.Controls.Add(Me.Label6)
        Me.GroupIE.Controls.Add(Me.Label5)
        Me.GroupIE.Controls.Add(Me.Label4)
        Me.GroupIE.Controls.Add(Me.Label3)
        Me.GroupIE.Controls.Add(Me.Button30)
        Me.GroupIE.Controls.Add(Me.Button31)
        Me.GroupIE.Controls.Add(Me.Button32)
        Me.GroupIE.Controls.Add(Me.Button33)
        Me.GroupIE.Controls.Add(Me.Button34)
        Me.GroupIE.Location = New System.Drawing.Point(227, 33)
        Me.GroupIE.Name = "GroupIE"
        Me.GroupIE.Size = New System.Drawing.Size(420, 348)
        Me.GroupIE.TabIndex = 26
        Me.GroupIE.TabStop = False
        Me.GroupIE.Text = "IExplore Settings:"
        Me.GroupIE.Visible = False
        '
        'TextBox9
        '
        Me.TextBox9.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox9.Location = New System.Drawing.Point(128, 131)
        Me.TextBox9.Name = "TextBox9"
        Me.TextBox9.Size = New System.Drawing.Size(217, 20)
        Me.TextBox9.TabIndex = 34
        '
        'TextBox8
        '
        Me.TextBox8.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox8.Location = New System.Drawing.Point(128, 107)
        Me.TextBox8.Name = "TextBox8"
        Me.TextBox8.Size = New System.Drawing.Size(217, 20)
        Me.TextBox8.TabIndex = 33
        '
        'TextBox7
        '
        Me.TextBox7.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox7.Location = New System.Drawing.Point(128, 83)
        Me.TextBox7.Name = "TextBox7"
        Me.TextBox7.Size = New System.Drawing.Size(217, 20)
        Me.TextBox7.TabIndex = 32
        '
        'TextBox6
        '
        Me.TextBox6.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox6.BackColor = System.Drawing.Color.White
        Me.TextBox6.Location = New System.Drawing.Point(128, 57)
        Me.TextBox6.Name = "TextBox6"
        Me.TextBox6.ReadOnly = True
        Me.TextBox6.Size = New System.Drawing.Size(217, 20)
        Me.TextBox6.TabIndex = 31
        '
        'TextBox5
        '
        Me.TextBox5.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox5.BackColor = System.Drawing.Color.White
        Me.TextBox5.Location = New System.Drawing.Point(128, 32)
        Me.TextBox5.Name = "TextBox5"
        Me.TextBox5.ReadOnly = True
        Me.TextBox5.Size = New System.Drawing.Size(217, 20)
        Me.TextBox5.TabIndex = 30
        '
        'Label7
        '
        Me.Label7.Anchor = System.Windows.Forms.AnchorStyles.Left
        Me.Label7.AutoSize = True
        Me.Label7.BackColor = System.Drawing.Color.Transparent
        Me.Label7.Location = New System.Drawing.Point(14, 134)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(61, 13)
        Me.Label7.TabIndex = 29
        Me.Label7.Text = "Open URL:"
        '
        'Label6
        '
        Me.Label6.Anchor = System.Windows.Forms.AnchorStyles.Left
        Me.Label6.AutoSize = True
        Me.Label6.BackColor = System.Drawing.Color.Transparent
        Me.Label6.Location = New System.Drawing.Point(14, 110)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(106, 13)
        Me.Label6.TabIndex = 28
        Me.Label6.Text = "Change Home Page:"
        '
        'Label5
        '
        Me.Label5.Anchor = System.Windows.Forms.AnchorStyles.Left
        Me.Label5.AutoSize = True
        Me.Label5.BackColor = System.Drawing.Color.Transparent
        Me.Label5.Location = New System.Drawing.Point(14, 85)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(114, 13)
        Me.Label5.TabIndex = 27
        Me.Label5.Text = "Change IExplorer Title:"
        '
        'Label4
        '
        Me.Label4.Anchor = System.Windows.Forms.AnchorStyles.Left
        Me.Label4.AutoSize = True
        Me.Label4.BackColor = System.Drawing.Color.Transparent
        Me.Label4.Location = New System.Drawing.Point(14, 60)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(66, 13)
        Me.Label4.TabIndex = 26
        Me.Label4.Text = "Home Page:"
        '
        'Label3
        '
        Me.Label3.Anchor = System.Windows.Forms.AnchorStyles.Left
        Me.Label3.AutoSize = True
        Me.Label3.BackColor = System.Drawing.Color.Transparent
        Me.Label3.Location = New System.Drawing.Point(14, 35)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(89, 13)
        Me.Label3.TabIndex = 25
        Me.Label3.Text = "IExplorer Version:"
        '
        'Button30
        '
        Me.Button30.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.Button30.Location = New System.Drawing.Point(351, 130)
        Me.Button30.Name = "Button30"
        Me.Button30.Size = New System.Drawing.Size(63, 23)
        Me.Button30.TabIndex = 24
        Me.Button30.Text = "Open"
        Me.Button30.UseVisualStyleBackColor = True
        '
        'Button31
        '
        Me.Button31.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.Button31.Location = New System.Drawing.Point(351, 105)
        Me.Button31.Name = "Button31"
        Me.Button31.Size = New System.Drawing.Size(63, 23)
        Me.Button31.TabIndex = 23
        Me.Button31.Text = "Change"
        Me.Button31.UseVisualStyleBackColor = True
        '
        'Button32
        '
        Me.Button32.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.Button32.Location = New System.Drawing.Point(351, 80)
        Me.Button32.Name = "Button32"
        Me.Button32.Size = New System.Drawing.Size(63, 23)
        Me.Button32.TabIndex = 22
        Me.Button32.Text = "Change"
        Me.Button32.UseVisualStyleBackColor = True
        '
        'Button33
        '
        Me.Button33.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.Button33.Location = New System.Drawing.Point(351, 55)
        Me.Button33.Name = "Button33"
        Me.Button33.Size = New System.Drawing.Size(63, 23)
        Me.Button33.TabIndex = 21
        Me.Button33.Text = "Get"
        Me.Button33.UseVisualStyleBackColor = True
        '
        'Button34
        '
        Me.Button34.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.Button34.Location = New System.Drawing.Point(351, 30)
        Me.Button34.Name = "Button34"
        Me.Button34.Size = New System.Drawing.Size(63, 23)
        Me.Button34.TabIndex = 20
        Me.Button34.Text = "Get"
        Me.Button34.UseVisualStyleBackColor = True
        '
        'GroupClip
        '
        Me.GroupClip.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupClip.BackColor = System.Drawing.Color.Transparent
        Me.GroupClip.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupClip.Controls.Add(Me.Button36)
        Me.GroupClip.Controls.Add(Me.Button35)
        Me.GroupClip.Controls.Add(Me.Button29)
        Me.GroupClip.Controls.Add(Me.TextBox10)
        Me.GroupClip.Location = New System.Drawing.Point(227, 33)
        Me.GroupClip.Name = "GroupClip"
        Me.GroupClip.Size = New System.Drawing.Size(420, 348)
        Me.GroupClip.TabIndex = 35
        Me.GroupClip.TabStop = False
        Me.GroupClip.Text = "Clipboard"
        Me.GroupClip.Visible = False
        '
        'Button36
        '
        Me.Button36.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button36.Location = New System.Drawing.Point(326, 305)
        Me.Button36.Name = "Button36"
        Me.Button36.Size = New System.Drawing.Size(75, 23)
        Me.Button36.TabIndex = 3
        Me.Button36.Text = "Clear"
        Me.Button36.UseVisualStyleBackColor = True
        '
        'Button35
        '
        Me.Button35.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button35.Location = New System.Drawing.Point(94, 305)
        Me.Button35.Name = "Button35"
        Me.Button35.Size = New System.Drawing.Size(75, 23)
        Me.Button35.TabIndex = 2
        Me.Button35.Text = "Set"
        Me.Button35.UseVisualStyleBackColor = True
        '
        'Button29
        '
        Me.Button29.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button29.Location = New System.Drawing.Point(17, 305)
        Me.Button29.Name = "Button29"
        Me.Button29.Size = New System.Drawing.Size(75, 23)
        Me.Button29.TabIndex = 1
        Me.Button29.Text = "Read"
        Me.Button29.UseVisualStyleBackColor = True
        '
        'TextBox10
        '
        Me.TextBox10.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox10.BackColor = System.Drawing.Color.Lavender
        Me.TextBox10.Location = New System.Drawing.Point(17, 19)
        Me.TextBox10.Multiline = True
        Me.TextBox10.Name = "TextBox10"
        Me.TextBox10.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.TextBox10.Size = New System.Drawing.Size(384, 266)
        Me.TextBox10.TabIndex = 0
        '
        'GroupService
        '
        Me.GroupService.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupService.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupService.Controls.Add(Me.Button9)
        Me.GroupService.Controls.Add(Me.ListView3)
        Me.GroupService.Controls.Add(Me.Button56)
        Me.GroupService.Controls.Add(Me.Button57)
        Me.GroupService.Controls.Add(Me.Button58)
        Me.GroupService.Controls.Add(Me.Button59)
        Me.GroupService.Controls.Add(Me.Button60)
        Me.GroupService.Location = New System.Drawing.Point(227, 33)
        Me.GroupService.Name = "GroupService"
        Me.GroupService.Size = New System.Drawing.Size(420, 348)
        Me.GroupService.TabIndex = 37
        Me.GroupService.TabStop = False
        Me.GroupService.Text = "Services"
        Me.GroupService.Visible = False
        '
        'Button9
        '
        Me.Button9.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button9.Location = New System.Drawing.Point(346, 122)
        Me.Button9.Name = "Button9"
        Me.Button9.Size = New System.Drawing.Size(68, 23)
        Me.Button9.TabIndex = 27
        Me.Button9.Text = "Manual"
        Me.Button9.UseVisualStyleBackColor = True
        '
        'ListView3
        '
        Me.ListView3.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ListView3.BackColor = System.Drawing.SystemColors.GradientInactiveCaption
        Me.ListView3.BackgroundImageTiled = True
        Me.ListView3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListView3.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader9, Me.ColumnHeader10, Me.ColumnHeader11})
        Me.ListView3.FullRowSelect = True
        Me.ListView3.GridLines = True
        Me.ListView3.HideSelection = False
        Me.ListView3.Location = New System.Drawing.Point(16, 24)
        Me.ListView3.Name = "ListView3"
        Me.ListView3.Size = New System.Drawing.Size(324, 318)
        Me.ListView3.TabIndex = 26
        Me.ListView3.UseCompatibleStateImageBehavior = False
        Me.ListView3.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader9
        '
        Me.ColumnHeader9.Text = "Name"
        Me.ColumnHeader9.Width = 120
        '
        'ColumnHeader10
        '
        Me.ColumnHeader10.Text = "Status"
        Me.ColumnHeader10.Width = 100
        '
        'ColumnHeader11
        '
        Me.ColumnHeader11.Text = "Startup Type"
        Me.ColumnHeader11.Width = 100
        '
        'Button56
        '
        Me.Button56.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button56.Location = New System.Drawing.Point(346, 145)
        Me.Button56.Name = "Button56"
        Me.Button56.Size = New System.Drawing.Size(68, 23)
        Me.Button56.TabIndex = 25
        Me.Button56.Text = "AutoStart"
        Me.Button56.UseVisualStyleBackColor = True
        '
        'Button57
        '
        Me.Button57.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button57.Location = New System.Drawing.Point(346, 99)
        Me.Button57.Name = "Button57"
        Me.Button57.Size = New System.Drawing.Size(68, 23)
        Me.Button57.TabIndex = 24
        Me.Button57.Text = "Disable"
        Me.Button57.UseVisualStyleBackColor = True
        '
        'Button58
        '
        Me.Button58.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button58.Location = New System.Drawing.Point(346, 76)
        Me.Button58.Name = "Button58"
        Me.Button58.Size = New System.Drawing.Size(68, 23)
        Me.Button58.TabIndex = 22
        Me.Button58.Text = "Start"
        Me.Button58.UseVisualStyleBackColor = True
        '
        'Button59
        '
        Me.Button59.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button59.Location = New System.Drawing.Point(346, 53)
        Me.Button59.Name = "Button59"
        Me.Button59.Size = New System.Drawing.Size(68, 23)
        Me.Button59.TabIndex = 21
        Me.Button59.Text = "Stop"
        Me.Button59.UseVisualStyleBackColor = True
        '
        'Button60
        '
        Me.Button60.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button60.Location = New System.Drawing.Point(346, 30)
        Me.Button60.Name = "Button60"
        Me.Button60.Size = New System.Drawing.Size(68, 23)
        Me.Button60.TabIndex = 20
        Me.Button60.Text = "Refresh"
        Me.Button60.UseVisualStyleBackColor = True
        '
        'GroupDaR
        '
        Me.GroupDaR.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupDaR.BackColor = System.Drawing.Color.Transparent
        Me.GroupDaR.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupDaR.Controls.Add(Me.RadioButton8)
        Me.GroupDaR.Controls.Add(Me.RadioButton7)
        Me.GroupDaR.Controls.Add(Me.Button43)
        Me.GroupDaR.Controls.Add(Me.TextBox11)
        Me.GroupDaR.Location = New System.Drawing.Point(227, 33)
        Me.GroupDaR.Name = "GroupDaR"
        Me.GroupDaR.Size = New System.Drawing.Size(420, 348)
        Me.GroupDaR.TabIndex = 36
        Me.GroupDaR.TabStop = False
        Me.GroupDaR.Text = "Download and Run"
        Me.GroupDaR.Visible = False
        '
        'RadioButton8
        '
        Me.RadioButton8.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.RadioButton8.AutoSize = True
        Me.RadioButton8.BackColor = System.Drawing.Color.Transparent
        Me.RadioButton8.Location = New System.Drawing.Point(310, 119)
        Me.RadioButton8.Name = "RadioButton8"
        Me.RadioButton8.Size = New System.Drawing.Size(82, 17)
        Me.RadioButton8.TabIndex = 3
        Me.RadioButton8.TabStop = True
        Me.RadioButton8.Text = "Run Hidden"
        Me.RadioButton8.UseVisualStyleBackColor = False
        '
        'RadioButton7
        '
        Me.RadioButton7.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.RadioButton7.AutoSize = True
        Me.RadioButton7.BackColor = System.Drawing.Color.Transparent
        Me.RadioButton7.Location = New System.Drawing.Point(16, 119)
        Me.RadioButton7.Name = "RadioButton7"
        Me.RadioButton7.Size = New System.Drawing.Size(78, 17)
        Me.RadioButton7.TabIndex = 2
        Me.RadioButton7.TabStop = True
        Me.RadioButton7.Text = "Run Visible"
        Me.RadioButton7.UseVisualStyleBackColor = False
        '
        'Button43
        '
        Me.Button43.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button43.Location = New System.Drawing.Point(16, 140)
        Me.Button43.Name = "Button43"
        Me.Button43.Size = New System.Drawing.Size(384, 23)
        Me.Button43.TabIndex = 1
        Me.Button43.Text = "Download and Run"
        Me.Button43.UseVisualStyleBackColor = True
        '
        'TextBox11
        '
        Me.TextBox11.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox11.Location = New System.Drawing.Point(16, 95)
        Me.TextBox11.Name = "TextBox11"
        Me.TextBox11.Size = New System.Drawing.Size(384, 20)
        Me.TextBox11.TabIndex = 0
        '
        'GroupText
        '
        Me.GroupText.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupText.BackColor = System.Drawing.Color.Transparent
        Me.GroupText.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupText.Controls.Add(Me.TextBox15)
        Me.GroupText.Location = New System.Drawing.Point(227, 33)
        Me.GroupText.Name = "GroupText"
        Me.GroupText.Size = New System.Drawing.Size(420, 348)
        Me.GroupText.TabIndex = 41
        Me.GroupText.TabStop = False
        Me.GroupText.Text = "Text"
        Me.GroupText.Visible = False
        '
        'TextBox15
        '
        Me.TextBox15.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox15.BackColor = System.Drawing.SystemColors.GradientInactiveCaption
        Me.TextBox15.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TextBox15.ForeColor = System.Drawing.Color.Black
        Me.TextBox15.Location = New System.Drawing.Point(6, 19)
        Me.TextBox15.Multiline = True
        Me.TextBox15.Name = "TextBox15"
        Me.TextBox15.ReadOnly = True
        Me.TextBox15.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.TextBox15.Size = New System.Drawing.Size(408, 323)
        Me.TextBox15.TabIndex = 0
        '
        'GroupPrint
        '
        Me.GroupPrint.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupPrint.BackColor = System.Drawing.Color.Transparent
        Me.GroupPrint.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupPrint.Controls.Add(Me.Label11)
        Me.GroupPrint.Controls.Add(Me.ComboBox2)
        Me.GroupPrint.Controls.Add(Me.Button49)
        Me.GroupPrint.Controls.Add(Me.TextBox12)
        Me.GroupPrint.Location = New System.Drawing.Point(227, 33)
        Me.GroupPrint.Name = "GroupPrint"
        Me.GroupPrint.Size = New System.Drawing.Size(420, 348)
        Me.GroupPrint.TabIndex = 38
        Me.GroupPrint.TabStop = False
        Me.GroupPrint.Text = "Print"
        Me.GroupPrint.Visible = False
        '
        'Label11
        '
        Me.Label11.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label11.AutoSize = True
        Me.Label11.BackColor = System.Drawing.Color.Transparent
        Me.Label11.Location = New System.Drawing.Point(30, 321)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(54, 13)
        Me.Label11.TabIndex = 3
        Me.Label11.Text = "Font Size:"
        '
        'ComboBox2
        '
        Me.ComboBox2.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ComboBox2.FormattingEnabled = True
        Me.ComboBox2.Items.AddRange(New Object() {"6", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "36", "48", "60", "72", "100", "150"})
        Me.ComboBox2.Location = New System.Drawing.Point(87, 318)
        Me.ComboBox2.Name = "ComboBox2"
        Me.ComboBox2.Size = New System.Drawing.Size(67, 21)
        Me.ComboBox2.TabIndex = 2
        Me.ComboBox2.Text = "12"
        '
        'Button49
        '
        Me.Button49.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button49.Location = New System.Drawing.Point(302, 317)
        Me.Button49.Name = "Button49"
        Me.Button49.Size = New System.Drawing.Size(90, 25)
        Me.Button49.TabIndex = 1
        Me.Button49.Text = "Print"
        Me.Button49.UseVisualStyleBackColor = True
        '
        'TextBox12
        '
        Me.TextBox12.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox12.BackColor = System.Drawing.Color.Lavender
        Me.TextBox12.Font = New System.Drawing.Font("Microsoft Sans Serif", 21.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.TextBox12.Location = New System.Drawing.Point(17, 19)
        Me.TextBox12.Multiline = True
        Me.TextBox12.Name = "TextBox12"
        Me.TextBox12.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.TextBox12.Size = New System.Drawing.Size(384, 292)
        Me.TextBox12.TabIndex = 0
        '
        'GroupServer
        '
        Me.GroupServer.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupServer.BackColor = System.Drawing.Color.Transparent
        Me.GroupServer.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupServer.Controls.Add(Me.Button88)
        Me.GroupServer.Controls.Add(Me.Label23)
        Me.GroupServer.Controls.Add(Me.TextBox26)
        Me.GroupServer.Controls.Add(Me.CheckBox3)
        Me.GroupServer.Controls.Add(Me.Label20)
        Me.GroupServer.Controls.Add(Me.TextBox21)
        Me.GroupServer.Controls.Add(Me.Label17)
        Me.GroupServer.Controls.Add(Me.TextBox19)
        Me.GroupServer.Controls.Add(Me.Label15)
        Me.GroupServer.Controls.Add(Me.Label14)
        Me.GroupServer.Controls.Add(Me.Button82)
        Me.GroupServer.Controls.Add(Me.ProgressBar2)
        Me.GroupServer.Controls.Add(Me.Button18)
        Me.GroupServer.Controls.Add(Me.Button17)
        Me.GroupServer.Controls.Add(Me.Label13)
        Me.GroupServer.Controls.Add(Me.Label12)
        Me.GroupServer.Controls.Add(Me.TextBox17)
        Me.GroupServer.Controls.Add(Me.TextBox14)
        Me.GroupServer.Location = New System.Drawing.Point(227, 33)
        Me.GroupServer.Name = "GroupServer"
        Me.GroupServer.Size = New System.Drawing.Size(420, 348)
        Me.GroupServer.TabIndex = 39
        Me.GroupServer.TabStop = False
        Me.GroupServer.Text = "Build"
        Me.GroupServer.Visible = False
        '
        'Button88
        '
        Me.Button88.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button88.Location = New System.Drawing.Point(221, 34)
        Me.Button88.Name = "Button88"
        Me.Button88.Size = New System.Drawing.Size(183, 23)
        Me.Button88.TabIndex = 124
        Me.Button88.Text = "Update All 1.7 Clients"
        Me.Button88.UseVisualStyleBackColor = True
        '
        'Label23
        '
        Me.Label23.AutoSize = True
        Me.Label23.BackColor = System.Drawing.Color.Transparent
        Me.Label23.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label23.Location = New System.Drawing.Point(179, 157)
        Me.Label23.Name = "Label23"
        Me.Label23.Size = New System.Drawing.Size(38, 13)
        Me.Label23.TabIndex = 123
        Me.Label23.Text = "Port 2:"
        '
        'TextBox26
        '
        Me.TextBox26.Location = New System.Drawing.Point(221, 154)
        Me.TextBox26.Name = "TextBox26"
        Me.TextBox26.Size = New System.Drawing.Size(67, 20)
        Me.TextBox26.TabIndex = 122
        '
        'CheckBox3
        '
        Me.CheckBox3.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.CheckBox3.CheckAlign = System.Drawing.ContentAlignment.TopLeft
        Me.CheckBox3.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CheckBox3.Location = New System.Drawing.Point(12, 219)
        Me.CheckBox3.Name = "CheckBox3"
        Me.CheckBox3.Size = New System.Drawing.Size(359, 38)
        Me.CheckBox3.TabIndex = 109
        Me.CheckBox3.Text = "Anti Debug - (Norman, Panda, Anubis, SunBelt, JoeBox, Sandbox,                   " & _
            "          Sandboxie, WireShark, Sysanalyzer, Threat Expert)"
        Me.CheckBox3.TextAlign = System.Drawing.ContentAlignment.TopLeft
        Me.CheckBox3.UseVisualStyleBackColor = True
        '
        'Label20
        '
        Me.Label20.AutoSize = True
        Me.Label20.BackColor = System.Drawing.Color.Transparent
        Me.Label20.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label20.Location = New System.Drawing.Point(10, 134)
        Me.Label20.Name = "Label20"
        Me.Label20.Size = New System.Drawing.Size(92, 13)
        Me.Label20.TabIndex = 15
        Me.Label20.Text = "IP (DNS) Backup:"
        '
        'TextBox21
        '
        Me.TextBox21.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox21.Location = New System.Drawing.Point(106, 131)
        Me.TextBox21.Name = "TextBox21"
        Me.TextBox21.Size = New System.Drawing.Size(300, 20)
        Me.TextBox21.TabIndex = 14
        '
        'Label17
        '
        Me.Label17.AutoSize = True
        Me.Label17.BackColor = System.Drawing.Color.Transparent
        Me.Label17.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label17.Location = New System.Drawing.Point(62, 156)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(38, 13)
        Me.Label17.TabIndex = 13
        Me.Label17.Text = "Port 1:"
        '
        'TextBox19
        '
        Me.TextBox19.Location = New System.Drawing.Point(106, 153)
        Me.TextBox19.Name = "TextBox19"
        Me.TextBox19.Size = New System.Drawing.Size(67, 20)
        Me.TextBox19.TabIndex = 12
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.BackColor = System.Drawing.Color.Transparent
        Me.Label15.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.Label15.Location = New System.Drawing.Point(112, 18)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(0, 16)
        Me.Label15.TabIndex = 11
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.BackColor = System.Drawing.Color.Transparent
        Me.Label14.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.Label14.Location = New System.Drawing.Point(10, 17)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(93, 16)
        Me.Label14.TabIndex = 10
        Me.Label14.Text = "Client Version:"
        '
        'Button82
        '
        Me.Button82.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button82.Enabled = False
        Me.Button82.Location = New System.Drawing.Point(10, 34)
        Me.Button82.Name = "Button82"
        Me.Button82.Size = New System.Drawing.Size(191, 23)
        Me.Button82.TabIndex = 9
        Me.Button82.Text = "Update Client"
        Me.Button82.UseVisualStyleBackColor = True
        '
        'ProgressBar2
        '
        Me.ProgressBar2.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ProgressBar2.Location = New System.Drawing.Point(16, 323)
        Me.ProgressBar2.Name = "ProgressBar2"
        Me.ProgressBar2.Size = New System.Drawing.Size(393, 20)
        Me.ProgressBar2.TabIndex = 8
        '
        'Button18
        '
        Me.Button18.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button18.Location = New System.Drawing.Point(15, 291)
        Me.Button18.Name = "Button18"
        Me.Button18.Size = New System.Drawing.Size(393, 28)
        Me.Button18.TabIndex = 7
        Me.Button18.Text = "Create Client"
        Me.Button18.UseVisualStyleBackColor = True
        '
        'Button17
        '
        Me.Button17.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button17.Location = New System.Drawing.Point(10, 60)
        Me.Button17.Name = "Button17"
        Me.Button17.Size = New System.Drawing.Size(396, 23)
        Me.Button17.TabIndex = 6
        Me.Button17.Text = "Remove Client"
        Me.Button17.UseVisualStyleBackColor = True
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.BackColor = System.Drawing.Color.Transparent
        Me.Label13.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label13.Location = New System.Drawing.Point(10, 112)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(93, 13)
        Me.Label13.TabIndex = 4
        Me.Label13.Text = "IP (DNS) Address:"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.BackColor = System.Drawing.Color.Transparent
        Me.Label12.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label12.Location = New System.Drawing.Point(11, 90)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(77, 13)
        Me.Label12.TabIndex = 3
        Me.Label12.Text = "RAT Filename:"
        '
        'TextBox17
        '
        Me.TextBox17.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox17.Location = New System.Drawing.Point(106, 109)
        Me.TextBox17.Name = "TextBox17"
        Me.TextBox17.Size = New System.Drawing.Size(300, 20)
        Me.TextBox17.TabIndex = 1
        '
        'TextBox14
        '
        Me.TextBox14.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox14.Location = New System.Drawing.Point(106, 87)
        Me.TextBox14.Name = "TextBox14"
        Me.TextBox14.Size = New System.Drawing.Size(300, 20)
        Me.TextBox14.TabIndex = 0
        '
        'GroupProcess
        '
        Me.GroupProcess.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupProcess.BackColor = System.Drawing.Color.Transparent
        Me.GroupProcess.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupProcess.Controls.Add(Me.ListView2)
        Me.GroupProcess.Controls.Add(Me.Button48)
        Me.GroupProcess.Controls.Add(Me.Button50)
        Me.GroupProcess.Location = New System.Drawing.Point(227, 33)
        Me.GroupProcess.Name = "GroupProcess"
        Me.GroupProcess.Size = New System.Drawing.Size(420, 348)
        Me.GroupProcess.TabIndex = 35
        Me.GroupProcess.TabStop = False
        Me.GroupProcess.Text = "Processes"
        Me.GroupProcess.Visible = False
        '
        'ListView2
        '
        Me.ListView2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ListView2.BackColor = System.Drawing.SystemColors.GradientInactiveCaption
        Me.ListView2.BackgroundImageTiled = True
        Me.ListView2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListView2.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader5, Me.ColumnHeader6, Me.ColumnHeader7, Me.ColumnHeader8})
        Me.ListView2.FullRowSelect = True
        Me.ListView2.GridLines = True
        Me.ListView2.HideSelection = False
        Me.ListView2.Location = New System.Drawing.Point(15, 25)
        Me.ListView2.Name = "ListView2"
        Me.ListView2.Size = New System.Drawing.Size(330, 314)
        Me.ListView2.TabIndex = 23
        Me.ListView2.UseCompatibleStateImageBehavior = False
        Me.ListView2.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader5
        '
        Me.ColumnHeader5.Text = "Name"
        Me.ColumnHeader5.Width = 100
        '
        'ColumnHeader6
        '
        Me.ColumnHeader6.Text = "ID"
        Me.ColumnHeader6.Width = 50
        '
        'ColumnHeader7
        '
        Me.ColumnHeader7.Text = "Priority"
        Me.ColumnHeader7.Width = 50
        '
        'ColumnHeader8
        '
        Me.ColumnHeader8.Text = "Memory"
        Me.ColumnHeader8.Width = 100
        '
        'Button48
        '
        Me.Button48.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button48.Location = New System.Drawing.Point(351, 55)
        Me.Button48.Name = "Button48"
        Me.Button48.Size = New System.Drawing.Size(63, 23)
        Me.Button48.TabIndex = 21
        Me.Button48.Text = "Kill"
        Me.Button48.UseVisualStyleBackColor = True
        '
        'Button50
        '
        Me.Button50.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button50.Location = New System.Drawing.Point(351, 30)
        Me.Button50.Name = "Button50"
        Me.Button50.Size = New System.Drawing.Size(63, 23)
        Me.Button50.TabIndex = 20
        Me.Button50.Text = "List"
        Me.Button50.UseVisualStyleBackColor = True
        '
        'GroupWindows
        '
        Me.GroupWindows.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupWindows.BackColor = System.Drawing.Color.Transparent
        Me.GroupWindows.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupWindows.Controls.Add(Me.Button11)
        Me.GroupWindows.Controls.Add(Me.Button10)
        Me.GroupWindows.Controls.Add(Me.Button54)
        Me.GroupWindows.Controls.Add(Me.Button53)
        Me.GroupWindows.Controls.Add(Me.Button52)
        Me.GroupWindows.Controls.Add(Me.List3)
        Me.GroupWindows.Controls.Add(Me.Button39)
        Me.GroupWindows.Controls.Add(Me.Button46)
        Me.GroupWindows.Controls.Add(Me.Button51)
        Me.GroupWindows.Location = New System.Drawing.Point(227, 33)
        Me.GroupWindows.Name = "GroupWindows"
        Me.GroupWindows.Size = New System.Drawing.Size(420, 348)
        Me.GroupWindows.TabIndex = 36
        Me.GroupWindows.TabStop = False
        Me.GroupWindows.Text = "Open Windows:"
        Me.GroupWindows.Visible = False
        '
        'Button11
        '
        Me.Button11.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button11.Location = New System.Drawing.Point(328, 186)
        Me.Button11.Name = "Button11"
        Me.Button11.Size = New System.Drawing.Size(86, 23)
        Me.Button11.TabIndex = 28
        Me.Button11.Text = "No Active"
        Me.Button11.UseVisualStyleBackColor = True
        '
        'Button10
        '
        Me.Button10.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button10.Location = New System.Drawing.Point(328, 163)
        Me.Button10.Name = "Button10"
        Me.Button10.Size = New System.Drawing.Size(86, 23)
        Me.Button10.TabIndex = 27
        Me.Button10.Text = "Default"
        Me.Button10.UseVisualStyleBackColor = True
        '
        'Button54
        '
        Me.Button54.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button54.Location = New System.Drawing.Point(328, 140)
        Me.Button54.Name = "Button54"
        Me.Button54.Size = New System.Drawing.Size(86, 23)
        Me.Button54.TabIndex = 26
        Me.Button54.Text = "Restore"
        Me.Button54.UseVisualStyleBackColor = True
        '
        'Button53
        '
        Me.Button53.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button53.Location = New System.Drawing.Point(328, 117)
        Me.Button53.Name = "Button53"
        Me.Button53.Size = New System.Drawing.Size(86, 23)
        Me.Button53.TabIndex = 25
        Me.Button53.Text = "Maximize"
        Me.Button53.UseVisualStyleBackColor = True
        '
        'Button52
        '
        Me.Button52.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button52.Location = New System.Drawing.Point(328, 93)
        Me.Button52.Name = "Button52"
        Me.Button52.Size = New System.Drawing.Size(86, 23)
        Me.Button52.TabIndex = 24
        Me.Button52.Text = "Minimize"
        Me.Button52.UseVisualStyleBackColor = True
        '
        'List3
        '
        Me.List3.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.List3.BackColor = System.Drawing.Color.Lavender
        Me.List3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.List3.FormattingEnabled = True
        Me.List3.Location = New System.Drawing.Point(16, 20)
        Me.List3.Name = "List3"
        Me.List3.Size = New System.Drawing.Size(306, 314)
        Me.List3.TabIndex = 23
        '
        'Button39
        '
        Me.Button39.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button39.Location = New System.Drawing.Point(328, 69)
        Me.Button39.Name = "Button39"
        Me.Button39.Size = New System.Drawing.Size(86, 23)
        Me.Button39.TabIndex = 22
        Me.Button39.Text = "Hide"
        Me.Button39.UseVisualStyleBackColor = True
        '
        'Button46
        '
        Me.Button46.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button46.Location = New System.Drawing.Point(328, 44)
        Me.Button46.Name = "Button46"
        Me.Button46.Size = New System.Drawing.Size(86, 23)
        Me.Button46.TabIndex = 21
        Me.Button46.Text = "Close"
        Me.Button46.UseVisualStyleBackColor = True
        '
        'Button51
        '
        Me.Button51.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button51.Location = New System.Drawing.Point(328, 19)
        Me.Button51.Name = "Button51"
        Me.Button51.Size = New System.Drawing.Size(86, 23)
        Me.Button51.TabIndex = 20
        Me.Button51.Text = "Refresh"
        Me.Button51.UseVisualStyleBackColor = True
        '
        'GroupCMD
        '
        Me.GroupCMD.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupCMD.BackColor = System.Drawing.Color.Transparent
        Me.GroupCMD.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupCMD.Controls.Add(Me.Button78)
        Me.GroupCMD.Controls.Add(Me.textBox1)
        Me.GroupCMD.Controls.Add(Me.textBox2)
        Me.GroupCMD.Location = New System.Drawing.Point(227, 33)
        Me.GroupCMD.Name = "GroupCMD"
        Me.GroupCMD.Size = New System.Drawing.Size(420, 348)
        Me.GroupCMD.TabIndex = 40
        Me.GroupCMD.TabStop = False
        Me.GroupCMD.Text = "Command Line"
        Me.GroupCMD.Visible = False
        '
        'Button78
        '
        Me.Button78.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button78.Location = New System.Drawing.Point(19, 321)
        Me.Button78.Name = "Button78"
        Me.Button78.Size = New System.Drawing.Size(373, 23)
        Me.Button78.TabIndex = 2
        Me.Button78.Text = "Start CMD"
        Me.Button78.UseVisualStyleBackColor = True
        '
        'GroupFM
        '
        Me.GroupFM.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupFM.BackColor = System.Drawing.Color.Transparent
        Me.GroupFM.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupFM.Controls.Add(Me.Button70)
        Me.GroupFM.Controls.Add(Me.ListView4)
        Me.GroupFM.Controls.Add(Me.CheckBox1)
        Me.GroupFM.Controls.Add(Me.TextBox16)
        Me.GroupFM.Controls.Add(Me.Label10)
        Me.GroupFM.Controls.Add(Me.ProgressBar1)
        Me.GroupFM.Controls.Add(Me.ComboBox1)
        Me.GroupFM.Controls.Add(Me.Button69)
        Me.GroupFM.Controls.Add(Me.Button68)
        Me.GroupFM.Controls.Add(Me.Button67)
        Me.GroupFM.Controls.Add(Me.Button66)
        Me.GroupFM.Controls.Add(Me.Button65)
        Me.GroupFM.Controls.Add(Me.Button41)
        Me.GroupFM.Controls.Add(Me.Button42)
        Me.GroupFM.Controls.Add(Me.Button44)
        Me.GroupFM.Controls.Add(Me.Button45)
        Me.GroupFM.Controls.Add(Me.Button64)
        Me.GroupFM.Controls.Add(Me.Label9)
        Me.GroupFM.Location = New System.Drawing.Point(227, 33)
        Me.GroupFM.Name = "GroupFM"
        Me.GroupFM.Size = New System.Drawing.Size(420, 348)
        Me.GroupFM.TabIndex = 38
        Me.GroupFM.TabStop = False
        Me.GroupFM.Text = "File Manager"
        Me.GroupFM.Visible = False
        '
        'Button70
        '
        Me.Button70.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button70.Location = New System.Drawing.Point(328, 20)
        Me.Button70.Name = "Button70"
        Me.Button70.Size = New System.Drawing.Size(86, 23)
        Me.Button70.TabIndex = 39
        Me.Button70.Text = "PreView"
        Me.Button70.UseVisualStyleBackColor = True
        Me.Button70.Visible = False
        '
        'ListView4
        '
        Me.ListView4.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ListView4.BackColor = System.Drawing.SystemColors.GradientInactiveCaption
        Me.ListView4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListView4.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader13})
        Me.ListView4.FullRowSelect = True
        Me.ListView4.GridLines = True
        Me.ListView4.HideSelection = False
        Me.ListView4.LargeImageList = Me.Images2
        Me.ListView4.Location = New System.Drawing.Point(17, 46)
        Me.ListView4.MultiSelect = False
        Me.ListView4.Name = "ListView4"
        Me.ListView4.ShowGroups = False
        Me.ListView4.Size = New System.Drawing.Size(306, 228)
        Me.ListView4.SmallImageList = Me.Images2
        Me.ListView4.TabIndex = 38
        Me.ListView4.UseCompatibleStateImageBehavior = False
        Me.ListView4.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader13
        '
        Me.ColumnHeader13.Text = "Folder/File"
        Me.ColumnHeader13.Width = 285
        '
        'Images2
        '
        Me.Images2.ImageStream = CType(resources.GetObject("Images2.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.Images2.TransparentColor = System.Drawing.Color.Transparent
        Me.Images2.Images.SetKeyName(0, "Access 2007.png")
        Me.Images2.Images.SetKeyName(1, "folder_win.png")
        Me.Images2.Images.SetKeyName(2, "ico_console0001.ico")
        Me.Images2.Images.SetKeyName(3, "ico_url0001.ico")
        Me.Images2.Images.SetKeyName(4, "ico_wmploc0001.ico")
        Me.Images2.Images.SetKeyName(5, "MS- Office-Word-Icon-Akkasone.png")
        Me.Images2.Images.SetKeyName(6, "MS-Office-Excel-Icon-Akkasone.png")
        Me.Images2.Images.SetKeyName(7, "MS-Office-PowerPoint-Icon-Akkasone.png")
        Me.Images2.Images.SetKeyName(8, "Picasa.png")
        Me.Images2.Images.SetKeyName(9, "RAR.png")
        Me.Images2.Images.SetKeyName(10, "terminal.png")
        Me.Images2.Images.SetKeyName(11, "zip_blue.png")
        Me.Images2.Images.SetKeyName(12, "runprog.png")
        Me.Images2.Images.SetKeyName(13, "ico_mapi320002.ico")
        Me.Images2.Images.SetKeyName(14, "txt.png")
        Me.Images2.Images.SetKeyName(15, "Adobe.png")
        Me.Images2.Images.SetKeyName(16, "exe.png")
        Me.Images2.Images.SetKeyName(17, "trans.ico")
        '
        'CheckBox1
        '
        Me.CheckBox1.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.BackColor = System.Drawing.Color.Transparent
        Me.CheckBox1.Location = New System.Drawing.Point(369, 93)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(48, 17)
        Me.CheckBox1.TabIndex = 37
        Me.CheckBox1.Text = "Hide"
        Me.CheckBox1.UseVisualStyleBackColor = False
        '
        'TextBox16
        '
        Me.TextBox16.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox16.Location = New System.Drawing.Point(328, 287)
        Me.TextBox16.Name = "TextBox16"
        Me.TextBox16.Size = New System.Drawing.Size(86, 20)
        Me.TextBox16.TabIndex = 36
        Me.TextBox16.Visible = False
        '
        'Label10
        '
        Me.Label10.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label10.AutoSize = True
        Me.Label10.BackColor = System.Drawing.Color.Transparent
        Me.Label10.Location = New System.Drawing.Point(328, 274)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(59, 13)
        Me.Label10.TabIndex = 35
        Me.Label10.Text = "Make DIR:"
        Me.Label10.Visible = False
        '
        'Label9
        '
        Me.Label9.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label9.BackColor = System.Drawing.Color.Transparent
        Me.Label9.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.Label9.Location = New System.Drawing.Point(6, 310)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(408, 29)
        Me.Label9.TabIndex = 34
        Me.Label9.UseCompatibleTextRendering = True
        '
        'ProgressBar1
        '
        Me.ProgressBar1.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ProgressBar1.Location = New System.Drawing.Point(17, 284)
        Me.ProgressBar1.Name = "ProgressBar1"
        Me.ProgressBar1.Size = New System.Drawing.Size(306, 23)
        Me.ProgressBar1.TabIndex = 33
        '
        'ComboBox1
        '
        Me.ComboBox1.Anchor = System.Windows.Forms.AnchorStyles.Top
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(78, 19)
        Me.ComboBox1.MaxDropDownItems = 15
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(193, 21)
        Me.ComboBox1.TabIndex = 31
        Me.ComboBox1.Text = "Drives"
        '
        'Button69
        '
        Me.Button69.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button69.BackColor = System.Drawing.Color.Olive
        Me.Button69.Location = New System.Drawing.Point(328, 251)
        Me.Button69.Name = "Button69"
        Me.Button69.Size = New System.Drawing.Size(86, 23)
        Me.Button69.TabIndex = 30
        Me.Button69.Text = "Cancel"
        Me.Button69.UseVisualStyleBackColor = False
        '
        'Button68
        '
        Me.Button68.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button68.Location = New System.Drawing.Point(328, 228)
        Me.Button68.Name = "Button68"
        Me.Button68.Size = New System.Drawing.Size(86, 23)
        Me.Button68.TabIndex = 29
        Me.Button68.Text = "Refresh"
        Me.Button68.UseVisualStyleBackColor = True
        '
        'Button67
        '
        Me.Button67.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button67.Location = New System.Drawing.Point(328, 205)
        Me.Button67.Name = "Button67"
        Me.Button67.Size = New System.Drawing.Size(86, 23)
        Me.Button67.TabIndex = 28
        Me.Button67.Text = "File Size"
        Me.Button67.UseVisualStyleBackColor = True
        '
        'Button66
        '
        Me.Button66.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button66.Location = New System.Drawing.Point(328, 182)
        Me.Button66.Name = "Button66"
        Me.Button66.Size = New System.Drawing.Size(86, 23)
        Me.Button66.TabIndex = 27
        Me.Button66.Text = "Rename"
        Me.Button66.UseVisualStyleBackColor = True
        '
        'Button65
        '
        Me.Button65.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button65.Location = New System.Drawing.Point(328, 159)
        Me.Button65.Name = "Button65"
        Me.Button65.Size = New System.Drawing.Size(86, 23)
        Me.Button65.TabIndex = 26
        Me.Button65.Text = "Make Folder"
        Me.Button65.UseVisualStyleBackColor = True
        '
        'Button41
        '
        Me.Button41.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button41.Location = New System.Drawing.Point(328, 136)
        Me.Button41.Name = "Button41"
        Me.Button41.Size = New System.Drawing.Size(86, 23)
        Me.Button41.TabIndex = 25
        Me.Button41.Text = "Delete Folder"
        Me.Button41.UseVisualStyleBackColor = True
        '
        'Button42
        '
        Me.Button42.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button42.Location = New System.Drawing.Point(328, 113)
        Me.Button42.Name = "Button42"
        Me.Button42.Size = New System.Drawing.Size(86, 23)
        Me.Button42.TabIndex = 24
        Me.Button42.Text = "Delete File"
        Me.Button42.UseVisualStyleBackColor = True
        '
        'Button44
        '
        Me.Button44.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button44.Location = New System.Drawing.Point(328, 90)
        Me.Button44.Name = "Button44"
        Me.Button44.Size = New System.Drawing.Size(38, 23)
        Me.Button44.TabIndex = 22
        Me.Button44.Text = "Run File"
        Me.Button44.UseVisualStyleBackColor = True
        '
        'Button45
        '
        Me.Button45.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button45.Location = New System.Drawing.Point(328, 67)
        Me.Button45.Name = "Button45"
        Me.Button45.Size = New System.Drawing.Size(86, 23)
        Me.Button45.TabIndex = 21
        Me.Button45.Text = "Upload"
        Me.Button45.UseVisualStyleBackColor = True
        '
        'Button64
        '
        Me.Button64.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button64.Location = New System.Drawing.Point(328, 44)
        Me.Button64.Name = "Button64"
        Me.Button64.Size = New System.Drawing.Size(86, 23)
        Me.Button64.TabIndex = 20
        Me.Button64.Text = "Download"
        Me.Button64.UseVisualStyleBackColor = True
        '
        'GroupKL
        '
        Me.GroupKL.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupKL.BackColor = System.Drawing.Color.Transparent
        Me.GroupKL.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupKL.Controls.Add(Me.Button73)
        Me.GroupKL.Controls.Add(Me.Button47)
        Me.GroupKL.Controls.Add(Me.Button38)
        Me.GroupKL.Controls.Add(Me.Button37)
        Me.GroupKL.Controls.Add(Me.Button75)
        Me.GroupKL.Controls.Add(Me.TextBox13)
        Me.GroupKL.Location = New System.Drawing.Point(227, 33)
        Me.GroupKL.Name = "GroupKL"
        Me.GroupKL.Size = New System.Drawing.Size(420, 348)
        Me.GroupKL.TabIndex = 36
        Me.GroupKL.TabStop = False
        Me.GroupKL.Text = "KeyLogger"
        Me.GroupKL.Visible = False
        '
        'Button73
        '
        Me.Button73.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.Button73.Location = New System.Drawing.Point(5, 319)
        Me.Button73.Name = "Button73"
        Me.Button73.Size = New System.Drawing.Size(75, 23)
        Me.Button73.TabIndex = 5
        Me.Button73.Text = "Install"
        Me.Button73.UseVisualStyleBackColor = True
        '
        'Button47
        '
        Me.Button47.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.Button47.Location = New System.Drawing.Point(331, 319)
        Me.Button47.Name = "Button47"
        Me.Button47.Size = New System.Drawing.Size(83, 23)
        Me.Button47.TabIndex = 4
        Me.Button47.Text = "Clear Screen"
        Me.Button47.UseVisualStyleBackColor = True
        '
        'Button38
        '
        Me.Button38.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.Button38.Location = New System.Drawing.Point(250, 319)
        Me.Button38.Name = "Button38"
        Me.Button38.Size = New System.Drawing.Size(75, 23)
        Me.Button38.TabIndex = 3
        Me.Button38.Text = "Save as"
        Me.Button38.UseVisualStyleBackColor = True
        '
        'Button37
        '
        Me.Button37.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.Button37.Location = New System.Drawing.Point(169, 319)
        Me.Button37.Name = "Button37"
        Me.Button37.Size = New System.Drawing.Size(75, 23)
        Me.Button37.TabIndex = 2
        Me.Button37.Text = "Delete"
        Me.Button37.UseVisualStyleBackColor = True
        '
        'Button75
        '
        Me.Button75.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.Button75.Location = New System.Drawing.Point(87, 319)
        Me.Button75.Name = "Button75"
        Me.Button75.Size = New System.Drawing.Size(75, 23)
        Me.Button75.TabIndex = 1
        Me.Button75.Text = "Read"
        Me.Button75.UseVisualStyleBackColor = True
        '
        'TextBox13
        '
        Me.TextBox13.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox13.BackColor = System.Drawing.Color.Lavender
        Me.TextBox13.Location = New System.Drawing.Point(6, 17)
        Me.TextBox13.MaxLength = 100000
        Me.TextBox13.Multiline = True
        Me.TextBox13.Name = "TextBox13"
        Me.TextBox13.ReadOnly = True
        Me.TextBox13.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.TextBox13.Size = New System.Drawing.Size(408, 296)
        Me.TextBox13.TabIndex = 0
        '
        'GroupScreen
        '
        Me.GroupScreen.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupScreen.BackColor = System.Drawing.Color.Transparent
        Me.GroupScreen.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupScreen.Controls.Add(Me.TextBox29)
        Me.GroupScreen.Controls.Add(Me.ComboBox5)
        Me.GroupScreen.Controls.Add(Me.NumericUpDown1)
        Me.GroupScreen.Controls.Add(Me.TrackBar1)
        Me.GroupScreen.Controls.Add(Me.Label18)
        Me.GroupScreen.Controls.Add(Me.Button83)
        Me.GroupScreen.Controls.Add(Me.PictureBox2)
        Me.GroupScreen.Location = New System.Drawing.Point(227, 33)
        Me.GroupScreen.Name = "GroupScreen"
        Me.GroupScreen.Size = New System.Drawing.Size(420, 348)
        Me.GroupScreen.TabIndex = 37
        Me.GroupScreen.TabStop = False
        Me.GroupScreen.Text = "ScreenShots"
        Me.GroupScreen.Visible = False
        '
        'TextBox29
        '
        Me.TextBox29.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox29.Location = New System.Drawing.Point(34, 297)
        Me.TextBox29.Name = "TextBox29"
        Me.TextBox29.Size = New System.Drawing.Size(346, 20)
        Me.TextBox29.TabIndex = 14
        '
        'ComboBox5
        '
        Me.ComboBox5.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ComboBox5.Items.AddRange(New Object() {"High Quality", "Good Quality", "Low Quality", "Lowest Quality"})
        Me.ComboBox5.Location = New System.Drawing.Point(134, 321)
        Me.ComboBox5.Name = "ComboBox5"
        Me.ComboBox5.Size = New System.Drawing.Size(93, 21)
        Me.ComboBox5.TabIndex = 0
        Me.ComboBox5.Text = "Good Quality"
        Me.ToolTip1.SetToolTip(Me.ComboBox5, "Image General Quality")
        '
        'NumericUpDown1
        '
        Me.NumericUpDown1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.NumericUpDown1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.NumericUpDown1.Location = New System.Drawing.Point(300, 321)
        Me.NumericUpDown1.Name = "NumericUpDown1"
        Me.NumericUpDown1.Size = New System.Drawing.Size(49, 22)
        Me.NumericUpDown1.TabIndex = 13
        Me.ToolTip1.SetToolTip(Me.NumericUpDown1, "Image Pixel Quality")
        Me.NumericUpDown1.Value = New Decimal(New Integer() {40, 0, 0, 0})
        '
        'TrackBar1
        '
        Me.TrackBar1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TrackBar1.AutoSize = False
        Me.TrackBar1.BackColor = System.Drawing.Color.CornflowerBlue
        Me.TrackBar1.Location = New System.Drawing.Point(228, 320)
        Me.TrackBar1.Maximum = 100
        Me.TrackBar1.Name = "TrackBar1"
        Me.TrackBar1.Size = New System.Drawing.Size(70, 23)
        Me.TrackBar1.TabIndex = 12
        Me.TrackBar1.TickStyle = System.Windows.Forms.TickStyle.None
        Me.ToolTip1.SetToolTip(Me.TrackBar1, "Image Pixel Quality")
        Me.TrackBar1.Value = 40
        '
        'Label18
        '
        Me.Label18.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Label18.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.Label18.ForeColor = System.Drawing.Color.Red
        Me.Label18.Location = New System.Drawing.Point(8, 318)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(120, 28)
        Me.Label18.TabIndex = 11
        '
        'Button83
        '
        Me.Button83.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button83.BackColor = System.Drawing.SystemColors.ButtonHighlight
        Me.Button83.ContextMenuStrip = Me.SSCM
        Me.Button83.Location = New System.Drawing.Point(351, 321)
        Me.Button83.Name = "Button83"
        Me.Button83.Size = New System.Drawing.Size(63, 23)
        Me.Button83.TabIndex = 10
        Me.Button83.Text = "Menu"
        Me.ToolTip1.SetToolTip(Me.Button83, "Screenshots Menu...")
        Me.Button83.UseVisualStyleBackColor = False
        '
        'SSCM
        '
        Me.SSCM.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.TakeScreenShotToolStripMenuItem, Me.StartSequenceToolStripMenuItem, Me.MouseControlToolStripMenuItem, Me.SaveToolStripMenuItem, Me.FullScreenToolStripMenuItem})
        Me.SSCM.Name = "SSCM"
        Me.SSCM.Size = New System.Drawing.Size(162, 114)
        '
        'TakeScreenShotToolStripMenuItem
        '
        Me.TakeScreenShotToolStripMenuItem.Name = "TakeScreenShotToolStripMenuItem"
        Me.TakeScreenShotToolStripMenuItem.Size = New System.Drawing.Size(161, 22)
        Me.TakeScreenShotToolStripMenuItem.Text = "Take ScreenShot"
        '
        'StartSequenceToolStripMenuItem
        '
        Me.StartSequenceToolStripMenuItem.Name = "StartSequenceToolStripMenuItem"
        Me.StartSequenceToolStripMenuItem.Size = New System.Drawing.Size(161, 22)
        Me.StartSequenceToolStripMenuItem.Text = "Start Sequence"
        '
        'MouseControlToolStripMenuItem
        '
        Me.MouseControlToolStripMenuItem.Name = "MouseControlToolStripMenuItem"
        Me.MouseControlToolStripMenuItem.Size = New System.Drawing.Size(161, 22)
        Me.MouseControlToolStripMenuItem.Text = "Remote Control"
        Me.MouseControlToolStripMenuItem.Visible = False
        '
        'SaveToolStripMenuItem
        '
        Me.SaveToolStripMenuItem.Name = "SaveToolStripMenuItem"
        Me.SaveToolStripMenuItem.Size = New System.Drawing.Size(161, 22)
        Me.SaveToolStripMenuItem.Text = "Save"
        '
        'FullScreenToolStripMenuItem
        '
        Me.FullScreenToolStripMenuItem.Name = "FullScreenToolStripMenuItem"
        Me.FullScreenToolStripMenuItem.Size = New System.Drawing.Size(161, 22)
        Me.FullScreenToolStripMenuItem.Text = "Full Screen"
        '
        'PictureBox2
        '
        Me.PictureBox2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.PictureBox2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.PictureBox2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.PictureBox2.Location = New System.Drawing.Point(34, 16)
        Me.PictureBox2.Name = "PictureBox2"
        Me.PictureBox2.Size = New System.Drawing.Size(346, 277)
        Me.PictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox2.TabIndex = 6
        Me.PictureBox2.TabStop = False
        '
        'ListView1
        '
        Me.ListView1.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ListView1.BackColor = System.Drawing.SystemColors.GradientInactiveCaption
        Me.ListView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3, Me.ColumnHeader4, Me.ColumnHeader12})
        Me.ListView1.ContextMenuStrip = Me.IPtoGeo
        Me.ListView1.FullRowSelect = True
        Me.ListView1.GridLines = True
        Me.ListView1.Location = New System.Drawing.Point(13, 383)
        Me.ListView1.MultiSelect = False
        Me.ListView1.Name = "ListView1"
        Me.ListView1.ShowGroups = False
        Me.ListView1.Size = New System.Drawing.Size(635, 264)
        Me.ListView1.TabIndex = 44
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "IP"
        Me.ColumnHeader1.Width = 80
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "Computer Name"
        Me.ColumnHeader2.Width = 140
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "UserName"
        Me.ColumnHeader3.Width = 150
        '
        'ColumnHeader4
        '
        Me.ColumnHeader4.Text = "OS"
        Me.ColumnHeader4.Width = 210
        '
        'ColumnHeader12
        '
        Me.ColumnHeader12.Text = "V."
        Me.ColumnHeader12.Width = 35
        '
        'IPtoGeo
        '
        Me.IPtoGeo.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.FindCountryToolStripMenuItem})
        Me.IPtoGeo.Name = "IPtoGeo"
        Me.IPtoGeo.Size = New System.Drawing.Size(144, 26)
        '
        'FindCountryToolStripMenuItem
        '
        Me.FindCountryToolStripMenuItem.Name = "FindCountryToolStripMenuItem"
        Me.FindCountryToolStripMenuItem.Size = New System.Drawing.Size(143, 22)
        Me.FindCountryToolStripMenuItem.Text = "Find Country"
        '
        'GroupMSG
        '
        Me.GroupMSG.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupMSG.BackColor = System.Drawing.Color.Transparent
        Me.GroupMSG.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupMSG.Controls.Add(Me.Label8)
        Me.GroupMSG.Controls.Add(Me.Button63)
        Me.GroupMSG.Controls.Add(Me.Button62)
        Me.GroupMSG.Controls.Add(Me.Button61)
        Me.GroupMSG.Controls.Add(Me.Button55)
        Me.GroupMSG.Controls.Add(Me.TextBox4)
        Me.GroupMSG.Controls.Add(Me.TextBox3)
        Me.GroupMSG.Controls.Add(Me.Label2)
        Me.GroupMSG.Controls.Add(Me.Label1)
        Me.GroupMSG.Controls.Add(Me.GroupMSGBuilt)
        Me.GroupMSG.Controls.Add(Me.Button2)
        Me.GroupMSG.Controls.Add(Me.Button1)
        Me.GroupMSG.Location = New System.Drawing.Point(227, 33)
        Me.GroupMSG.Name = "GroupMSG"
        Me.GroupMSG.Size = New System.Drawing.Size(420, 348)
        Me.GroupMSG.TabIndex = 1
        Me.GroupMSG.TabStop = False
        Me.GroupMSG.Text = "Messages"
        Me.GroupMSG.Visible = False
        '
        'Label8
        '
        Me.Label8.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Label8.AutoSize = True
        Me.Label8.BackColor = System.Drawing.Color.Transparent
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 20.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.Label8.Location = New System.Drawing.Point(68, 76)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(0, 31)
        Me.Label8.TabIndex = 15
        '
        'Button63
        '
        Me.Button63.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Button63.Image = Global.Resources.ques
        Me.Button63.Location = New System.Drawing.Point(238, 19)
        Me.Button63.Name = "Button63"
        Me.Button63.Size = New System.Drawing.Size(53, 53)
        Me.Button63.TabIndex = 14
        Me.Button63.UseVisualStyleBackColor = True
        '
        'Button62
        '
        Me.Button62.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Button62.Image = Global.Resources.infor
        Me.Button62.Location = New System.Drawing.Point(179, 19)
        Me.Button62.Name = "Button62"
        Me.Button62.Size = New System.Drawing.Size(53, 53)
        Me.Button62.TabIndex = 13
        Me.Button62.UseVisualStyleBackColor = True
        '
        'Button61
        '
        Me.Button61.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Button61.Image = Global.Resources.crit
        Me.Button61.Location = New System.Drawing.Point(120, 19)
        Me.Button61.Name = "Button61"
        Me.Button61.Size = New System.Drawing.Size(53, 53)
        Me.Button61.TabIndex = 12
        Me.Button61.UseVisualStyleBackColor = True
        '
        'Button55
        '
        Me.Button55.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Button55.Image = Global.Resources.warn
        Me.Button55.Location = New System.Drawing.Point(61, 19)
        Me.Button55.Name = "Button55"
        Me.Button55.Size = New System.Drawing.Size(53, 53)
        Me.Button55.TabIndex = 11
        Me.Button55.UseVisualStyleBackColor = True
        '
        'TextBox4
        '
        Me.TextBox4.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.TextBox4.Location = New System.Drawing.Point(93, 269)
        Me.TextBox4.Name = "TextBox4"
        Me.TextBox4.Size = New System.Drawing.Size(321, 20)
        Me.TextBox4.TabIndex = 6
        Me.TextBox4.Text = "H@cked by @n0nimi0u$"
        '
        'TextBox3
        '
        Me.TextBox3.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.TextBox3.Location = New System.Drawing.Point(93, 241)
        Me.TextBox3.Name = "TextBox3"
        Me.TextBox3.Size = New System.Drawing.Size(321, 20)
        Me.TextBox3.TabIndex = 5
        Me.TextBox3.Text = "Warning!!!"
        '
        'Label2
        '
        Me.Label2.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.Transparent
        Me.Label2.Location = New System.Drawing.Point(14, 272)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(74, 13)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Message Text"
        '
        'Label1
        '
        Me.Label1.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Location = New System.Drawing.Point(16, 244)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(73, 13)
        Me.Label1.TabIndex = 3
        Me.Label1.Text = "Message Title"
        '
        'GroupMSGBuilt
        '
        Me.GroupMSGBuilt.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.GroupMSGBuilt.BackColor = System.Drawing.Color.Transparent
        Me.GroupMSGBuilt.Controls.Add(Me.RadioButton6)
        Me.GroupMSGBuilt.Controls.Add(Me.RadioButton5)
        Me.GroupMSGBuilt.Controls.Add(Me.RadioButton4)
        Me.GroupMSGBuilt.Controls.Add(Me.RadioButton3)
        Me.GroupMSGBuilt.Controls.Add(Me.RadioButton2)
        Me.GroupMSGBuilt.Controls.Add(Me.RadioButton1)
        Me.GroupMSGBuilt.Location = New System.Drawing.Point(31, 110)
        Me.GroupMSGBuilt.Name = "GroupMSGBuilt"
        Me.GroupMSGBuilt.Size = New System.Drawing.Size(344, 112)
        Me.GroupMSGBuilt.TabIndex = 2
        Me.GroupMSGBuilt.TabStop = False
        Me.GroupMSGBuilt.Text = "MessageBox Buttons"
        '
        'RadioButton6
        '
        Me.RadioButton6.AutoSize = True
        Me.RadioButton6.Location = New System.Drawing.Point(249, 85)
        Me.RadioButton6.Name = "RadioButton6"
        Me.RadioButton6.Size = New System.Drawing.Size(89, 17)
        Me.RadioButton6.TabIndex = 5
        Me.RadioButton6.TabStop = True
        Me.RadioButton6.Text = "Retry, Cancel"
        Me.RadioButton6.UseVisualStyleBackColor = True
        '
        'RadioButton5
        '
        Me.RadioButton5.AutoSize = True
        Me.RadioButton5.Location = New System.Drawing.Point(249, 51)
        Me.RadioButton5.Name = "RadioButton5"
        Me.RadioButton5.Size = New System.Drawing.Size(78, 17)
        Me.RadioButton5.TabIndex = 4
        Me.RadioButton5.TabStop = True
        Me.RadioButton5.Text = "Ok, Cancel"
        Me.RadioButton5.UseVisualStyleBackColor = True
        '
        'RadioButton4
        '
        Me.RadioButton4.AutoSize = True
        Me.RadioButton4.Location = New System.Drawing.Point(249, 19)
        Me.RadioButton4.Name = "RadioButton4"
        Me.RadioButton4.Size = New System.Drawing.Size(63, 17)
        Me.RadioButton4.TabIndex = 3
        Me.RadioButton4.TabStop = True
        Me.RadioButton4.Text = "Yes, No"
        Me.RadioButton4.UseVisualStyleBackColor = True
        '
        'RadioButton3
        '
        Me.RadioButton3.AutoSize = True
        Me.RadioButton3.Location = New System.Drawing.Point(33, 85)
        Me.RadioButton3.Name = "RadioButton3"
        Me.RadioButton3.Size = New System.Drawing.Size(102, 17)
        Me.RadioButton3.TabIndex = 2
        Me.RadioButton3.TabStop = True
        Me.RadioButton3.Text = "Yes, No, Cancel"
        Me.RadioButton3.UseVisualStyleBackColor = True
        '
        'RadioButton2
        '
        Me.RadioButton2.AutoSize = True
        Me.RadioButton2.Location = New System.Drawing.Point(33, 51)
        Me.RadioButton2.Name = "RadioButton2"
        Me.RadioButton2.Size = New System.Drawing.Size(117, 17)
        Me.RadioButton2.TabIndex = 1
        Me.RadioButton2.TabStop = True
        Me.RadioButton2.Text = "Abort, Retry, Ignore"
        Me.RadioButton2.UseVisualStyleBackColor = True
        '
        'RadioButton1
        '
        Me.RadioButton1.AutoSize = True
        Me.RadioButton1.Location = New System.Drawing.Point(33, 19)
        Me.RadioButton1.Name = "RadioButton1"
        Me.RadioButton1.Size = New System.Drawing.Size(39, 17)
        Me.RadioButton1.TabIndex = 0
        Me.RadioButton1.TabStop = True
        Me.RadioButton1.Text = "Ok"
        Me.RadioButton1.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Button2.Location = New System.Drawing.Point(326, 48)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 1
        Me.Button2.Text = "Send"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Button1.Location = New System.Drawing.Point(326, 19)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "Test"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.OpenToolStripMenuItem, Me.ExitToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(104, 48)
        '
        'OpenToolStripMenuItem
        '
        Me.OpenToolStripMenuItem.Image = Global.Resources.kded
        Me.OpenToolStripMenuItem.Name = "OpenToolStripMenuItem"
        Me.OpenToolStripMenuItem.Size = New System.Drawing.Size(103, 22)
        Me.OpenToolStripMenuItem.Text = "Open"
        '
        'ExitToolStripMenuItem
        '
        Me.ExitToolStripMenuItem.Image = Global.Resources.WindowsTurn
        Me.ExitToolStripMenuItem.Name = "ExitToolStripMenuItem"
        Me.ExitToolStripMenuItem.Size = New System.Drawing.Size(103, 22)
        Me.ExitToolStripMenuItem.Text = "Exit"
        '
        'Button14
        '
        Me.Button14.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button14.BackColor = System.Drawing.SystemColors.ActiveBorder
        Me.Button14.FlatAppearance.BorderSize = 0
        Me.Button14.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.Button14.ForeColor = System.Drawing.Color.Red
        Me.Button14.Location = New System.Drawing.Point(638, 4)
        Me.Button14.Name = "Button14"
        Me.Button14.Size = New System.Drawing.Size(20, 20)
        Me.Button14.TabIndex = 46
        Me.Button14.Text = "X"
        Me.ToolTip1.SetToolTip(Me.Button14, "Exit")
        Me.Button14.UseVisualStyleBackColor = True
        '
        'Button15
        '
        Me.Button15.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button15.Font = New System.Drawing.Font("Microsoft Sans Serif", 6.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.Button15.ForeColor = System.Drawing.Color.Red
        Me.Button15.Location = New System.Drawing.Point(617, 4)
        Me.Button15.Name = "Button15"
        Me.Button15.Size = New System.Drawing.Size(20, 20)
        Me.Button15.TabIndex = 47
        Me.Button15.Text = "_"
        Me.ToolTip1.SetToolTip(Me.Button15, "Minimize")
        Me.Button15.UseVisualStyleBackColor = True
        '
        'Button79
        '
        Me.Button79.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button79.Font = New System.Drawing.Font("Microsoft Sans Serif", 6.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.Button79.ForeColor = System.Drawing.Color.Red
        Me.Button79.Location = New System.Drawing.Point(539, 4)
        Me.Button79.Name = "Button79"
        Me.Button79.Size = New System.Drawing.Size(46, 20)
        Me.Button79.TabIndex = 48
        Me.Button79.Text = "____"
        Me.ToolTip1.SetToolTip(Me.Button79, "To System Tray...")
        Me.Button79.UseVisualStyleBackColor = True
        '
        'Button81
        '
        Me.Button81.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button81.Font = New System.Drawing.Font("Microsoft Sans Serif", 6.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button81.ForeColor = System.Drawing.Color.Red
        Me.Button81.Location = New System.Drawing.Point(591, 4)
        Me.Button81.Name = "Button81"
        Me.Button81.Size = New System.Drawing.Size(25, 20)
        Me.Button81.TabIndex = 49
        Me.Button81.Text = "[]"
        Me.ToolTip1.SetToolTip(Me.Button81, "Maximize")
        Me.Button81.UseVisualStyleBackColor = True
        '
        'Button87
        '
        Me.Button87.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button87.Font = New System.Drawing.Font("Microsoft Sans Serif", 6.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.Button87.ForeColor = System.Drawing.Color.Red
        Me.Button87.Location = New System.Drawing.Point(409, 4)
        Me.Button87.Name = "Button87"
        Me.Button87.Size = New System.Drawing.Size(122, 20)
        Me.Button87.TabIndex = 54
        Me.Button87.Text = "ENABLE TOPMOST"
        Me.ToolTip1.SetToolTip(Me.Button87, "To System Tray...")
        Me.Button87.UseVisualStyleBackColor = True
        '
        'Notify
        '
        Me.Notify.BalloonTipText = "" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10)
        Me.Notify.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Notify.Icon = CType(resources.GetObject("Notify.Icon"), System.Drawing.Icon)
        Me.Notify.Text = "ARC"
        '
        'CheckBox2
        '
        Me.CheckBox2.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.CheckBox2.AutoSize = True
        Me.CheckBox2.BackColor = System.Drawing.Color.Transparent
        Me.CheckBox2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.CheckBox2.Checked = True
        Me.CheckBox2.CheckState = System.Windows.Forms.CheckState.Checked
        Me.CheckBox2.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.CheckBox2.ForeColor = System.Drawing.Color.DarkBlue
        Me.CheckBox2.Location = New System.Drawing.Point(12, 650)
        Me.CheckBox2.Name = "CheckBox2"
        Me.CheckBox2.Size = New System.Drawing.Size(275, 17)
        Me.CheckBox2.TabIndex = 50
        Me.CheckBox2.Text = "Receive Confirmation Messages For Actions"
        Me.CheckBox2.UseVisualStyleBackColor = False
        '
        'Timer1
        '
        Me.Timer1.Interval = 500
        '
        'Button40
        '
        Me.Button40.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button40.Location = New System.Drawing.Point(533, 647)
        Me.Button40.Name = "Button40"
        Me.Button40.Size = New System.Drawing.Size(115, 22)
        Me.Button40.TabIndex = 52
        Me.Button40.Text = "Start Listening..."
        Me.Button40.UseVisualStyleBackColor = True
        '
        'Label16
        '
        Me.Label16.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label16.AutoSize = True
        Me.Label16.BackColor = System.Drawing.Color.Transparent
        Me.Label16.Location = New System.Drawing.Point(460, 651)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(29, 13)
        Me.Label16.TabIndex = 53
        Me.Label16.Text = "Port:"
        '
        'TextBox18
        '
        Me.TextBox18.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox18.Location = New System.Drawing.Point(489, 648)
        Me.TextBox18.Name = "TextBox18"
        Me.TextBox18.Size = New System.Drawing.Size(42, 20)
        Me.TextBox18.TabIndex = 51
        '
        'GroupBox1
        '
        Me.GroupBox1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox1.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupBox1.Controls.Add(Me.TreeView2)
        Me.GroupBox1.Location = New System.Drawing.Point(227, 33)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(420, 348)
        Me.GroupBox1.TabIndex = 40
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Registry Viewer"
        Me.GroupBox1.Visible = False
        '
        'TreeView2
        '
        Me.TreeView2.BackColor = System.Drawing.Color.Lavender
        Me.TreeView2.Dock = System.Windows.Forms.DockStyle.Fill
        Me.TreeView2.ImageIndex = 0
        Me.TreeView2.ImageList = Me.imageList1
        Me.TreeView2.Location = New System.Drawing.Point(3, 16)
        Me.TreeView2.Name = "TreeView2"
        Me.TreeView2.SelectedImageIndex = 0
        Me.TreeView2.Size = New System.Drawing.Size(414, 329)
        Me.TreeView2.TabIndex = 0
        '
        'imageList1
        '
        Me.imageList1.ImageStream = CType(resources.GetObject("imageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.imageList1.TransparentColor = System.Drawing.Color.Fuchsia
        Me.imageList1.Images.SetKeyName(0, "VSFolder_closed.bmp")
        Me.imageList1.Images.SetKeyName(1, "VSFolder_open.bmp")
        Me.imageList1.Images.SetKeyName(2, "Control_TextBox.bmp")
        Me.imageList1.Images.SetKeyName(3, "VSFolder_closed_virtual.bmp")
        Me.imageList1.Images.SetKeyName(4, "VSFolder_open_virtual.bmp")
        '
        'GroupBox2
        '
        Me.GroupBox2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox2.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupBox2.Controls.Add(Me.ProgressBar4)
        Me.GroupBox2.Controls.Add(Me.Label21)
        Me.GroupBox2.Controls.Add(Me.Label19)
        Me.GroupBox2.Controls.Add(Me.Button76)
        Me.GroupBox2.Controls.Add(Me.TextBox20)
        Me.GroupBox2.Controls.Add(Me.Button16)
        Me.GroupBox2.Controls.Add(Me.ListView5)
        Me.GroupBox2.Controls.Add(Me.ProgressBar3)
        Me.GroupBox2.Controls.Add(Me.ComboBox3)
        Me.GroupBox2.Controls.Add(Me.Button86)
        Me.GroupBox2.Location = New System.Drawing.Point(227, 33)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(420, 348)
        Me.GroupBox2.TabIndex = 40
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Search File"
        Me.GroupBox2.Visible = False
        '
        'ProgressBar4
        '
        Me.ProgressBar4.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ProgressBar4.Location = New System.Drawing.Point(6, 316)
        Me.ProgressBar4.Name = "ProgressBar4"
        Me.ProgressBar4.Size = New System.Drawing.Size(221, 23)
        Me.ProgressBar4.TabIndex = 44
        '
        'Label21
        '
        Me.Label21.AutoSize = True
        Me.Label21.Location = New System.Drawing.Point(14, 48)
        Me.Label21.Name = "Label21"
        Me.Label21.Size = New System.Drawing.Size(62, 13)
        Me.Label21.TabIndex = 43
        Me.Label21.Text = "Search For:"
        '
        'Label19
        '
        Me.Label19.AutoSize = True
        Me.Label19.Location = New System.Drawing.Point(16, 24)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(56, 13)
        Me.Label19.TabIndex = 42
        Me.Label19.Text = "Search In:"
        '
        'Button76
        '
        Me.Button76.Location = New System.Drawing.Point(326, 44)
        Me.Button76.Name = "Button76"
        Me.Button76.Size = New System.Drawing.Size(86, 23)
        Me.Button76.TabIndex = 41
        Me.Button76.Text = "Search"
        Me.Button76.UseVisualStyleBackColor = True
        '
        'TextBox20
        '
        Me.TextBox20.Location = New System.Drawing.Point(78, 45)
        Me.TextBox20.Name = "TextBox20"
        Me.TextBox20.Size = New System.Drawing.Size(234, 20)
        Me.TextBox20.TabIndex = 40
        '
        'Button16
        '
        Me.Button16.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button16.Location = New System.Drawing.Point(232, 316)
        Me.Button16.Name = "Button16"
        Me.Button16.Size = New System.Drawing.Size(86, 23)
        Me.Button16.TabIndex = 39
        Me.Button16.Text = "PreView"
        Me.Button16.UseVisualStyleBackColor = True
        Me.Button16.Visible = False
        '
        'ListView5
        '
        Me.ListView5.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ListView5.BackColor = System.Drawing.SystemColors.GradientInactiveCaption
        Me.ListView5.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListView5.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader14, Me.ColumnHeader16, Me.ColumnHeader15})
        Me.ListView5.FullRowSelect = True
        Me.ListView5.GridLines = True
        Me.ListView5.HideSelection = False
        Me.ListView5.LargeImageList = Me.Images2
        Me.ListView5.Location = New System.Drawing.Point(6, 69)
        Me.ListView5.MultiSelect = False
        Me.ListView5.Name = "ListView5"
        Me.ListView5.ShowGroups = False
        Me.ListView5.Size = New System.Drawing.Size(408, 216)
        Me.ListView5.SmallImageList = Me.Images2
        Me.ListView5.TabIndex = 38
        Me.ListView5.UseCompatibleStateImageBehavior = False
        Me.ListView5.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader14
        '
        Me.ColumnHeader14.Text = "File"
        Me.ColumnHeader14.Width = 150
        '
        'ColumnHeader16
        '
        Me.ColumnHeader16.Text = "Size"
        '
        'ColumnHeader15
        '
        Me.ColumnHeader15.Text = "Location"
        Me.ColumnHeader15.Width = 150
        '
        'ProgressBar3
        '
        Me.ProgressBar3.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ProgressBar3.Location = New System.Drawing.Point(6, 290)
        Me.ProgressBar3.Name = "ProgressBar3"
        Me.ProgressBar3.Size = New System.Drawing.Size(406, 23)
        Me.ProgressBar3.TabIndex = 33
        '
        'ComboBox3
        '
        Me.ComboBox3.FormattingEnabled = True
        Me.ComboBox3.Location = New System.Drawing.Point(78, 19)
        Me.ComboBox3.MaxDropDownItems = 15
        Me.ComboBox3.Name = "ComboBox3"
        Me.ComboBox3.Size = New System.Drawing.Size(193, 21)
        Me.ComboBox3.TabIndex = 31
        Me.ComboBox3.Text = "Drives"
        '
        'Button86
        '
        Me.Button86.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button86.Location = New System.Drawing.Point(324, 316)
        Me.Button86.Name = "Button86"
        Me.Button86.Size = New System.Drawing.Size(86, 23)
        Me.Button86.TabIndex = 20
        Me.Button86.Text = "Download"
        Me.Button86.UseVisualStyleBackColor = True
        '
        'GroupBox3
        '
        Me.GroupBox3.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox3.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox3.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupBox3.Controls.Add(Me.ComboBox4)
        Me.GroupBox3.Controls.Add(Me.PictureBox3)
        Me.GroupBox3.Location = New System.Drawing.Point(227, 33)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(420, 348)
        Me.GroupBox3.TabIndex = 38
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "WebCam"
        Me.GroupBox3.Visible = False
        '
        'ComboBox4
        '
        Me.ComboBox4.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ComboBox4.FormattingEnabled = True
        Me.ComboBox4.Location = New System.Drawing.Point(15, 322)
        Me.ComboBox4.Name = "ComboBox4"
        Me.ComboBox4.Size = New System.Drawing.Size(395, 21)
        Me.ComboBox4.TabIndex = 11
        Me.ComboBox4.Text = "Choose WebCam Device..."
        '
        'PictureBox3
        '
        Me.PictureBox3.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.PictureBox3.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.PictureBox3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.PictureBox3.ContextMenuStrip = Me.WCCM
        Me.PictureBox3.Location = New System.Drawing.Point(2, 16)
        Me.PictureBox3.Name = "PictureBox3"
        Me.PictureBox3.Size = New System.Drawing.Size(415, 301)
        Me.PictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox3.TabIndex = 6
        Me.PictureBox3.TabStop = False
        '
        'WCCM
        '
        Me.WCCM.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripMenuItem1, Me.ToolStripMenuItem2, Me.CloseWebCamConnectionToolStripMenuItem, Me.ToolStripMenuItem5, Me.ToolStripMenuItem4, Me.DisconnectToolStripMenuItem})
        Me.WCCM.Name = "SSCM"
        Me.WCCM.ShowImageMargin = False
        Me.WCCM.Size = New System.Drawing.Size(119, 136)
        '
        'ToolStripMenuItem1
        '
        Me.ToolStripMenuItem1.Name = "ToolStripMenuItem1"
        Me.ToolStripMenuItem1.Size = New System.Drawing.Size(118, 22)
        Me.ToolStripMenuItem1.Text = "Take Image"
        '
        'ToolStripMenuItem2
        '
        Me.ToolStripMenuItem2.Name = "ToolStripMenuItem2"
        Me.ToolStripMenuItem2.Size = New System.Drawing.Size(118, 22)
        Me.ToolStripMenuItem2.Text = "Start Capture"
        '
        'CloseWebCamConnectionToolStripMenuItem
        '
        Me.CloseWebCamConnectionToolStripMenuItem.Name = "CloseWebCamConnectionToolStripMenuItem"
        Me.CloseWebCamConnectionToolStripMenuItem.Size = New System.Drawing.Size(118, 22)
        Me.CloseWebCamConnectionToolStripMenuItem.Text = "Stop Capture"
        '
        'ToolStripMenuItem5
        '
        Me.ToolStripMenuItem5.Name = "ToolStripMenuItem5"
        Me.ToolStripMenuItem5.Size = New System.Drawing.Size(118, 22)
        Me.ToolStripMenuItem5.Text = "Full Screen"
        '
        'ToolStripMenuItem4
        '
        Me.ToolStripMenuItem4.Name = "ToolStripMenuItem4"
        Me.ToolStripMenuItem4.Size = New System.Drawing.Size(118, 22)
        Me.ToolStripMenuItem4.Text = "Save"
        '
        'DisconnectToolStripMenuItem
        '
        Me.DisconnectToolStripMenuItem.Name = "DisconnectToolStripMenuItem"
        Me.DisconnectToolStripMenuItem.Size = New System.Drawing.Size(118, 22)
        Me.DisconnectToolStripMenuItem.Text = "Disconnect"
        '
        'Timer2
        '
        Me.Timer2.Interval = 60000
        '
        'GroupBox4
        '
        Me.GroupBox4.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox4.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox4.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupBox4.Controls.Add(Me.GroupBox7)
        Me.GroupBox4.Controls.Add(Me.GroupBox6)
        Me.GroupBox4.Controls.Add(Me.GroupBox5)
        Me.GroupBox4.Location = New System.Drawing.Point(227, 33)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(420, 348)
        Me.GroupBox4.TabIndex = 37
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Send to All"
        Me.GroupBox4.Visible = False
        '
        'GroupBox7
        '
        Me.GroupBox7.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox7.Controls.Add(Me.Label24)
        Me.GroupBox7.Controls.Add(Me.Button84)
        Me.GroupBox7.Controls.Add(Me.Button77)
        Me.GroupBox7.Controls.Add(Me.TextBox25)
        Me.GroupBox7.Location = New System.Drawing.Point(8, 254)
        Me.GroupBox7.Name = "GroupBox7"
        Me.GroupBox7.Size = New System.Drawing.Size(403, 82)
        Me.GroupBox7.TabIndex = 5
        Me.GroupBox7.TabStop = False
        Me.GroupBox7.Text = "DDOS"
        '
        'Label24
        '
        Me.Label24.AutoSize = True
        Me.Label24.Location = New System.Drawing.Point(33, 17)
        Me.Label24.Name = "Label24"
        Me.Label24.Size = New System.Drawing.Size(160, 13)
        Me.Label24.TabIndex = 3
        Me.Label24.Text = "Examples: http://something.com"
        '
        'Button84
        '
        Me.Button84.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button84.Location = New System.Drawing.Point(292, 55)
        Me.Button84.Name = "Button84"
        Me.Button84.Size = New System.Drawing.Size(86, 22)
        Me.Button84.TabIndex = 2
        Me.Button84.Text = "Stop DDOS"
        Me.Button84.UseVisualStyleBackColor = True
        '
        'Button77
        '
        Me.Button77.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Button77.Location = New System.Drawing.Point(18, 55)
        Me.Button77.Name = "Button77"
        Me.Button77.Size = New System.Drawing.Size(86, 22)
        Me.Button77.TabIndex = 1
        Me.Button77.Text = "Start DDOS"
        Me.Button77.UseVisualStyleBackColor = True
        '
        'TextBox25
        '
        Me.TextBox25.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox25.Location = New System.Drawing.Point(18, 31)
        Me.TextBox25.Name = "TextBox25"
        Me.TextBox25.Size = New System.Drawing.Size(361, 20)
        Me.TextBox25.TabIndex = 0
        '
        'GroupBox6
        '
        Me.GroupBox6.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox6.Controls.Add(Me.Label25)
        Me.GroupBox6.Controls.Add(Me.Button80)
        Me.GroupBox6.Controls.Add(Me.Button74)
        Me.GroupBox6.Controls.Add(Me.RadioButton11)
        Me.GroupBox6.Controls.Add(Me.TextBox24)
        Me.GroupBox6.Controls.Add(Me.RadioButton12)
        Me.GroupBox6.Location = New System.Drawing.Point(8, 132)
        Me.GroupBox6.Name = "GroupBox6"
        Me.GroupBox6.Size = New System.Drawing.Size(403, 109)
        Me.GroupBox6.TabIndex = 5
        Me.GroupBox6.TabStop = False
        Me.GroupBox6.Text = "Upload and Run"
        '
        'Label25
        '
        Me.Label25.AutoSize = True
        Me.Label25.Location = New System.Drawing.Point(33, 18)
        Me.Label25.Name = "Label25"
        Me.Label25.Size = New System.Drawing.Size(102, 13)
        Me.Label25.TabIndex = 4
        Me.Label25.Text = "No larger than 1 MB"
        '
        'Button80
        '
        Me.Button80.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button80.Location = New System.Drawing.Point(316, 30)
        Me.Button80.Name = "Button80"
        Me.Button80.Size = New System.Drawing.Size(63, 23)
        Me.Button80.TabIndex = 4
        Me.Button80.Text = "Load File"
        Me.Button80.UseVisualStyleBackColor = True
        '
        'Button74
        '
        Me.Button74.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button74.Location = New System.Drawing.Point(18, 76)
        Me.Button74.Name = "Button74"
        Me.Button74.Size = New System.Drawing.Size(361, 23)
        Me.Button74.TabIndex = 1
        Me.Button74.Text = "Upload and Run"
        Me.Button74.UseVisualStyleBackColor = True
        '
        'RadioButton11
        '
        Me.RadioButton11.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.RadioButton11.AutoSize = True
        Me.RadioButton11.BackColor = System.Drawing.Color.Transparent
        Me.RadioButton11.Location = New System.Drawing.Point(297, 56)
        Me.RadioButton11.Name = "RadioButton11"
        Me.RadioButton11.Size = New System.Drawing.Size(82, 17)
        Me.RadioButton11.TabIndex = 3
        Me.RadioButton11.TabStop = True
        Me.RadioButton11.Text = "Run Hidden"
        Me.RadioButton11.UseVisualStyleBackColor = False
        '
        'TextBox24
        '
        Me.TextBox24.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox24.Location = New System.Drawing.Point(18, 32)
        Me.TextBox24.Name = "TextBox24"
        Me.TextBox24.Size = New System.Drawing.Size(296, 20)
        Me.TextBox24.TabIndex = 0
        '
        'RadioButton12
        '
        Me.RadioButton12.AutoSize = True
        Me.RadioButton12.BackColor = System.Drawing.Color.Transparent
        Me.RadioButton12.Location = New System.Drawing.Point(18, 56)
        Me.RadioButton12.Name = "RadioButton12"
        Me.RadioButton12.Size = New System.Drawing.Size(78, 17)
        Me.RadioButton12.TabIndex = 2
        Me.RadioButton12.TabStop = True
        Me.RadioButton12.Text = "Run Visible"
        Me.RadioButton12.UseVisualStyleBackColor = False
        '
        'GroupBox5
        '
        Me.GroupBox5.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox5.Controls.Add(Me.Button71)
        Me.GroupBox5.Controls.Add(Me.RadioButton9)
        Me.GroupBox5.Controls.Add(Me.TextBox23)
        Me.GroupBox5.Controls.Add(Me.RadioButton10)
        Me.GroupBox5.Location = New System.Drawing.Point(8, 20)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Size = New System.Drawing.Size(403, 96)
        Me.GroupBox5.TabIndex = 4
        Me.GroupBox5.TabStop = False
        Me.GroupBox5.Text = "Download and Run"
        '
        'Button71
        '
        Me.Button71.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button71.Location = New System.Drawing.Point(18, 64)
        Me.Button71.Name = "Button71"
        Me.Button71.Size = New System.Drawing.Size(361, 23)
        Me.Button71.TabIndex = 1
        Me.Button71.Text = "Download and Run"
        Me.Button71.UseVisualStyleBackColor = True
        '
        'RadioButton9
        '
        Me.RadioButton9.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.RadioButton9.AutoSize = True
        Me.RadioButton9.BackColor = System.Drawing.Color.Transparent
        Me.RadioButton9.Location = New System.Drawing.Point(297, 43)
        Me.RadioButton9.Name = "RadioButton9"
        Me.RadioButton9.Size = New System.Drawing.Size(82, 17)
        Me.RadioButton9.TabIndex = 3
        Me.RadioButton9.TabStop = True
        Me.RadioButton9.Text = "Run Hidden"
        Me.RadioButton9.UseVisualStyleBackColor = False
        '
        'TextBox23
        '
        Me.TextBox23.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox23.Location = New System.Drawing.Point(18, 19)
        Me.TextBox23.Name = "TextBox23"
        Me.TextBox23.Size = New System.Drawing.Size(361, 20)
        Me.TextBox23.TabIndex = 0
        '
        'RadioButton10
        '
        Me.RadioButton10.AutoSize = True
        Me.RadioButton10.BackColor = System.Drawing.Color.Transparent
        Me.RadioButton10.Location = New System.Drawing.Point(18, 43)
        Me.RadioButton10.Name = "RadioButton10"
        Me.RadioButton10.Size = New System.Drawing.Size(78, 17)
        Me.RadioButton10.TabIndex = 2
        Me.RadioButton10.TabStop = True
        Me.RadioButton10.Text = "Run Visible"
        Me.RadioButton10.UseVisualStyleBackColor = False
        '
        'GroupBox8
        '
        Me.GroupBox8.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox8.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox8.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.GroupBox8.Controls.Add(Me.TextBox28)
        Me.GroupBox8.Controls.Add(Me.Button85)
        Me.GroupBox8.Controls.Add(Me.TextBox27)
        Me.GroupBox8.Location = New System.Drawing.Point(227, 33)
        Me.GroupBox8.Name = "GroupBox8"
        Me.GroupBox8.Size = New System.Drawing.Size(420, 348)
        Me.GroupBox8.TabIndex = 42
        Me.GroupBox8.TabStop = False
        Me.GroupBox8.Text = "Passwords"
        Me.GroupBox8.Visible = False
        '
        'TextBox28
        '
        Me.TextBox28.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox28.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.TextBox28.ForeColor = System.Drawing.Color.Silver
        Me.TextBox28.Location = New System.Drawing.Point(134, 313)
        Me.TextBox28.Multiline = True
        Me.TextBox28.Name = "TextBox28"
        Me.TextBox28.Size = New System.Drawing.Size(280, 34)
        Me.TextBox28.TabIndex = 2
        '
        'Button85
        '
        Me.Button85.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Button85.Location = New System.Drawing.Point(15, 315)
        Me.Button85.Name = "Button85"
        Me.Button85.Size = New System.Drawing.Size(113, 28)
        Me.Button85.TabIndex = 1
        Me.Button85.Text = "Check"
        Me.Button85.UseVisualStyleBackColor = True
        '
        'TextBox27
        '
        Me.TextBox27.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox27.BackColor = System.Drawing.SystemColors.GradientInactiveCaption
        Me.TextBox27.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TextBox27.ForeColor = System.Drawing.Color.Black
        Me.TextBox27.Location = New System.Drawing.Point(6, 19)
        Me.TextBox27.Multiline = True
        Me.TextBox27.Name = "TextBox27"
        Me.TextBox27.ReadOnly = True
        Me.TextBox27.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.TextBox27.Size = New System.Drawing.Size(408, 293)
        Me.TextBox27.TabIndex = 0
        '
        'Timer3
        '
        Me.Timer3.Interval = 500
        '
        'PictureBox1
        '
        Me.PictureBox1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.PictureBox1.BackColor = System.Drawing.Color.Lavender
        Me.PictureBox1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.PictureBox1.Image = Global.Resources.mat
        Me.PictureBox1.Location = New System.Drawing.Point(227, 33)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(419, 348)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 2
        Me.PictureBox1.TabStop = False
        '
        'Frm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.GradientInactiveCaption
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(661, 700)
        Me.ControlBox = False
        Me.Controls.Add(Me.Button87)
        Me.Controls.Add(Me.GroupStuff)
        Me.Controls.Add(Me.GroupPrint)
        Me.Controls.Add(Me.GroupMSG)
        Me.Controls.Add(Me.GroupCMD)
        Me.Controls.Add(Me.GroupClip)
        Me.Controls.Add(Me.Label16)
        Me.Controls.Add(Me.Button40)
        Me.Controls.Add(Me.TextBox18)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.CheckBox2)
        Me.Controls.Add(Me.Button81)
        Me.Controls.Add(Me.Button79)
        Me.Controls.Add(Me.Button15)
        Me.Controls.Add(Me.Button14)
        Me.Controls.Add(Me.ListView1)
        Me.Controls.Add(Me.TreeView1)
        Me.Controls.Add(Me.statusStrip1)
        Me.Controls.Add(Me.MenuStrip1)
        Me.Controls.Add(Me.GroupServer)
        Me.Controls.Add(Me.GroupIE)
        Me.Controls.Add(Me.GroupScreen)
        Me.Controls.Add(Me.GroupBox8)
        Me.Controls.Add(Me.GroupBox4)
        Me.Controls.Add(Me.GroupText)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupFM)
        Me.Controls.Add(Me.GroupKL)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupDaR)
        Me.Controls.Add(Me.GroupWindows)
        Me.Controls.Add(Me.GroupService)
        Me.Controls.Add(Me.GroupProcess)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MainMenuStrip = Me.MenuStrip1
        Me.MaximizeBox = False
        Me.Name = "Frm"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "ARC - Private"
        Me.statusStrip1.ResumeLayout(False)
        Me.statusStrip1.PerformLayout()
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.GroupStuff.ResumeLayout(False)
        Me.GroupIE.ResumeLayout(False)
        Me.GroupIE.PerformLayout()
        Me.GroupClip.ResumeLayout(False)
        Me.GroupClip.PerformLayout()
        Me.GroupService.ResumeLayout(False)
        Me.GroupDaR.ResumeLayout(False)
        Me.GroupDaR.PerformLayout()
        Me.GroupText.ResumeLayout(False)
        Me.GroupText.PerformLayout()
        Me.GroupPrint.ResumeLayout(False)
        Me.GroupPrint.PerformLayout()
        Me.GroupServer.ResumeLayout(False)
        Me.GroupServer.PerformLayout()
        Me.GroupProcess.ResumeLayout(False)
        Me.GroupWindows.ResumeLayout(False)
        Me.GroupCMD.ResumeLayout(False)
        Me.GroupCMD.PerformLayout()
        Me.GroupFM.ResumeLayout(False)
        Me.GroupFM.PerformLayout()
        Me.GroupKL.ResumeLayout(False)
        Me.GroupKL.PerformLayout()
        Me.GroupScreen.ResumeLayout(False)
        Me.GroupScreen.PerformLayout()
        CType(Me.NumericUpDown1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.TrackBar1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.SSCM.ResumeLayout(False)
        CType(Me.PictureBox2, System.ComponentModel.ISupportInitialize).EndInit()
        Me.IPtoGeo.ResumeLayout(False)
        Me.GroupMSG.ResumeLayout(False)
        Me.GroupMSG.PerformLayout()
        Me.GroupMSGBuilt.ResumeLayout(False)
        Me.GroupMSGBuilt.PerformLayout()
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        CType(Me.PictureBox3, System.ComponentModel.ISupportInitialize).EndInit()
        Me.WCCM.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox7.ResumeLayout(False)
        Me.GroupBox7.PerformLayout()
        Me.GroupBox6.ResumeLayout(False)
        Me.GroupBox6.PerformLayout()
        Me.GroupBox5.ResumeLayout(False)
        Me.GroupBox5.PerformLayout()
        Me.GroupBox8.ResumeLayout(False)
        Me.GroupBox8.PerformLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

#End Region

    Private textBox1 As System.Windows.Forms.TextBox
    Private WithEvents textBox2 As System.Windows.Forms.TextBox
    Private statusStrip1 As System.Windows.Forms.StatusStrip
    Private toolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents TreeView1 As System.Windows.Forms.TreeView
    Friend WithEvents MenuStrip1 As System.Windows.Forms.MenuStrip
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents ExitToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents GroupMSG As System.Windows.Forms.GroupBox
    Friend WithEvents GroupMSGBuilt As System.Windows.Forms.GroupBox
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents TextBox4 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox3 As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents RadioButton6 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton5 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton4 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton3 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton2 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton1 As System.Windows.Forms.RadioButton
    Friend WithEvents GroupStuff As System.Windows.Forms.GroupBox
    Friend WithEvents Button23 As System.Windows.Forms.Button
    Friend WithEvents Button24 As System.Windows.Forms.Button
    Friend WithEvents Button25 As System.Windows.Forms.Button
    Friend WithEvents Button26 As System.Windows.Forms.Button
    Friend WithEvents Button27 As System.Windows.Forms.Button
    Friend WithEvents Button28 As System.Windows.Forms.Button
    Friend WithEvents Button13 As System.Windows.Forms.Button
    Friend WithEvents Button19 As System.Windows.Forms.Button
    Friend WithEvents Button20 As System.Windows.Forms.Button
    Friend WithEvents Button21 As System.Windows.Forms.Button
    Friend WithEvents Button22 As System.Windows.Forms.Button
    Friend WithEvents Button12 As System.Windows.Forms.Button
    Friend WithEvents Button6 As System.Windows.Forms.Button
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents GroupIE As System.Windows.Forms.GroupBox
    Friend WithEvents Button30 As System.Windows.Forms.Button
    Friend WithEvents Button31 As System.Windows.Forms.Button
    Friend WithEvents Button32 As System.Windows.Forms.Button
    Friend WithEvents Button33 As System.Windows.Forms.Button
    Friend WithEvents Button34 As System.Windows.Forms.Button
    Friend WithEvents TextBox9 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox8 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox7 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox6 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox5 As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents GroupClip As System.Windows.Forms.GroupBox
    Friend WithEvents Button36 As System.Windows.Forms.Button
    Friend WithEvents Button35 As System.Windows.Forms.Button
    Friend WithEvents Button29 As System.Windows.Forms.Button
    Friend WithEvents TextBox10 As System.Windows.Forms.TextBox
    Friend WithEvents GroupDaR As System.Windows.Forms.GroupBox
    Friend WithEvents Button43 As System.Windows.Forms.Button
    Friend WithEvents TextBox11 As System.Windows.Forms.TextBox
    Friend WithEvents GroupPrint As System.Windows.Forms.GroupBox
    Friend WithEvents Button49 As System.Windows.Forms.Button
    Friend WithEvents TextBox12 As System.Windows.Forms.TextBox
    Friend WithEvents Images As System.Windows.Forms.ImageList
    Friend WithEvents FileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents GroupProcess As System.Windows.Forms.GroupBox
    Friend WithEvents Button48 As System.Windows.Forms.Button
    Friend WithEvents Button50 As System.Windows.Forms.Button
    Friend WithEvents GroupWindows As System.Windows.Forms.GroupBox
    Friend WithEvents Button54 As System.Windows.Forms.Button
    Friend WithEvents Button53 As System.Windows.Forms.Button
    Friend WithEvents Button52 As System.Windows.Forms.Button
    Friend WithEvents List3 As System.Windows.Forms.ListBox
    Friend WithEvents Button39 As System.Windows.Forms.Button
    Friend WithEvents Button46 As System.Windows.Forms.Button
    Friend WithEvents Button51 As System.Windows.Forms.Button
    Friend WithEvents GroupService As System.Windows.Forms.GroupBox
    Friend WithEvents Button56 As System.Windows.Forms.Button
    Friend WithEvents Button57 As System.Windows.Forms.Button
    Friend WithEvents Button58 As System.Windows.Forms.Button
    Friend WithEvents Button59 As System.Windows.Forms.Button
    Friend WithEvents Button60 As System.Windows.Forms.Button
    Friend WithEvents GroupServer As System.Windows.Forms.GroupBox
    Friend WithEvents GroupCMD As System.Windows.Forms.GroupBox
    Friend WithEvents GroupText As System.Windows.Forms.GroupBox
    Private WithEvents TextBox15 As System.Windows.Forms.TextBox
    Friend WithEvents Button55 As System.Windows.Forms.Button
    Friend WithEvents Button63 As System.Windows.Forms.Button
    Friend WithEvents Button62 As System.Windows.Forms.Button
    Friend WithEvents Button61 As System.Windows.Forms.Button
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents GroupFM As System.Windows.Forms.GroupBox
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents Button69 As System.Windows.Forms.Button
    Friend WithEvents Button68 As System.Windows.Forms.Button
    Friend WithEvents Button67 As System.Windows.Forms.Button
    Friend WithEvents Button66 As System.Windows.Forms.Button
    Friend WithEvents Button65 As System.Windows.Forms.Button
    Friend WithEvents Button41 As System.Windows.Forms.Button
    Friend WithEvents Button42 As System.Windows.Forms.Button
    Friend WithEvents Button44 As System.Windows.Forms.Button
    Friend WithEvents Button45 As System.Windows.Forms.Button
    Friend WithEvents Button64 As System.Windows.Forms.Button
    Friend WithEvents GroupKL As System.Windows.Forms.GroupBox
    Friend WithEvents Button75 As System.Windows.Forms.Button
    Friend WithEvents TextBox13 As System.Windows.Forms.TextBox
    Friend WithEvents GroupScreen As System.Windows.Forms.GroupBox
    Friend WithEvents PictureBox2 As System.Windows.Forms.PictureBox
    Friend WithEvents Button7 As System.Windows.Forms.Button
    Friend WithEvents Button8 As System.Windows.Forms.Button
    Friend WithEvents RadioButton8 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton7 As System.Windows.Forms.RadioButton
    Friend WithEvents ListView1 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader4 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ProgressBar1 As System.Windows.Forms.ProgressBar
    Friend WithEvents OpenFile As System.Windows.Forms.OpenFileDialog
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents TextBox16 As System.Windows.Forms.TextBox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents CheckBox1 As System.Windows.Forms.CheckBox
    Friend WithEvents ListView2 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader5 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader6 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader7 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader8 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Button9 As System.Windows.Forms.Button
    Friend WithEvents ListView3 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader9 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader10 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader11 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Button11 As System.Windows.Forms.Button
    Friend WithEvents Button10 As System.Windows.Forms.Button
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents ComboBox2 As System.Windows.Forms.ComboBox
    Friend WithEvents Button14 As System.Windows.Forms.Button
    Friend WithEvents Button15 As System.Windows.Forms.Button
    Friend WithEvents ExitToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents TextBox17 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox14 As System.Windows.Forms.TextBox
    Friend WithEvents Button17 As System.Windows.Forms.Button
    Friend WithEvents Button18 As System.Windows.Forms.Button
    Friend WithEvents ProgressBar2 As System.Windows.Forms.ProgressBar
    Friend WithEvents HelpToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents InfoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents AboutToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Button47 As System.Windows.Forms.Button
    Friend WithEvents Button38 As System.Windows.Forms.Button
    Friend WithEvents Button37 As System.Windows.Forms.Button
    Friend WithEvents Button78 As System.Windows.Forms.Button
    Friend WithEvents Button79 As System.Windows.Forms.Button
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
    Friend WithEvents Notify As System.Windows.Forms.NotifyIcon
    Friend WithEvents Button81 As System.Windows.Forms.Button
    Friend WithEvents OpenToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Button82 As System.Windows.Forms.Button
    Friend WithEvents ColumnHeader12 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Label15 As System.Windows.Forms.Label
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents CheckBox2 As System.Windows.Forms.CheckBox
    Friend WithEvents ListView4 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader13 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Images2 As System.Windows.Forms.ImageList
    Friend WithEvents ToolStripStatusLabel2 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents TextBox18 As System.Windows.Forms.TextBox
    Friend WithEvents Button40 As System.Windows.Forms.Button
    Friend WithEvents Label16 As System.Windows.Forms.Label
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents TextBox19 As System.Windows.Forms.TextBox
    Friend WithEvents Button70 As System.Windows.Forms.Button
    Friend WithEvents Button83 As System.Windows.Forms.Button
    Friend WithEvents SSCM As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents TakeScreenShotToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MouseControlToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents StartSequenceToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents SaveToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents FullScreenToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Label18 As System.Windows.Forms.Label
    Friend WithEvents TrackBar1 As System.Windows.Forms.TrackBar
    Friend WithEvents NumericUpDown1 As System.Windows.Forms.NumericUpDown
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents TreeView2 As System.Windows.Forms.TreeView
    Private WithEvents imageList1 As System.Windows.Forms.ImageList
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents Button16 As System.Windows.Forms.Button
    Friend WithEvents ListView5 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader14 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ProgressBar3 As System.Windows.Forms.ProgressBar
    Friend WithEvents ComboBox3 As System.Windows.Forms.ComboBox
    Friend WithEvents Button86 As System.Windows.Forms.Button
    Friend WithEvents Label21 As System.Windows.Forms.Label
    Friend WithEvents Label19 As System.Windows.Forms.Label
    Friend WithEvents Button76 As System.Windows.Forms.Button
    Friend WithEvents TextBox20 As System.Windows.Forms.TextBox
    Friend WithEvents ColumnHeader15 As System.Windows.Forms.ColumnHeader
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents PictureBox3 As System.Windows.Forms.PictureBox
    Friend WithEvents ComboBox4 As System.Windows.Forms.ComboBox
    Friend WithEvents WCCM As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents ToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem2 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem4 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem5 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CloseWebCamConnectionToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DisconnectToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ComboBox5 As System.Windows.Forms.ComboBox
    Friend WithEvents ProgressBar4 As System.Windows.Forms.ProgressBar
    Friend WithEvents ColumnHeader16 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Label20 As System.Windows.Forms.Label
    Friend WithEvents TextBox21 As System.Windows.Forms.TextBox
    Friend WithEvents CheckBox3 As System.Windows.Forms.CheckBox
    Friend WithEvents Timer2 As System.Windows.Forms.Timer
    Friend WithEvents Button73 As System.Windows.Forms.Button
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents RadioButton9 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton10 As System.Windows.Forms.RadioButton
    Friend WithEvents Button71 As System.Windows.Forms.Button
    Friend WithEvents TextBox23 As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox5 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox7 As System.Windows.Forms.GroupBox
    Friend WithEvents Button77 As System.Windows.Forms.Button
    Friend WithEvents TextBox25 As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox6 As System.Windows.Forms.GroupBox
    Friend WithEvents Button74 As System.Windows.Forms.Button
    Friend WithEvents RadioButton11 As System.Windows.Forms.RadioButton
    Friend WithEvents TextBox24 As System.Windows.Forms.TextBox
    Friend WithEvents RadioButton12 As System.Windows.Forms.RadioButton
    Friend WithEvents Button80 As System.Windows.Forms.Button
    Friend WithEvents Label23 As System.Windows.Forms.Label
    Friend WithEvents TextBox26 As System.Windows.Forms.TextBox
    Friend WithEvents Button84 As System.Windows.Forms.Button
    Friend WithEvents GroupBox8 As System.Windows.Forms.GroupBox
    Friend WithEvents Button85 As System.Windows.Forms.Button
    Private WithEvents TextBox27 As System.Windows.Forms.TextBox
    Friend WithEvents Timer3 As System.Windows.Forms.Timer
    Friend WithEvents TextBox28 As System.Windows.Forms.TextBox
    Friend WithEvents Label24 As System.Windows.Forms.Label
    Friend WithEvents Label25 As System.Windows.Forms.Label
    Friend WithEvents Button87 As System.Windows.Forms.Button
    Friend WithEvents TextBox29 As System.Windows.Forms.TextBox
    Friend WithEvents IPtoGeo As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents FindCountryToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Button88 As System.Windows.Forms.Button
End Class


