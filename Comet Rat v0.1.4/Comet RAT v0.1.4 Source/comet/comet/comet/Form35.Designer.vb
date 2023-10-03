<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form35
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form35))
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.RefreshToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RestToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.KillProcessToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SuspendToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SdaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.scream01 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.Timer3 = New System.Windows.Forms.Timer(Me.components)
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.PListView = New comet.GClass9()
        Me.ColumnHeader6 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader7 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader8 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader9 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader10 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader4 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader5 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader11 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader12 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader13 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.Timer4 = New System.Windows.Forms.Timer(Me.components)
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
        Me.SortOrderToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripMenuItem2 = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripMenuItem3 = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripMenuItem4 = New System.Windows.Forms.ToolStripMenuItem()
        Me.HuraAlertBox1 = New comet.HuraAlertBox()
        Me.PropertiesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.Panel1.SuspendLayout()
        Me.MenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RefreshToolStripMenuItem, Me.RestToolStripMenuItem, Me.KillProcessToolStripMenuItem, Me.SuspendToolStripMenuItem, Me.SdaToolStripMenuItem, Me.PropertiesToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.ContextMenuStrip1.ShowImageMargin = False
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(138, 158)
        '
        'RefreshToolStripMenuItem
        '
        Me.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem"
        Me.RefreshToolStripMenuItem.Size = New System.Drawing.Size(137, 22)
        Me.RefreshToolStripMenuItem.Text = "Refresh Process"
        '
        'RestToolStripMenuItem
        '
        Me.RestToolStripMenuItem.Name = "RestToolStripMenuItem"
        Me.RestToolStripMenuItem.Size = New System.Drawing.Size(137, 22)
        Me.RestToolStripMenuItem.Text = "Restart Process"
        '
        'KillProcessToolStripMenuItem
        '
        Me.KillProcessToolStripMenuItem.Name = "KillProcessToolStripMenuItem"
        Me.KillProcessToolStripMenuItem.Size = New System.Drawing.Size(137, 22)
        Me.KillProcessToolStripMenuItem.Text = "Kill Process"
        '
        'SuspendToolStripMenuItem
        '
        Me.SuspendToolStripMenuItem.Name = "SuspendToolStripMenuItem"
        Me.SuspendToolStripMenuItem.Size = New System.Drawing.Size(137, 22)
        Me.SuspendToolStripMenuItem.Text = "Suspend Process"
        '
        'SdaToolStripMenuItem
        '
        Me.SdaToolStripMenuItem.Name = "SdaToolStripMenuItem"
        Me.SdaToolStripMenuItem.Size = New System.Drawing.Size(137, 22)
        Me.SdaToolStripMenuItem.Text = "Resume Process"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "3.png")
        Me.ImageList1.Images.SetKeyName(1, "ace025d517e1e3b04a1098f055d4c2e7-48.png")
        Me.ImageList1.Images.SetKeyName(2, "File-Explorer-icon.png")
        Me.ImageList1.Images.SetKeyName(3, "Google-Chrome-Google-Chrome.ico")
        Me.ImageList1.Images.SetKeyName(4, "notepad.png")
        Me.ImageList1.Images.SetKeyName(5, "54egsd.ico")
        Me.ImageList1.Images.SetKeyName(6, "Firefox.png")
        Me.ImageList1.Images.SetKeyName(7, "Regedit-Logo.png")
        Me.ImageList1.Images.SetKeyName(8, "65664322.png")
        Me.ImageList1.Images.SetKeyName(9, "ffa.png")
        Me.ImageList1.Images.SetKeyName(10, "Icon Entry_9.ico")
        Me.ImageList1.Images.SetKeyName(11, "Icon Entry_14.ico")
        Me.ImageList1.Images.SetKeyName(12, "ffffs.ico")
        Me.ImageList1.Images.SetKeyName(13, "cccs.ico")
        Me.ImageList1.Images.SetKeyName(14, "yhike.ico")
        Me.ImageList1.Images.SetKeyName(15, "Icon Entry_7.ico")
        Me.ImageList1.Images.SetKeyName(16, "Icon Entry_15.ico")
        Me.ImageList1.Images.SetKeyName(17, "1112.ico")
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.Gainsboro
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel1, Me.scream01})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 255)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip1.Size = New System.Drawing.Size(478, 22)
        Me.StatusStrip1.TabIndex = 5
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.BackColor = System.Drawing.Color.Gainsboro
        Me.ToolStripStatusLabel1.ForeColor = System.Drawing.Color.Black
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(16, 17)
        Me.ToolStripStatusLabel1.Text = "..."
        '
        'scream01
        '
        Me.scream01.ForeColor = System.Drawing.Color.FromArgb(CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer))
        Me.scream01.Name = "scream01"
        Me.scream01.Size = New System.Drawing.Size(13, 17)
        Me.scream01.Text = ".."
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 1
        '
        'Timer2
        '
        Me.Timer2.Interval = 500
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.Blue
        Me.Panel1.Controls.Add(Me.TextBox1)
        Me.Panel1.Controls.Add(Me.TextBox2)
        Me.Panel1.Location = New System.Drawing.Point(126, 71)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(10, 10)
        Me.Panel1.TabIndex = 7
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.Red
        Me.TextBox1.Location = New System.Drawing.Point(232, 22)
        Me.TextBox1.Multiline = True
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(10, 10)
        Me.TextBox1.TabIndex = 0
        '
        'TextBox2
        '
        Me.TextBox2.BackColor = System.Drawing.Color.Red
        Me.TextBox2.Location = New System.Drawing.Point(45, 22)
        Me.TextBox2.Multiline = True
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(111, 25)
        Me.TextBox2.TabIndex = 1
        Me.TextBox2.Text = "1"
        '
        'Timer3
        '
        '
        'ToolTip1
        '
        Me.ToolTip1.ShowAlways = True
        '
        'PListView
        '
        Me.PListView.BackColor = System.Drawing.Color.LightGoldenrodYellow
        Me.PListView.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader6, Me.ColumnHeader7, Me.ColumnHeader8, Me.ColumnHeader9, Me.ColumnHeader10, Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3, Me.ColumnHeader4, Me.ColumnHeader5, Me.ColumnHeader11, Me.ColumnHeader12, Me.ColumnHeader13})
        Me.PListView.ContextMenuStrip = Me.ContextMenuStrip1
        Me.PListView.Dock = System.Windows.Forms.DockStyle.Fill
        Me.PListView.Font = New System.Drawing.Font("Arial", 8.0!, System.Drawing.FontStyle.Bold)
        Me.PListView.FullRowSelect = True
        Me.PListView.Location = New System.Drawing.Point(0, 24)
        Me.PListView.Name = "PListView"
        Me.PListView.OwnerDraw = True
        Me.PListView.Size = New System.Drawing.Size(478, 231)
        Me.PListView.SmallImageList = Me.ImageList1
        Me.PListView.TabIndex = 8
        Me.PListView.UseCompatibleStateImageBehavior = False
        Me.PListView.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader6
        '
        Me.ColumnHeader6.Text = "Name"
        Me.ColumnHeader6.Width = 120
        '
        'ColumnHeader7
        '
        Me.ColumnHeader7.Text = "ID"
        Me.ColumnHeader7.Width = 120
        '
        'ColumnHeader8
        '
        Me.ColumnHeader8.Text = "Path"
        Me.ColumnHeader8.Width = 400
        '
        'ColumnHeader9
        '
        Me.ColumnHeader9.Text = "Memory"
        Me.ColumnHeader9.Width = 120
        '
        'ColumnHeader10
        '
        Me.ColumnHeader10.Text = "Creation Date"
        Me.ColumnHeader10.Width = 86
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "Company Name"
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "Version"
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Language"
        '
        'ColumnHeader4
        '
        Me.ColumnHeader4.Text = "Legal Copyright"
        '
        'ColumnHeader5
        '
        Me.ColumnHeader5.Text = "Legal Trademarks"
        '
        'ColumnHeader11
        '
        Me.ColumnHeader11.Text = "Product Name"
        '
        'ColumnHeader12
        '
        Me.ColumnHeader12.Text = "File Description"
        '
        'ColumnHeader13
        '
        Me.ColumnHeader13.Text = "Hash"
        Me.ColumnHeader13.Width = 39
        '
        'Timer4
        '
        Me.Timer4.Enabled = True
        '
        'MenuStrip1
        '
        Me.MenuStrip1.BackColor = System.Drawing.Color.Gainsboro
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SortOrderToolStripMenuItem})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.MenuStrip1.Size = New System.Drawing.Size(478, 24)
        Me.MenuStrip1.TabIndex = 10
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'SortOrderToolStripMenuItem
        '
        Me.SortOrderToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripMenuItem2, Me.ToolStripMenuItem3, Me.ToolStripMenuItem4})
        Me.SortOrderToolStripMenuItem.ForeColor = System.Drawing.Color.DimGray
        Me.SortOrderToolStripMenuItem.Name = "SortOrderToolStripMenuItem"
        Me.SortOrderToolStripMenuItem.Size = New System.Drawing.Size(73, 20)
        Me.SortOrderToolStripMenuItem.Text = "Sort Order"
        '
        'ToolStripMenuItem2
        '
        Me.ToolStripMenuItem2.BackColor = System.Drawing.Color.Gainsboro
        Me.ToolStripMenuItem2.ForeColor = System.Drawing.Color.Black
        Me.ToolStripMenuItem2.Name = "ToolStripMenuItem2"
        Me.ToolStripMenuItem2.Size = New System.Drawing.Size(136, 22)
        Me.ToolStripMenuItem2.Text = "None"
        '
        'ToolStripMenuItem3
        '
        Me.ToolStripMenuItem3.BackColor = System.Drawing.Color.Gainsboro
        Me.ToolStripMenuItem3.ForeColor = System.Drawing.Color.Black
        Me.ToolStripMenuItem3.Name = "ToolStripMenuItem3"
        Me.ToolStripMenuItem3.Size = New System.Drawing.Size(136, 22)
        Me.ToolStripMenuItem3.Text = "Descending"
        '
        'ToolStripMenuItem4
        '
        Me.ToolStripMenuItem4.BackColor = System.Drawing.Color.Gainsboro
        Me.ToolStripMenuItem4.ForeColor = System.Drawing.Color.Black
        Me.ToolStripMenuItem4.Name = "ToolStripMenuItem4"
        Me.ToolStripMenuItem4.Size = New System.Drawing.Size(136, 22)
        Me.ToolStripMenuItem4.Text = "Ascending"
        '
        'HuraAlertBox1
        '
        Me.HuraAlertBox1.AlertStyle = comet.HuraAlertBox.Style.Success
        Me.HuraAlertBox1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.HuraAlertBox1.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.HuraAlertBox1.Location = New System.Drawing.Point(0, 215)
        Me.HuraAlertBox1.Name = "HuraAlertBox1"
        Me.HuraAlertBox1.Size = New System.Drawing.Size(478, 40)
        Me.HuraAlertBox1.TabIndex = 11
        Me.HuraAlertBox1.Text = "GetProcesses ..."
        '
        'PropertiesToolStripMenuItem
        '
        Me.PropertiesToolStripMenuItem.Name = "PropertiesToolStripMenuItem"
        Me.PropertiesToolStripMenuItem.Size = New System.Drawing.Size(137, 22)
        Me.PropertiesToolStripMenuItem.Text = "Properties"
        '
        'Form35
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(478, 277)
        Me.Controls.Add(Me.HuraAlertBox1)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.PListView)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.MenuStrip1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MainMenuStrip = Me.MenuStrip1
        Me.Name = "Form35"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Process Manager  "
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents RefreshToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents KillProcessToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents SuspendToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents Timer2 As Timer
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Timer3 As System.Windows.Forms.Timer
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
    Friend WithEvents ToolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents RestToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PListView As comet.GClass9
    Friend WithEvents ColumnHeader6 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader7 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader8 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader9 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader10 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Timer4 As System.Windows.Forms.Timer
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader4 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader5 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader11 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader12 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader13 As System.Windows.Forms.ColumnHeader
    Friend WithEvents scream01 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents MenuStrip1 As System.Windows.Forms.MenuStrip
    Friend WithEvents SortOrderToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem2 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem3 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem4 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents SdaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents HuraAlertBox1 As comet.HuraAlertBox
    Friend WithEvents PropertiesToolStripMenuItem As ToolStripMenuItem
End Class
