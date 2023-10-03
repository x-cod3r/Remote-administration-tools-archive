<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form3
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
        Me.components = New System.ComponentModel.Container
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form3))
        Me.ListView1 = New System.Windows.Forms.ListView
        Me.ColumnHeader1 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader2 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader3 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader4 = New System.Windows.Forms.ColumnHeader
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.KillProcesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.TestToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ResumeToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.HideToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ListView1
        '
        Me.ListView1.BackColor = System.Drawing.SystemColors.InactiveCaption
        Me.ListView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3, Me.ColumnHeader4})
        Me.ListView1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.ListView1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListView1.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ListView1.ForeColor = System.Drawing.Color.Red
        Me.ListView1.FullRowSelect = True
        Me.ListView1.GridLines = True
        Me.ListView1.Location = New System.Drawing.Point(0, 0)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.Size = New System.Drawing.Size(489, 494)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 0
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "Process Name"
        Me.ColumnHeader1.Width = 126
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "ID"
        Me.ColumnHeader2.Width = 68
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "CPU"
        Me.ColumnHeader3.Width = 70
        '
        'ColumnHeader4
        '
        Me.ColumnHeader4.Text = "Windows Title"
        Me.ColumnHeader4.Width = 216
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.KillProcesToolStripMenuItem, Me.TestToolStripMenuItem, Me.ResumeToolStripMenuItem, Me.HideToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(120, 92)
        '
        'KillProcesToolStripMenuItem
        '
        Me.KillProcesToolStripMenuItem.Image = CType(resources.GetObject("KillProcesToolStripMenuItem.Image"), System.Drawing.Image)
        Me.KillProcesToolStripMenuItem.Name = "KillProcesToolStripMenuItem"
        Me.KillProcesToolStripMenuItem.Size = New System.Drawing.Size(119, 22)
        Me.KillProcesToolStripMenuItem.Text = "Kill "
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "cog.png")
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 10000
        '
        'TestToolStripMenuItem
        '
        Me.TestToolStripMenuItem.Image = CType(resources.GetObject("TestToolStripMenuItem.Image"), System.Drawing.Image)
        Me.TestToolStripMenuItem.Name = "TestToolStripMenuItem"
        Me.TestToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.TestToolStripMenuItem.Text = "Suspend"
        '
        'ResumeToolStripMenuItem
        '
        Me.ResumeToolStripMenuItem.Image = CType(resources.GetObject("ResumeToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ResumeToolStripMenuItem.Name = "ResumeToolStripMenuItem"
        Me.ResumeToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.ResumeToolStripMenuItem.Text = "Show"
        '
        'HideToolStripMenuItem
        '
        Me.HideToolStripMenuItem.Image = CType(resources.GetObject("HideToolStripMenuItem.Image"), System.Drawing.Image)
        Me.HideToolStripMenuItem.Name = "HideToolStripMenuItem"
        Me.HideToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.HideToolStripMenuItem.Text = "Hide"
        '
        'Form3
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(489, 494)
        Me.Controls.Add(Me.ListView1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Form3"
        Me.ShowIcon = False
        Me.ShowInTaskbar = False
        Me.Text = "Process Manager - "
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents ListView1 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader4 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents KillProcesToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents TestToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ResumeToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents HideToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
End Class
