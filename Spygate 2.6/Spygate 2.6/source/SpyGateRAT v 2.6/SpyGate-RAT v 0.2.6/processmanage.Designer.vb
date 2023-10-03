<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class processmanage
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(processmanage))
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.RefreshToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.KillProcessToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SuspendToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.PListView = New System.Windows.Forms.ListView()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader4 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader5 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RefreshToolStripMenuItem, Me.KillProcessToolStripMenuItem, Me.SuspendToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(134, 70)
        '
        'RefreshToolStripMenuItem
        '
        Me.RefreshToolStripMenuItem.Image = CType(resources.GetObject("RefreshToolStripMenuItem.Image"), System.Drawing.Image)
        Me.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem"
        Me.RefreshToolStripMenuItem.Size = New System.Drawing.Size(133, 22)
        Me.RefreshToolStripMenuItem.Text = "Refresh"
        '
        'KillProcessToolStripMenuItem
        '
        Me.KillProcessToolStripMenuItem.Image = CType(resources.GetObject("KillProcessToolStripMenuItem.Image"), System.Drawing.Image)
        Me.KillProcessToolStripMenuItem.Name = "KillProcessToolStripMenuItem"
        Me.KillProcessToolStripMenuItem.Size = New System.Drawing.Size(133, 22)
        Me.KillProcessToolStripMenuItem.Text = "Kill Process"
        '
        'SuspendToolStripMenuItem
        '
        Me.SuspendToolStripMenuItem.Image = CType(resources.GetObject("SuspendToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SuspendToolStripMenuItem.Name = "SuspendToolStripMenuItem"
        Me.SuspendToolStripMenuItem.Size = New System.Drawing.Size(133, 22)
        Me.SuspendToolStripMenuItem.Text = "Suspend"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "cog.png")
        '
        'PListView
        '
        Me.PListView.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3, Me.ColumnHeader4, Me.ColumnHeader5})
        Me.PListView.ContextMenuStrip = Me.ContextMenuStrip1
        Me.PListView.Dock = System.Windows.Forms.DockStyle.Fill
        Me.PListView.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.PListView.FullRowSelect = True
        Me.PListView.GridLines = True
        Me.PListView.Location = New System.Drawing.Point(0, 0)
        Me.PListView.Name = "PListView"
        Me.PListView.Size = New System.Drawing.Size(688, 370)
        Me.PListView.SmallImageList = Me.ImageList1
        Me.PListView.Sorting = System.Windows.Forms.SortOrder.Ascending
        Me.PListView.TabIndex = 6
        Me.PListView.UseCompatibleStateImageBehavior = False
        Me.PListView.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "Name"
        Me.ColumnHeader1.Width = 120
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "ID"
        Me.ColumnHeader2.Width = 120
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Path"
        Me.ColumnHeader3.Width = 200
        '
        'ColumnHeader4
        '
        Me.ColumnHeader4.Text = "Memory"
        Me.ColumnHeader4.Width = 120
        '
        'ColumnHeader5
        '
        Me.ColumnHeader5.Text = "Creation Date"
        Me.ColumnHeader5.Width = 120
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 370)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(688, 22)
        Me.StatusStrip1.TabIndex = 5
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 1
        '
        'processmanage
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(688, 392)
        Me.Controls.Add(Me.PListView)
        Me.Controls.Add(Me.StatusStrip1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "processmanage"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Process Manager  "
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents RefreshToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents KillProcessToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents SuspendToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents PListView As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader4 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader5 As System.Windows.Forms.ColumnHeader
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
End Class
