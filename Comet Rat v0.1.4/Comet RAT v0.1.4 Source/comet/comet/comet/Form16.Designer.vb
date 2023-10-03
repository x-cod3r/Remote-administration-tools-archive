<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form16
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form16))
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.EwfwesdToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.TextBox3 = New System.Windows.Forms.TextBox()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.HuraAlertBox1 = New comet.HuraAlertBox()
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.Timer3 = New System.Windows.Forms.Timer(Me.components)
        Me.ListView1 = New comet.GClass9()
        Me.ColumnHeader6 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader7 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader8 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader9 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader10 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ContextMenuStrip1.SuspendLayout()
        Me.Panel1.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.EwfwesdToolStripMenuItem, Me.RToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.ShowImageMargin = False
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(93, 48)
        '
        'EwfwesdToolStripMenuItem
        '
        Me.EwfwesdToolStripMenuItem.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None
        Me.EwfwesdToolStripMenuItem.Name = "EwfwesdToolStripMenuItem"
        Me.EwfwesdToolStripMenuItem.Size = New System.Drawing.Size(92, 22)
        Me.EwfwesdToolStripMenuItem.Text = "Remove"
        '
        'RToolStripMenuItem
        '
        Me.RToolStripMenuItem.Name = "RToolStripMenuItem"
        Me.RToolStripMenuItem.Size = New System.Drawing.Size(92, 22)
        Me.RToolStripMenuItem.Text = "Refresh "
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "gv34werf2qweas.png")
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 1
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.Turquoise
        Me.Panel1.Controls.Add(Me.TextBox3)
        Me.Panel1.Controls.Add(Me.TextBox2)
        Me.Panel1.Controls.Add(Me.TextBox1)
        Me.Panel1.Location = New System.Drawing.Point(477, 85)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(10, 10)
        Me.Panel1.TabIndex = 21
        '
        'TextBox3
        '
        Me.TextBox3.Location = New System.Drawing.Point(111, 188)
        Me.TextBox3.Name = "TextBox3"
        Me.TextBox3.Size = New System.Drawing.Size(100, 20)
        Me.TextBox3.TabIndex = 4
        Me.TextBox3.Text = "1"
        '
        'TextBox2
        '
        Me.TextBox2.BackColor = System.Drawing.Color.Red
        Me.TextBox2.Location = New System.Drawing.Point(115, 214)
        Me.TextBox2.Multiline = True
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(50, 10)
        Me.TextBox2.TabIndex = 1
        Me.TextBox2.Text = "1"
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.Red
        Me.TextBox1.Location = New System.Drawing.Point(127, 182)
        Me.TextBox1.Multiline = True
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(84, 10)
        Me.TextBox1.TabIndex = 0
        '
        'HuraAlertBox1
        '
        Me.HuraAlertBox1.AlertStyle = comet.HuraAlertBox.Style.Success
        Me.HuraAlertBox1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.HuraAlertBox1.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.HuraAlertBox1.Location = New System.Drawing.Point(0, 242)
        Me.HuraAlertBox1.Name = "HuraAlertBox1"
        Me.HuraAlertBox1.Size = New System.Drawing.Size(565, 35)
        Me.HuraAlertBox1.TabIndex = 5
        Me.HuraAlertBox1.Text = "GetInstalled Programs ..."
        '
        'Timer2
        '
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.Gainsboro
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel1})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 277)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip1.Size = New System.Drawing.Size(565, 22)
        Me.StatusStrip1.TabIndex = 22
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.BackColor = System.Drawing.Color.Transparent
        Me.ToolStripStatusLabel1.ForeColor = System.Drawing.Color.Black
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(16, 17)
        Me.ToolStripStatusLabel1.Text = "..."
        '
        'Timer3
        '
        Me.Timer3.Enabled = True
        '
        'ListView1
        '
        Me.ListView1.BackColor = System.Drawing.Color.White
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader6, Me.ColumnHeader7, Me.ColumnHeader8, Me.ColumnHeader9, Me.ColumnHeader10})
        Me.ListView1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.ListView1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListView1.Font = New System.Drawing.Font("Arial", 8.0!, System.Drawing.FontStyle.Bold)
        Me.ListView1.ForeColor = System.Drawing.Color.Black
        Me.ListView1.FullRowSelect = True
        Me.ListView1.Location = New System.Drawing.Point(0, 0)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.OwnerDraw = True
        Me.ListView1.Size = New System.Drawing.Size(565, 277)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 23
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader6
        '
        Me.ColumnHeader6.Text = "Name"
        Me.ColumnHeader6.Width = 280
        '
        'ColumnHeader7
        '
        Me.ColumnHeader7.Text = "publisher"
        Me.ColumnHeader7.Width = 133
        '
        'ColumnHeader8
        '
        Me.ColumnHeader8.Text = "Installed"
        Me.ColumnHeader8.Width = 128
        '
        'ColumnHeader9
        '
        Me.ColumnHeader9.Text = "Size"
        Me.ColumnHeader9.Width = 155
        '
        'ColumnHeader10
        '
        Me.ColumnHeader10.Text = "Version"
        Me.ColumnHeader10.Width = 56
        '
        'Form16
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(565, 299)
        Me.Controls.Add(Me.HuraAlertBox1)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.ListView1)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form16"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Installed Programs "
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents EwfwesdToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Timer2 As System.Windows.Forms.Timer
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents ToolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents Timer3 As System.Windows.Forms.Timer
    Friend WithEvents ListView1 As comet.GClass9
    Friend WithEvents ColumnHeader6 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader7 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader8 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader9 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader10 As System.Windows.Forms.ColumnHeader
    Friend WithEvents TextBox3 As System.Windows.Forms.TextBox
    Friend WithEvents HuraAlertBox1 As comet.HuraAlertBox
End Class
