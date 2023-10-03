<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.BOTLIST = New System.Windows.Forms.ListView()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader4 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader5 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SendMessageToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator()
        Me.DisconnectToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.infot = New System.Windows.Forms.ToolStripStatusLabel()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.EIP = New System.Windows.Forms.Label()
        Me.Label13 = New System.Windows.Forms.Label()
        Me.LIP = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.DBT = New System.Windows.Forms.TextBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.PT = New System.Windows.Forms.TextBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.UT = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.HT = New System.Windows.Forms.TextBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.BUILDBTN = New System.Windows.Forms.Button()
        Me.EXETB = New System.Windows.Forms.TextBox()
        Me.VNTB = New System.Windows.Forms.TextBox()
        Me.URLTB = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.STOBTN = New System.Windows.Forms.Button()
        Me.STBTN = New System.Windows.Forms.Button()
        Me.NumericUpDown1 = New System.Windows.Forms.NumericUpDown()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.TabPage3 = New System.Windows.Forms.TabPage()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.IP_Checker = New System.ComponentModel.BackgroundWorker()
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.NumericUpDown1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage3.SuspendLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Controls.Add(Me.TabPage3)
        Me.TabControl1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.TabControl1.Location = New System.Drawing.Point(0, 0)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(495, 278)
        Me.TabControl1.TabIndex = 0
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.BOTLIST)
        Me.TabPage1.Controls.Add(Me.StatusStrip1)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(487, 252)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Bot List"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'BOTLIST
        '
        Me.BOTLIST.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.BOTLIST.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3, Me.ColumnHeader4, Me.ColumnHeader5})
        Me.BOTLIST.ContextMenuStrip = Me.ContextMenuStrip1
        Me.BOTLIST.Dock = System.Windows.Forms.DockStyle.Fill
        Me.BOTLIST.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable
        Me.BOTLIST.LargeImageList = Me.ImageList1
        Me.BOTLIST.Location = New System.Drawing.Point(3, 3)
        Me.BOTLIST.Name = "BOTLIST"
        Me.BOTLIST.Size = New System.Drawing.Size(481, 224)
        Me.BOTLIST.SmallImageList = Me.ImageList1
        Me.BOTLIST.TabIndex = 1
        Me.BOTLIST.UseCompatibleStateImageBehavior = False
        Me.BOTLIST.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "# ID #"
        Me.ColumnHeader1.Width = 84
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "# IP #"
        Me.ColumnHeader2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.ColumnHeader2.Width = 84
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "# User #"
        Me.ColumnHeader3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.ColumnHeader3.Width = 111
        '
        'ColumnHeader4
        '
        Me.ColumnHeader4.Text = "# OS #"
        Me.ColumnHeader4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.ColumnHeader4.Width = 119
        '
        'ColumnHeader5
        '
        Me.ColumnHeader5.Text = "# Country #"
        Me.ColumnHeader5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.ColumnHeader5.Width = 83
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SendMessageToolStripMenuItem, Me.ToolStripSeparator1, Me.DisconnectToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.ShowImageMargin = False
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(125, 54)
        '
        'SendMessageToolStripMenuItem
        '
        Me.SendMessageToolStripMenuItem.Name = "SendMessageToolStripMenuItem"
        Me.SendMessageToolStripMenuItem.Size = New System.Drawing.Size(124, 22)
        Me.SendMessageToolStripMenuItem.Text = "Send Message"
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(121, 6)
        '
        'DisconnectToolStripMenuItem
        '
        Me.DisconnectToolStripMenuItem.Name = "DisconnectToolStripMenuItem"
        Me.DisconnectToolStripMenuItem.Size = New System.Drawing.Size(124, 22)
        Me.DisconnectToolStripMenuItem.Text = "Disconnect"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "0.gif")
        Me.ImageList1.Images.SetKeyName(1, "1.gif")
        Me.ImageList1.Images.SetKeyName(2, "2.gif")
        Me.ImageList1.Images.SetKeyName(3, "3.gif")
        Me.ImageList1.Images.SetKeyName(4, "4.gif")
        Me.ImageList1.Images.SetKeyName(5, "5.gif")
        Me.ImageList1.Images.SetKeyName(6, "6.gif")
        Me.ImageList1.Images.SetKeyName(7, "7.gif")
        Me.ImageList1.Images.SetKeyName(8, "8.gif")
        Me.ImageList1.Images.SetKeyName(9, "9.gif")
        Me.ImageList1.Images.SetKeyName(10, "10.gif")
        Me.ImageList1.Images.SetKeyName(11, "11.gif")
        Me.ImageList1.Images.SetKeyName(12, "12.gif")
        Me.ImageList1.Images.SetKeyName(13, "13.gif")
        Me.ImageList1.Images.SetKeyName(14, "14.gif")
        Me.ImageList1.Images.SetKeyName(15, "15.gif")
        Me.ImageList1.Images.SetKeyName(16, "16.gif")
        Me.ImageList1.Images.SetKeyName(17, "17.gif")
        Me.ImageList1.Images.SetKeyName(18, "18.gif")
        Me.ImageList1.Images.SetKeyName(19, "19.gif")
        Me.ImageList1.Images.SetKeyName(20, "20.gif")
        Me.ImageList1.Images.SetKeyName(21, "21.gif")
        Me.ImageList1.Images.SetKeyName(22, "22.gif")
        Me.ImageList1.Images.SetKeyName(23, "23.gif")
        Me.ImageList1.Images.SetKeyName(24, "24.gif")
        Me.ImageList1.Images.SetKeyName(25, "25.gif")
        Me.ImageList1.Images.SetKeyName(26, "26.gif")
        Me.ImageList1.Images.SetKeyName(27, "27.gif")
        Me.ImageList1.Images.SetKeyName(28, "28.gif")
        Me.ImageList1.Images.SetKeyName(29, "29.gif")
        Me.ImageList1.Images.SetKeyName(30, "30.gif")
        Me.ImageList1.Images.SetKeyName(31, "31.gif")
        Me.ImageList1.Images.SetKeyName(32, "32.gif")
        Me.ImageList1.Images.SetKeyName(33, "33.gif")
        Me.ImageList1.Images.SetKeyName(34, "34.gif")
        Me.ImageList1.Images.SetKeyName(35, "35.gif")
        Me.ImageList1.Images.SetKeyName(36, "36.gif")
        Me.ImageList1.Images.SetKeyName(37, "37.gif")
        Me.ImageList1.Images.SetKeyName(38, "38.gif")
        Me.ImageList1.Images.SetKeyName(39, "39.gif")
        Me.ImageList1.Images.SetKeyName(40, "40.gif")
        Me.ImageList1.Images.SetKeyName(41, "41.gif")
        Me.ImageList1.Images.SetKeyName(42, "42.gif")
        Me.ImageList1.Images.SetKeyName(43, "43.gif")
        Me.ImageList1.Images.SetKeyName(44, "44.gif")
        Me.ImageList1.Images.SetKeyName(45, "45.gif")
        Me.ImageList1.Images.SetKeyName(46, "46.gif")
        Me.ImageList1.Images.SetKeyName(47, "47.gif")
        Me.ImageList1.Images.SetKeyName(48, "48.gif")
        Me.ImageList1.Images.SetKeyName(49, "49.gif")
        Me.ImageList1.Images.SetKeyName(50, "50.gif")
        Me.ImageList1.Images.SetKeyName(51, "51.gif")
        Me.ImageList1.Images.SetKeyName(52, "52.gif")
        Me.ImageList1.Images.SetKeyName(53, "53.gif")
        Me.ImageList1.Images.SetKeyName(54, "54.gif")
        Me.ImageList1.Images.SetKeyName(55, "55.gif")
        Me.ImageList1.Images.SetKeyName(56, "56.gif")
        Me.ImageList1.Images.SetKeyName(57, "57.gif")
        Me.ImageList1.Images.SetKeyName(58, "58.gif")
        Me.ImageList1.Images.SetKeyName(59, "59.gif")
        Me.ImageList1.Images.SetKeyName(60, "60.gif")
        Me.ImageList1.Images.SetKeyName(61, "61.gif")
        Me.ImageList1.Images.SetKeyName(62, "62.gif")
        Me.ImageList1.Images.SetKeyName(63, "63.gif")
        Me.ImageList1.Images.SetKeyName(64, "64.gif")
        Me.ImageList1.Images.SetKeyName(65, "65.gif")
        Me.ImageList1.Images.SetKeyName(66, "66.gif")
        Me.ImageList1.Images.SetKeyName(67, "67.gif")
        Me.ImageList1.Images.SetKeyName(68, "68.gif")
        Me.ImageList1.Images.SetKeyName(69, "69.gif")
        Me.ImageList1.Images.SetKeyName(70, "70.gif")
        Me.ImageList1.Images.SetKeyName(71, "71.gif")
        Me.ImageList1.Images.SetKeyName(72, "72.gif")
        Me.ImageList1.Images.SetKeyName(73, "73.gif")
        Me.ImageList1.Images.SetKeyName(74, "74.gif")
        Me.ImageList1.Images.SetKeyName(75, "75.gif")
        Me.ImageList1.Images.SetKeyName(76, "76.gif")
        Me.ImageList1.Images.SetKeyName(77, "77.gif")
        Me.ImageList1.Images.SetKeyName(78, "78.gif")
        Me.ImageList1.Images.SetKeyName(79, "79.gif")
        Me.ImageList1.Images.SetKeyName(80, "80.gif")
        Me.ImageList1.Images.SetKeyName(81, "81.gif")
        Me.ImageList1.Images.SetKeyName(82, "82.gif")
        Me.ImageList1.Images.SetKeyName(83, "83.gif")
        Me.ImageList1.Images.SetKeyName(84, "84.gif")
        Me.ImageList1.Images.SetKeyName(85, "85.gif")
        Me.ImageList1.Images.SetKeyName(86, "86.gif")
        Me.ImageList1.Images.SetKeyName(87, "87.gif")
        Me.ImageList1.Images.SetKeyName(88, "88.gif")
        Me.ImageList1.Images.SetKeyName(89, "89.gif")
        Me.ImageList1.Images.SetKeyName(90, "90.gif")
        Me.ImageList1.Images.SetKeyName(91, "91.gif")
        Me.ImageList1.Images.SetKeyName(92, "92.gif")
        Me.ImageList1.Images.SetKeyName(93, "93.gif")
        Me.ImageList1.Images.SetKeyName(94, "94.gif")
        Me.ImageList1.Images.SetKeyName(95, "95.gif")
        Me.ImageList1.Images.SetKeyName(96, "96.gif")
        Me.ImageList1.Images.SetKeyName(97, "97.gif")
        Me.ImageList1.Images.SetKeyName(98, "98.gif")
        Me.ImageList1.Images.SetKeyName(99, "99.gif")
        Me.ImageList1.Images.SetKeyName(100, "100.gif")
        Me.ImageList1.Images.SetKeyName(101, "101.gif")
        Me.ImageList1.Images.SetKeyName(102, "102.gif")
        Me.ImageList1.Images.SetKeyName(103, "103.gif")
        Me.ImageList1.Images.SetKeyName(104, "104.gif")
        Me.ImageList1.Images.SetKeyName(105, "105.gif")
        Me.ImageList1.Images.SetKeyName(106, "106.gif")
        Me.ImageList1.Images.SetKeyName(107, "107.gif")
        Me.ImageList1.Images.SetKeyName(108, "108.gif")
        Me.ImageList1.Images.SetKeyName(109, "109.gif")
        Me.ImageList1.Images.SetKeyName(110, "110.gif")
        Me.ImageList1.Images.SetKeyName(111, "111.gif")
        Me.ImageList1.Images.SetKeyName(112, "112.gif")
        Me.ImageList1.Images.SetKeyName(113, "113.gif")
        Me.ImageList1.Images.SetKeyName(114, "114.gif")
        Me.ImageList1.Images.SetKeyName(115, "115.gif")
        Me.ImageList1.Images.SetKeyName(116, "116.gif")
        Me.ImageList1.Images.SetKeyName(117, "117.gif")
        Me.ImageList1.Images.SetKeyName(118, "118.gif")
        Me.ImageList1.Images.SetKeyName(119, "119.gif")
        Me.ImageList1.Images.SetKeyName(120, "120.gif")
        Me.ImageList1.Images.SetKeyName(121, "121.gif")
        Me.ImageList1.Images.SetKeyName(122, "122.gif")
        Me.ImageList1.Images.SetKeyName(123, "123.gif")
        Me.ImageList1.Images.SetKeyName(124, "124.gif")
        Me.ImageList1.Images.SetKeyName(125, "125.gif")
        Me.ImageList1.Images.SetKeyName(126, "126.gif")
        Me.ImageList1.Images.SetKeyName(127, "127.gif")
        Me.ImageList1.Images.SetKeyName(128, "128.gif")
        Me.ImageList1.Images.SetKeyName(129, "129.gif")
        Me.ImageList1.Images.SetKeyName(130, "130.gif")
        Me.ImageList1.Images.SetKeyName(131, "131.gif")
        Me.ImageList1.Images.SetKeyName(132, "132.gif")
        Me.ImageList1.Images.SetKeyName(133, "133.gif")
        Me.ImageList1.Images.SetKeyName(134, "134.gif")
        Me.ImageList1.Images.SetKeyName(135, "135.gif")
        Me.ImageList1.Images.SetKeyName(136, "136.gif")
        Me.ImageList1.Images.SetKeyName(137, "137.gif")
        Me.ImageList1.Images.SetKeyName(138, "138.gif")
        Me.ImageList1.Images.SetKeyName(139, "139.gif")
        Me.ImageList1.Images.SetKeyName(140, "140.gif")
        Me.ImageList1.Images.SetKeyName(141, "141.gif")
        Me.ImageList1.Images.SetKeyName(142, "142.gif")
        Me.ImageList1.Images.SetKeyName(143, "143.gif")
        Me.ImageList1.Images.SetKeyName(144, "144.gif")
        Me.ImageList1.Images.SetKeyName(145, "145.gif")
        Me.ImageList1.Images.SetKeyName(146, "146.gif")
        Me.ImageList1.Images.SetKeyName(147, "147.gif")
        Me.ImageList1.Images.SetKeyName(148, "148.gif")
        Me.ImageList1.Images.SetKeyName(149, "149.gif")
        Me.ImageList1.Images.SetKeyName(150, "150.gif")
        Me.ImageList1.Images.SetKeyName(151, "151.gif")
        Me.ImageList1.Images.SetKeyName(152, "152.gif")
        Me.ImageList1.Images.SetKeyName(153, "153.gif")
        Me.ImageList1.Images.SetKeyName(154, "154.gif")
        Me.ImageList1.Images.SetKeyName(155, "155.gif")
        Me.ImageList1.Images.SetKeyName(156, "156.gif")
        Me.ImageList1.Images.SetKeyName(157, "157.gif")
        Me.ImageList1.Images.SetKeyName(158, "158.gif")
        Me.ImageList1.Images.SetKeyName(159, "159.gif")
        Me.ImageList1.Images.SetKeyName(160, "160.gif")
        Me.ImageList1.Images.SetKeyName(161, "161.gif")
        Me.ImageList1.Images.SetKeyName(162, "162.gif")
        Me.ImageList1.Images.SetKeyName(163, "163.gif")
        Me.ImageList1.Images.SetKeyName(164, "164.gif")
        Me.ImageList1.Images.SetKeyName(165, "165.gif")
        Me.ImageList1.Images.SetKeyName(166, "166.gif")
        Me.ImageList1.Images.SetKeyName(167, "167.gif")
        Me.ImageList1.Images.SetKeyName(168, "168.gif")
        Me.ImageList1.Images.SetKeyName(169, "169.gif")
        Me.ImageList1.Images.SetKeyName(170, "170.gif")
        Me.ImageList1.Images.SetKeyName(171, "171.gif")
        Me.ImageList1.Images.SetKeyName(172, "172.gif")
        Me.ImageList1.Images.SetKeyName(173, "173.gif")
        Me.ImageList1.Images.SetKeyName(174, "174.gif")
        Me.ImageList1.Images.SetKeyName(175, "175.gif")
        Me.ImageList1.Images.SetKeyName(176, "176.gif")
        Me.ImageList1.Images.SetKeyName(177, "177.gif")
        Me.ImageList1.Images.SetKeyName(178, "178.gif")
        Me.ImageList1.Images.SetKeyName(179, "179.gif")
        Me.ImageList1.Images.SetKeyName(180, "180.gif")
        Me.ImageList1.Images.SetKeyName(181, "181.gif")
        Me.ImageList1.Images.SetKeyName(182, "182.gif")
        Me.ImageList1.Images.SetKeyName(183, "183.gif")
        Me.ImageList1.Images.SetKeyName(184, "184.gif")
        Me.ImageList1.Images.SetKeyName(185, "185.gif")
        Me.ImageList1.Images.SetKeyName(186, "186.gif")
        Me.ImageList1.Images.SetKeyName(187, "187.gif")
        Me.ImageList1.Images.SetKeyName(188, "188.gif")
        Me.ImageList1.Images.SetKeyName(189, "189.gif")
        Me.ImageList1.Images.SetKeyName(190, "190.gif")
        Me.ImageList1.Images.SetKeyName(191, "191.gif")
        Me.ImageList1.Images.SetKeyName(192, "192.gif")
        Me.ImageList1.Images.SetKeyName(193, "193.gif")
        Me.ImageList1.Images.SetKeyName(194, "194.gif")
        Me.ImageList1.Images.SetKeyName(195, "195.gif")
        Me.ImageList1.Images.SetKeyName(196, "196.gif")
        Me.ImageList1.Images.SetKeyName(197, "197.gif")
        Me.ImageList1.Images.SetKeyName(198, "198.gif")
        Me.ImageList1.Images.SetKeyName(199, "199.gif")
        Me.ImageList1.Images.SetKeyName(200, "200.gif")
        Me.ImageList1.Images.SetKeyName(201, "201.gif")
        Me.ImageList1.Images.SetKeyName(202, "202.gif")
        Me.ImageList1.Images.SetKeyName(203, "203.gif")
        Me.ImageList1.Images.SetKeyName(204, "204.gif")
        Me.ImageList1.Images.SetKeyName(205, "205.gif")
        Me.ImageList1.Images.SetKeyName(206, "206.gif")
        Me.ImageList1.Images.SetKeyName(207, "207.jpg")
        Me.ImageList1.Images.SetKeyName(208, "208.gif")
        Me.ImageList1.Images.SetKeyName(209, "209.gif")
        Me.ImageList1.Images.SetKeyName(210, "210.gif")
        Me.ImageList1.Images.SetKeyName(211, "211.gif")
        Me.ImageList1.Images.SetKeyName(212, "212.gif")
        Me.ImageList1.Images.SetKeyName(213, "213.gif")
        Me.ImageList1.Images.SetKeyName(214, "214.gif")
        Me.ImageList1.Images.SetKeyName(215, "215.gif")
        Me.ImageList1.Images.SetKeyName(216, "216.gif")
        Me.ImageList1.Images.SetKeyName(217, "217.gif")
        Me.ImageList1.Images.SetKeyName(218, "218.gif")
        Me.ImageList1.Images.SetKeyName(219, "219.gif")
        Me.ImageList1.Images.SetKeyName(220, "220.gif")
        Me.ImageList1.Images.SetKeyName(221, "221.gif")
        Me.ImageList1.Images.SetKeyName(222, "222.gif")
        Me.ImageList1.Images.SetKeyName(223, "223.gif")
        Me.ImageList1.Images.SetKeyName(224, "224.gif")
        Me.ImageList1.Images.SetKeyName(225, "225.gif")
        Me.ImageList1.Images.SetKeyName(226, "226.gif")
        Me.ImageList1.Images.SetKeyName(227, "227.gif")
        Me.ImageList1.Images.SetKeyName(228, "228.gif")
        Me.ImageList1.Images.SetKeyName(229, "229.gif")
        Me.ImageList1.Images.SetKeyName(230, "230.gif")
        Me.ImageList1.Images.SetKeyName(231, "231.gif")
        Me.ImageList1.Images.SetKeyName(232, "232.gif")
        Me.ImageList1.Images.SetKeyName(233, "233.gif")
        Me.ImageList1.Images.SetKeyName(234, "234.gif")
        Me.ImageList1.Images.SetKeyName(235, "235.gif")
        Me.ImageList1.Images.SetKeyName(236, "236.gif")
        Me.ImageList1.Images.SetKeyName(237, "237.gif")
        Me.ImageList1.Images.SetKeyName(238, "238.gif")
        Me.ImageList1.Images.SetKeyName(239, "239.gif")
        Me.ImageList1.Images.SetKeyName(240, "240.gif")
        Me.ImageList1.Images.SetKeyName(241, "241.gif")
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.White
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.infot})
        Me.StatusStrip1.Location = New System.Drawing.Point(3, 227)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(481, 22)
        Me.StatusStrip1.TabIndex = 0
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'infot
        '
        Me.infot.Name = "infot"
        Me.infot.Size = New System.Drawing.Size(241, 17)
        Me.infot.Text = "INFO : Port [ 0 ] ~ Online [ 0 ] ~ Selected [ 0 ]"
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.GroupBox4)
        Me.TabPage2.Controls.Add(Me.GroupBox3)
        Me.TabPage2.Controls.Add(Me.GroupBox2)
        Me.TabPage2.Controls.Add(Me.GroupBox1)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(487, 252)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "Settings"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.Button4)
        Me.GroupBox4.Controls.Add(Me.EIP)
        Me.GroupBox4.Controls.Add(Me.Label13)
        Me.GroupBox4.Controls.Add(Me.LIP)
        Me.GroupBox4.Controls.Add(Me.Label10)
        Me.GroupBox4.Location = New System.Drawing.Point(287, 150)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(192, 94)
        Me.GroupBox4.TabIndex = 3
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "IP "
        '
        'Button4
        '
        Me.Button4.Cursor = System.Windows.Forms.Cursors.Hand
        Me.Button4.Location = New System.Drawing.Point(9, 65)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(177, 23)
        Me.Button4.TabIndex = 4
        Me.Button4.Text = "Test URL and check IP"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'EIP
        '
        Me.EIP.AutoSize = True
        Me.EIP.Location = New System.Drawing.Point(78, 36)
        Me.EIP.Name = "EIP"
        Me.EIP.Size = New System.Drawing.Size(40, 13)
        Me.EIP.TabIndex = 3
        Me.EIP.Text = "0.0.0.0"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(6, 36)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(66, 13)
        Me.Label13.TabIndex = 2
        Me.Label13.Text = "External IP :"
        '
        'LIP
        '
        Me.LIP.AutoSize = True
        Me.LIP.Location = New System.Drawing.Point(78, 18)
        Me.LIP.Name = "LIP"
        Me.LIP.Size = New System.Drawing.Size(48, 13)
        Me.LIP.TabIndex = 1
        Me.LIP.Text = "127.0.0.1"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(6, 18)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(66, 13)
        Me.Label10.TabIndex = 0
        Me.Label10.Text = "Local      IP :"
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.Label9)
        Me.GroupBox3.Controls.Add(Me.Button3)
        Me.GroupBox3.Controls.Add(Me.Button2)
        Me.GroupBox3.Controls.Add(Me.Button1)
        Me.GroupBox3.Controls.Add(Me.DBT)
        Me.GroupBox3.Controls.Add(Me.Label8)
        Me.GroupBox3.Controls.Add(Me.PT)
        Me.GroupBox3.Controls.Add(Me.Label7)
        Me.GroupBox3.Controls.Add(Me.UT)
        Me.GroupBox3.Controls.Add(Me.Label6)
        Me.GroupBox3.Controls.Add(Me.HT)
        Me.GroupBox3.Controls.Add(Me.Label5)
        Me.GroupBox3.Location = New System.Drawing.Point(8, 68)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(273, 176)
        Me.GroupBox3.TabIndex = 2
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "DTAT BASE"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(9, 158)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(65, 13)
        Me.Label9.TabIndex = 11
        Me.Label9.Text = "Checking ..."
        Me.Label9.Visible = False
        '
        'Button3
        '
        Me.Button3.Cursor = System.Windows.Forms.Cursors.Hand
        Me.Button3.Location = New System.Drawing.Point(9, 132)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(80, 23)
        Me.Button3.TabIndex = 10
        Me.Button3.Text = "Refresh IP"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Cursor = System.Windows.Forms.Cursors.Hand
        Me.Button2.Location = New System.Drawing.Point(99, 132)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(80, 23)
        Me.Button2.TabIndex = 9
        Me.Button2.Text = "Gen PHP"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Cursor = System.Windows.Forms.Cursors.Hand
        Me.Button1.Location = New System.Drawing.Point(187, 132)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(80, 23)
        Me.Button1.TabIndex = 8
        Me.Button1.Text = "Gen SQL DB"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'DBT
        '
        Me.DBT.Location = New System.Drawing.Point(95, 104)
        Me.DBT.Name = "DBT"
        Me.DBT.Size = New System.Drawing.Size(172, 22)
        Me.DBT.TabIndex = 7
        Me.DBT.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(6, 109)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(67, 13)
        Me.Label8.TabIndex = 6
        Me.Label8.Text = "Data Base : "
        '
        'PT
        '
        Me.PT.Location = New System.Drawing.Point(95, 76)
        Me.PT.Name = "PT"
        Me.PT.Size = New System.Drawing.Size(172, 22)
        Me.PT.TabIndex = 5
        Me.PT.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(6, 81)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(64, 13)
        Me.Label7.TabIndex = 4
        Me.Label7.Text = "Password : "
        '
        'UT
        '
        Me.UT.Location = New System.Drawing.Point(95, 48)
        Me.UT.Name = "UT"
        Me.UT.Size = New System.Drawing.Size(172, 22)
        Me.UT.TabIndex = 3
        Me.UT.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(6, 53)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(72, 13)
        Me.Label6.TabIndex = 2
        Me.Label6.Text = "User Name : "
        '
        'HT
        '
        Me.HT.Location = New System.Drawing.Point(95, 20)
        Me.HT.Name = "HT"
        Me.HT.Size = New System.Drawing.Size(172, 22)
        Me.HT.TabIndex = 1
        Me.HT.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(6, 25)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(83, 13)
        Me.Label5.TabIndex = 0
        Me.Label5.Text = "Host / Server : "
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.BUILDBTN)
        Me.GroupBox2.Controls.Add(Me.EXETB)
        Me.GroupBox2.Controls.Add(Me.VNTB)
        Me.GroupBox2.Controls.Add(Me.URLTB)
        Me.GroupBox2.Controls.Add(Me.Label4)
        Me.GroupBox2.Controls.Add(Me.Label3)
        Me.GroupBox2.Controls.Add(Me.Label2)
        Me.GroupBox2.Location = New System.Drawing.Point(287, 6)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(192, 138)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "BUILDER "
        '
        'BUILDBTN
        '
        Me.BUILDBTN.Cursor = System.Windows.Forms.Cursors.Hand
        Me.BUILDBTN.Location = New System.Drawing.Point(48, 106)
        Me.BUILDBTN.Name = "BUILDBTN"
        Me.BUILDBTN.Size = New System.Drawing.Size(138, 23)
        Me.BUILDBTN.TabIndex = 4
        Me.BUILDBTN.Text = "BUILD"
        Me.BUILDBTN.UseVisualStyleBackColor = True
        '
        'EXETB
        '
        Me.EXETB.Location = New System.Drawing.Point(48, 78)
        Me.EXETB.Name = "EXETB"
        Me.EXETB.Size = New System.Drawing.Size(138, 22)
        Me.EXETB.TabIndex = 5
        Me.EXETB.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'VNTB
        '
        Me.VNTB.Location = New System.Drawing.Point(48, 50)
        Me.VNTB.Name = "VNTB"
        Me.VNTB.Size = New System.Drawing.Size(138, 22)
        Me.VNTB.TabIndex = 4
        Me.VNTB.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'URLTB
        '
        Me.URLTB.Location = New System.Drawing.Point(48, 22)
        Me.URLTB.Name = "URLTB"
        Me.URLTB.Size = New System.Drawing.Size(138, 22)
        Me.URLTB.TabIndex = 3
        Me.URLTB.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(6, 83)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(35, 13)
        Me.Label4.TabIndex = 2
        Me.Label4.Text = "EXE : "
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(6, 55)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(34, 13)
        Me.Label3.TabIndex = 1
        Me.Label3.Text = "VN  : "
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(6, 27)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(36, 13)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "URL : "
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.STOBTN)
        Me.GroupBox1.Controls.Add(Me.STBTN)
        Me.GroupBox1.Controls.Add(Me.NumericUpDown1)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(8, 6)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(273, 56)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "PORT "
        '
        'STOBTN
        '
        Me.STOBTN.Cursor = System.Windows.Forms.Cursors.Hand
        Me.STOBTN.Location = New System.Drawing.Point(199, 22)
        Me.STOBTN.Name = "STOBTN"
        Me.STOBTN.Size = New System.Drawing.Size(68, 23)
        Me.STOBTN.TabIndex = 3
        Me.STOBTN.Text = "STOP"
        Me.STOBTN.UseVisualStyleBackColor = True
        '
        'STBTN
        '
        Me.STBTN.Cursor = System.Windows.Forms.Cursors.Hand
        Me.STBTN.Location = New System.Drawing.Point(125, 22)
        Me.STBTN.Name = "STBTN"
        Me.STBTN.Size = New System.Drawing.Size(68, 23)
        Me.STBTN.TabIndex = 2
        Me.STBTN.Text = "START"
        Me.STBTN.UseVisualStyleBackColor = True
        '
        'NumericUpDown1
        '
        Me.NumericUpDown1.Location = New System.Drawing.Point(55, 22)
        Me.NumericUpDown1.Maximum = New Decimal(New Integer() {100000, 0, 0, 0})
        Me.NumericUpDown1.Name = "NumericUpDown1"
        Me.NumericUpDown1.Size = New System.Drawing.Size(60, 22)
        Me.NumericUpDown1.TabIndex = 1
        Me.NumericUpDown1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(6, 27)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(43, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "PORT : "
        '
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.Label11)
        Me.TabPage3.Controls.Add(Me.PictureBox1)
        Me.TabPage3.Location = New System.Drawing.Point(4, 22)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Size = New System.Drawing.Size(487, 252)
        Me.TabPage3.TabIndex = 2
        Me.TabPage3.Text = "About"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(263, 76)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(216, 117)
        Me.Label11.TabIndex = 1
        Me.Label11.Text = resources.GetString("Label11.Text")
        '
        'PictureBox1
        '
        Me.PictureBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(0, 0)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(487, 252)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'Timer1
        '
        '
        'IP_Checker
        '
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(495, 278)
        Me.Controls.Add(Me.TabControl1)
        Me.Font = New System.Drawing.Font("Segoe UI Semibold", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Form1"
        Me.Text = "D-RAT Coded By ʍᴙ.ώoŁƒ"
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage1.PerformLayout()
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.TabPage2.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox4.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.NumericUpDown1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage3.ResumeLayout(False)
        Me.TabPage3.PerformLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents TabPage3 As System.Windows.Forms.TabPage
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents BUILDBTN As System.Windows.Forms.Button
    Friend WithEvents EXETB As System.Windows.Forms.TextBox
    Friend WithEvents VNTB As System.Windows.Forms.TextBox
    Friend WithEvents URLTB As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents STOBTN As System.Windows.Forms.Button
    Friend WithEvents STBTN As System.Windows.Forms.Button
    Friend WithEvents NumericUpDown1 As System.Windows.Forms.NumericUpDown
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents SendMessageToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripSeparator1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents DisconnectToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents BOTLIST As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader4 As System.Windows.Forms.ColumnHeader
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents infot As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ColumnHeader5 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents EIP As System.Windows.Forms.Label
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents LIP As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents DBT As System.Windows.Forms.TextBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents PT As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents UT As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents HT As System.Windows.Forms.TextBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents IP_Checker As System.ComponentModel.BackgroundWorker
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox

End Class
