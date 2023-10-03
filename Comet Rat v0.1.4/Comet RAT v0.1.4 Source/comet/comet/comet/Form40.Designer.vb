<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form40
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form40))
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.Q1ToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.Q2ToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RefreshToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer3 = New System.Windows.Forms.Timer(Me.components)
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.Timer4 = New System.Windows.Forms.Timer(Me.components)
        Me.lvServices = New comet.GClass9()
        Me.ColumnHeader6 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader7 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader8 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.HuraAlertBox1 = New comet.HuraAlertBox()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 1
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "4erwfgasdfvwer3wesd.png")
        Me.ImageList1.Images.SetKeyName(1, "qweqwde3.png")
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.Q1ToolStripMenuItem, Me.Q2ToolStripMenuItem, Me.RefreshToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.ContextMenuStrip1.ShowImageMargin = False
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(89, 70)
        '
        'Q1ToolStripMenuItem
        '
        Me.Q1ToolStripMenuItem.Name = "Q1ToolStripMenuItem"
        Me.Q1ToolStripMenuItem.Size = New System.Drawing.Size(88, 22)
        Me.Q1ToolStripMenuItem.Text = "Stop"
        '
        'Q2ToolStripMenuItem
        '
        Me.Q2ToolStripMenuItem.Name = "Q2ToolStripMenuItem"
        Me.Q2ToolStripMenuItem.Size = New System.Drawing.Size(88, 22)
        Me.Q2ToolStripMenuItem.Text = "Run"
        '
        'RefreshToolStripMenuItem
        '
        Me.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem"
        Me.RefreshToolStripMenuItem.Size = New System.Drawing.Size(88, 22)
        Me.RefreshToolStripMenuItem.Text = "Refresh"
        '
        'Timer2
        '
        Me.Timer2.Enabled = True
        '
        'Timer3
        '
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.Gainsboro
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel1})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 264)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip1.Size = New System.Drawing.Size(561, 22)
        Me.StatusStrip1.TabIndex = 26
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.BackColor = System.Drawing.Color.FromArgb(CType(CType(9, Byte), Integer), CType(CType(43, Byte), Integer), CType(CType(68, Byte), Integer))
        Me.ToolStripStatusLabel1.ForeColor = System.Drawing.Color.Black
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(44, 17)
        Me.ToolStripStatusLabel1.Text = "Service"
        '
        'Timer4
        '
        Me.Timer4.Enabled = True
        '
        'lvServices
        '
        Me.lvServices.BackColor = System.Drawing.Color.White
        Me.lvServices.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader6, Me.ColumnHeader7, Me.ColumnHeader8})
        Me.lvServices.ContextMenuStrip = Me.ContextMenuStrip1
        Me.lvServices.Dock = System.Windows.Forms.DockStyle.Fill
        Me.lvServices.Font = New System.Drawing.Font("Arial", 8.0!, System.Drawing.FontStyle.Bold)
        Me.lvServices.ForeColor = System.Drawing.Color.Black
        Me.lvServices.FullRowSelect = True
        Me.lvServices.Location = New System.Drawing.Point(0, 0)
        Me.lvServices.Name = "lvServices"
        Me.lvServices.OwnerDraw = True
        Me.lvServices.Size = New System.Drawing.Size(561, 286)
        Me.lvServices.SmallImageList = Me.ImageList1
        Me.lvServices.TabIndex = 24
        Me.lvServices.UseCompatibleStateImageBehavior = False
        Me.lvServices.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader6
        '
        Me.ColumnHeader6.Text = "Status"
        Me.ColumnHeader6.Width = 280
        '
        'ColumnHeader7
        '
        Me.ColumnHeader7.Text = "Name"
        Me.ColumnHeader7.Width = 133
        '
        'ColumnHeader8
        '
        Me.ColumnHeader8.Text = "Service Type"
        Me.ColumnHeader8.Width = 144
        '
        'HuraAlertBox1
        '
        Me.HuraAlertBox1.AlertStyle = comet.HuraAlertBox.Style.Success
        Me.HuraAlertBox1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.HuraAlertBox1.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.HuraAlertBox1.Location = New System.Drawing.Point(0, 229)
        Me.HuraAlertBox1.Name = "HuraAlertBox1"
        Me.HuraAlertBox1.Size = New System.Drawing.Size(561, 35)
        Me.HuraAlertBox1.TabIndex = 6
        Me.HuraAlertBox1.Text = "GetService ..."
        '
        'Form40
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(561, 286)
        Me.Controls.Add(Me.HuraAlertBox1)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.lvServices)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form40"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Service"
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents lvServices As comet.GClass9
    Friend WithEvents ColumnHeader6 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader7 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader8 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents Q1ToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Q2ToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents Timer2 As System.Windows.Forms.Timer
    Friend WithEvents Timer3 As System.Windows.Forms.Timer
    Friend WithEvents RefreshToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents ToolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents Timer4 As System.Windows.Forms.Timer
    Friend WithEvents HuraAlertBox1 As comet.HuraAlertBox
End Class
