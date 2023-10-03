<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form32
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form32))
        Dim TreeNode1 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_CLASSES_ROOT")
        Dim TreeNode2 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_CURRENT_USER")
        Dim TreeNode3 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_LOCAL_MACHINE")
        Dim TreeNode4 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_USERS")
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.img = New System.Windows.Forms.ImageList(Me.components)
        Me.DeleteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NewValueToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EditToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RefreshToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.crg = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.DeleteKeyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CreateKeyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RefreshToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.crgk = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.pr = New System.Windows.Forms.ToolStripProgressBar()
        Me.RGk = New System.Windows.Forms.TreeView()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.SplitContainer1 = New System.Windows.Forms.SplitContainer()
        Me.RGLIST = New comet.GClass9()
        Me.ColumnHeader4 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader5 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader6 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.crg.SuspendLayout()
        Me.crgk.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.SplitContainer1.Panel1.SuspendLayout()
        Me.SplitContainer1.Panel2.SuspendLayout()
        Me.SplitContainer1.SuspendLayout()
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
        Me.img.Images.SetKeyName(0, "ee.png")
        Me.img.Images.SetKeyName(1, "s.png")
        Me.img.Images.SetKeyName(2, "q.png")
        '
        'DeleteToolStripMenuItem
        '
        Me.DeleteToolStripMenuItem.BackColor = System.Drawing.Color.Gainsboro
        Me.DeleteToolStripMenuItem.Name = "DeleteToolStripMenuItem"
        Me.DeleteToolStripMenuItem.Size = New System.Drawing.Size(102, 22)
        Me.DeleteToolStripMenuItem.Text = "Delete"
        '
        'NewValueToolStripMenuItem
        '
        Me.NewValueToolStripMenuItem.BackColor = System.Drawing.Color.Gainsboro
        Me.NewValueToolStripMenuItem.Name = "NewValueToolStripMenuItem"
        Me.NewValueToolStripMenuItem.Size = New System.Drawing.Size(102, 22)
        Me.NewValueToolStripMenuItem.Text = "NewValue"
        '
        'EditToolStripMenuItem
        '
        Me.EditToolStripMenuItem.BackColor = System.Drawing.Color.Gainsboro
        Me.EditToolStripMenuItem.Name = "EditToolStripMenuItem"
        Me.EditToolStripMenuItem.Size = New System.Drawing.Size(102, 22)
        Me.EditToolStripMenuItem.Text = "Edit"
        '
        'RefreshToolStripMenuItem1
        '
        Me.RefreshToolStripMenuItem1.BackColor = System.Drawing.Color.Gainsboro
        Me.RefreshToolStripMenuItem1.Name = "RefreshToolStripMenuItem1"
        Me.RefreshToolStripMenuItem1.Size = New System.Drawing.Size(102, 22)
        Me.RefreshToolStripMenuItem1.Text = "Refresh"
        '
        'crg
        '
        Me.crg.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RefreshToolStripMenuItem1, Me.EditToolStripMenuItem, Me.NewValueToolStripMenuItem, Me.DeleteToolStripMenuItem})
        Me.crg.Name = "crg"
        Me.crg.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.crg.ShowImageMargin = False
        Me.crg.Size = New System.Drawing.Size(103, 92)
        '
        'DeleteKeyToolStripMenuItem
        '
        Me.DeleteKeyToolStripMenuItem.BackColor = System.Drawing.Color.Gainsboro
        Me.DeleteKeyToolStripMenuItem.Name = "DeleteKeyToolStripMenuItem"
        Me.DeleteKeyToolStripMenuItem.Size = New System.Drawing.Size(102, 22)
        Me.DeleteKeyToolStripMenuItem.Text = "DeleteKey"
        '
        'CreateKeyToolStripMenuItem
        '
        Me.CreateKeyToolStripMenuItem.BackColor = System.Drawing.Color.Gainsboro
        Me.CreateKeyToolStripMenuItem.Name = "CreateKeyToolStripMenuItem"
        Me.CreateKeyToolStripMenuItem.Size = New System.Drawing.Size(102, 22)
        Me.CreateKeyToolStripMenuItem.Text = "CreateKey"
        '
        'RefreshToolStripMenuItem
        '
        Me.RefreshToolStripMenuItem.BackColor = System.Drawing.Color.Gainsboro
        Me.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem"
        Me.RefreshToolStripMenuItem.Size = New System.Drawing.Size(102, 22)
        Me.RefreshToolStripMenuItem.Text = "Refresh"
        '
        'crgk
        '
        Me.crgk.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RefreshToolStripMenuItem, Me.CreateKeyToolStripMenuItem, Me.DeleteKeyToolStripMenuItem})
        Me.crgk.Name = "crgk"
        Me.crgk.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.crgk.ShowImageMargin = False
        Me.crgk.Size = New System.Drawing.Size(103, 70)
        '
        'pr
        '
        Me.pr.Name = "pr"
        Me.pr.Size = New System.Drawing.Size(20, 16)
        Me.pr.Visible = False
        '
        'RGk
        '
        Me.RGk.BackColor = System.Drawing.Color.Gainsboro
        Me.RGk.ContextMenuStrip = Me.crgk
        Me.RGk.Dock = System.Windows.Forms.DockStyle.Fill
        Me.RGk.ForeColor = System.Drawing.Color.Black
        Me.RGk.ImageIndex = 0
        Me.RGk.ImageList = Me.img
        Me.RGk.LineColor = System.Drawing.Color.White
        Me.RGk.Location = New System.Drawing.Point(0, 0)
        Me.RGk.Name = "RGk"
        TreeNode1.ImageIndex = -2
        TreeNode1.Name = "HKEY_CLASSES_ROOT"
        TreeNode1.Text = "HKEY_CLASSES_ROOT"
        TreeNode2.ImageIndex = -2
        TreeNode2.Name = "HKEY_CURRENT_USER"
        TreeNode2.Text = "HKEY_CURRENT_USER"
        TreeNode3.ImageIndex = -2
        TreeNode3.Name = "HKEY_LOCAL_MACHINE"
        TreeNode3.Text = "HKEY_LOCAL_MACHINE"
        TreeNode4.ImageIndex = -2
        TreeNode4.Name = "HKEY_USERS"
        TreeNode4.Text = "HKEY_USERS"
        Me.RGk.Nodes.AddRange(New System.Windows.Forms.TreeNode() {TreeNode1, TreeNode2, TreeNode3, TreeNode4})
        Me.RGk.SelectedImageIndex = 0
        Me.RGk.Size = New System.Drawing.Size(221, 300)
        Me.RGk.StateImageList = Me.img
        Me.RGk.TabIndex = 9
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.Gainsboro
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.pr, Me.ToolStripStatusLabel1})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 300)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip1.Size = New System.Drawing.Size(664, 22)
        Me.StatusStrip1.TabIndex = 8
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.BackColor = System.Drawing.SystemColors.Control
        Me.ToolStripStatusLabel1.ForeColor = System.Drawing.Color.Black
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(19, 17)
        Me.ToolStripStatusLabel1.Text = "...."
        '
        'SplitContainer1
        '
        Me.SplitContainer1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.SplitContainer1.Location = New System.Drawing.Point(0, 0)
        Me.SplitContainer1.Name = "SplitContainer1"
        '
        'SplitContainer1.Panel1
        '
        Me.SplitContainer1.Panel1.Controls.Add(Me.RGk)
        '
        'SplitContainer1.Panel2
        '
        Me.SplitContainer1.Panel2.Controls.Add(Me.RGLIST)
        Me.SplitContainer1.Size = New System.Drawing.Size(664, 300)
        Me.SplitContainer1.SplitterDistance = 221
        Me.SplitContainer1.TabIndex = 11
        '
        'RGLIST
        '
        Me.RGLIST.BackColor = System.Drawing.Color.White
        Me.RGLIST.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader4, Me.ColumnHeader5, Me.ColumnHeader6})
        Me.RGLIST.ContextMenuStrip = Me.crg
        Me.RGLIST.Dock = System.Windows.Forms.DockStyle.Fill
        Me.RGLIST.Font = New System.Drawing.Font("Arial", 8.0!, System.Drawing.FontStyle.Bold)
        Me.RGLIST.ForeColor = System.Drawing.Color.Black
        Me.RGLIST.FullRowSelect = True
        Me.RGLIST.Location = New System.Drawing.Point(0, 0)
        Me.RGLIST.Name = "RGLIST"
        Me.RGLIST.OwnerDraw = True
        Me.RGLIST.Size = New System.Drawing.Size(439, 300)
        Me.RGLIST.SmallImageList = Me.img
        Me.RGLIST.TabIndex = 11
        Me.RGLIST.UseCompatibleStateImageBehavior = False
        Me.RGLIST.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader4
        '
        Me.ColumnHeader4.Text = "Name"
        Me.ColumnHeader4.Width = 127
        '
        'ColumnHeader5
        '
        Me.ColumnHeader5.Text = "Type"
        Me.ColumnHeader5.Width = 148
        '
        'ColumnHeader6
        '
        Me.ColumnHeader6.Text = "Value"
        Me.ColumnHeader6.Width = 160
        '
        'Timer2
        '
        Me.Timer2.Enabled = True
        '
        'Form32
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(664, 322)
        Me.Controls.Add(Me.SplitContainer1)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form32"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Regedit  "
        Me.crg.ResumeLayout(False)
        Me.crgk.ResumeLayout(False)
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.SplitContainer1.Panel1.ResumeLayout(False)
        Me.SplitContainer1.Panel2.ResumeLayout(False)
        Me.SplitContainer1.ResumeLayout(False)
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
    Friend WithEvents DeleteKeyToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CreateKeyToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RefreshToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents crgk As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents pr As System.Windows.Forms.ToolStripProgressBar
    Friend WithEvents RGk As System.Windows.Forms.TreeView
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents SplitContainer1 As System.Windows.Forms.SplitContainer
    Friend WithEvents ToolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents Timer2 As System.Windows.Forms.Timer
    Friend WithEvents RGLIST As comet.GClass9
    Friend WithEvents ColumnHeader4 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader5 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader6 As System.Windows.Forms.ColumnHeader
End Class
