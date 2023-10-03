<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Reg
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Reg))
        Dim TreeNode5 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_CLASSES_ROOT")
        Dim TreeNode6 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_CURRENT_USER")
        Dim TreeNode7 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_LOCAL_MACHINE")
        Dim TreeNode8 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_USERS")
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.img = New System.Windows.Forms.ImageList(Me.components)
        Me.DeleteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NewValueToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EditToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RefreshToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.crg = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.RGLIST = New System.Windows.Forms.ListView()
        Me.DeleteKeyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CreateKeyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RefreshToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.crgk = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.pr = New System.Windows.Forms.ToolStripProgressBar()
        Me.RGk = New System.Windows.Forms.TreeView()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.crg.SuspendLayout()
        Me.crgk.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 1000
        '
        'img
        '
        Me.img.ImageStream = CType(resources.GetObject("img.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.img.TransparentColor = System.Drawing.Color.Transparent
        Me.img.Images.SetKeyName(0, "dossier-ouvrez-icone-5803-32.png")
        Me.img.Images.SetKeyName(1, "s.png")
        Me.img.Images.SetKeyName(2, "q.png")
        '
        'DeleteToolStripMenuItem
        '
        Me.DeleteToolStripMenuItem.Image = CType(resources.GetObject("DeleteToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DeleteToolStripMenuItem.Name = "DeleteToolStripMenuItem"
        Me.DeleteToolStripMenuItem.Size = New System.Drawing.Size(127, 22)
        Me.DeleteToolStripMenuItem.Text = "Delete"
        '
        'NewValueToolStripMenuItem
        '
        Me.NewValueToolStripMenuItem.Image = CType(resources.GetObject("NewValueToolStripMenuItem.Image"), System.Drawing.Image)
        Me.NewValueToolStripMenuItem.Name = "NewValueToolStripMenuItem"
        Me.NewValueToolStripMenuItem.Size = New System.Drawing.Size(127, 22)
        Me.NewValueToolStripMenuItem.Text = "NewValue"
        '
        'EditToolStripMenuItem
        '
        Me.EditToolStripMenuItem.Image = CType(resources.GetObject("EditToolStripMenuItem.Image"), System.Drawing.Image)
        Me.EditToolStripMenuItem.Name = "EditToolStripMenuItem"
        Me.EditToolStripMenuItem.Size = New System.Drawing.Size(127, 22)
        Me.EditToolStripMenuItem.Text = "Edit"
        '
        'RefreshToolStripMenuItem1
        '
        Me.RefreshToolStripMenuItem1.Image = CType(resources.GetObject("RefreshToolStripMenuItem1.Image"), System.Drawing.Image)
        Me.RefreshToolStripMenuItem1.Name = "RefreshToolStripMenuItem1"
        Me.RefreshToolStripMenuItem1.Size = New System.Drawing.Size(127, 22)
        Me.RefreshToolStripMenuItem1.Text = "Refresh"
        '
        'crg
        '
        Me.crg.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RefreshToolStripMenuItem1, Me.EditToolStripMenuItem, Me.NewValueToolStripMenuItem, Me.DeleteToolStripMenuItem})
        Me.crg.Name = "crg"
        Me.crg.Size = New System.Drawing.Size(128, 92)
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Value"
        Me.ColumnHeader3.Width = 144
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "Type"
        Me.ColumnHeader2.Width = 148
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "Name"
        Me.ColumnHeader1.Width = 127
        '
        'RGLIST
        '
        Me.RGLIST.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3})
        Me.RGLIST.ContextMenuStrip = Me.crg
        Me.RGLIST.Dock = System.Windows.Forms.DockStyle.Fill
        Me.RGLIST.Location = New System.Drawing.Point(212, 0)
        Me.RGLIST.Name = "RGLIST"
        Me.RGLIST.Size = New System.Drawing.Size(424, 255)
        Me.RGLIST.SmallImageList = Me.img
        Me.RGLIST.TabIndex = 10
        Me.RGLIST.UseCompatibleStateImageBehavior = False
        Me.RGLIST.View = System.Windows.Forms.View.Details
        '
        'DeleteKeyToolStripMenuItem
        '
        Me.DeleteKeyToolStripMenuItem.Image = CType(resources.GetObject("DeleteKeyToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DeleteKeyToolStripMenuItem.Name = "DeleteKeyToolStripMenuItem"
        Me.DeleteKeyToolStripMenuItem.Size = New System.Drawing.Size(127, 22)
        Me.DeleteKeyToolStripMenuItem.Text = "DeleteKey"
        '
        'CreateKeyToolStripMenuItem
        '
        Me.CreateKeyToolStripMenuItem.Image = CType(resources.GetObject("CreateKeyToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CreateKeyToolStripMenuItem.Name = "CreateKeyToolStripMenuItem"
        Me.CreateKeyToolStripMenuItem.Size = New System.Drawing.Size(127, 22)
        Me.CreateKeyToolStripMenuItem.Text = "CreateKey"
        '
        'RefreshToolStripMenuItem
        '
        Me.RefreshToolStripMenuItem.Image = CType(resources.GetObject("RefreshToolStripMenuItem.Image"), System.Drawing.Image)
        Me.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem"
        Me.RefreshToolStripMenuItem.Size = New System.Drawing.Size(127, 22)
        Me.RefreshToolStripMenuItem.Text = "Refresh"
        '
        'crgk
        '
        Me.crgk.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RefreshToolStripMenuItem, Me.CreateKeyToolStripMenuItem, Me.DeleteKeyToolStripMenuItem})
        Me.crgk.Name = "crgk"
        Me.crgk.Size = New System.Drawing.Size(128, 70)
        '
        'pr
        '
        Me.pr.Name = "pr"
        Me.pr.Size = New System.Drawing.Size(212, 16)
        '
        'RGk
        '
        Me.RGk.ContextMenuStrip = Me.crgk
        Me.RGk.Dock = System.Windows.Forms.DockStyle.Left
        Me.RGk.ImageIndex = 0
        Me.RGk.ImageList = Me.img
        Me.RGk.Location = New System.Drawing.Point(0, 0)
        Me.RGk.Name = "RGk"
        TreeNode5.ImageIndex = -2
        TreeNode5.Name = "HKEY_CLASSES_ROOT"
        TreeNode5.Text = "HKEY_CLASSES_ROOT"
        TreeNode6.ImageIndex = -2
        TreeNode6.Name = "HKEY_CURRENT_USER"
        TreeNode6.Text = "HKEY_CURRENT_USER"
        TreeNode7.ImageIndex = -2
        TreeNode7.Name = "HKEY_LOCAL_MACHINE"
        TreeNode7.Text = "HKEY_LOCAL_MACHINE"
        TreeNode8.ImageIndex = -2
        TreeNode8.Name = "HKEY_USERS"
        TreeNode8.Text = "HKEY_USERS"
        Me.RGk.Nodes.AddRange(New System.Windows.Forms.TreeNode() {TreeNode5, TreeNode6, TreeNode7, TreeNode8})
        Me.RGk.SelectedImageIndex = 0
        Me.RGk.Size = New System.Drawing.Size(212, 255)
        Me.RGk.StateImageList = Me.img
        Me.RGk.TabIndex = 9
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.pr})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 255)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(636, 22)
        Me.StatusStrip1.TabIndex = 8
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'Reg
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(636, 277)
        Me.Controls.Add(Me.RGLIST)
        Me.Controls.Add(Me.RGk)
        Me.Controls.Add(Me.StatusStrip1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Reg"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Regedit  "
        Me.crg.ResumeLayout(False)
        Me.crgk.ResumeLayout(False)
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents img As System.Windows.Forms.ImageList
    Friend WithEvents DeleteToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents NewValueToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents EditToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RefreshToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents crg As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents RGLIST As System.Windows.Forms.ListView
    Friend WithEvents DeleteKeyToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CreateKeyToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RefreshToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents crgk As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents pr As System.Windows.Forms.ToolStripProgressBar
    Friend WithEvents RGk As System.Windows.Forms.TreeView
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
End Class
