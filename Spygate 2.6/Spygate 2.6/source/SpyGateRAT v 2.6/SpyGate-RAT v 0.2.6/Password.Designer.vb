<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Password
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Password))
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ListView1 = New System.Windows.Forms.ListView()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SaveInTextToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyUserToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyPasswordToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.OpenURLToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.StatusStrip1.SuspendLayout()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "key.png")
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel1})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 260)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Padding = New System.Windows.Forms.Padding(1, 0, 16, 0)
        Me.StatusStrip1.Size = New System.Drawing.Size(484, 22)
        Me.StatusStrip1.TabIndex = 5
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(121, 17)
        Me.ToolStripStatusLabel1.Text = "ToolStripStatusLabel1"
        '
        'ListView1
        '
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3})
        Me.ListView1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.ListView1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListView1.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ListView1.FullRowSelect = True
        Me.ListView1.GridLines = True
        Me.ListView1.Location = New System.Drawing.Point(0, 0)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.Size = New System.Drawing.Size(484, 282)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 6
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "URL"
        Me.ColumnHeader1.Width = 160
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "User Name "
        Me.ColumnHeader2.Width = 160
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Password"
        Me.ColumnHeader3.Width = 160
        '
        'Timer1
        '
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SaveInTextToolStripMenuItem, Me.CopyUserToolStripMenuItem, Me.CopyPasswordToolStripMenuItem, Me.OpenURLToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(156, 114)
        '
        'SaveInTextToolStripMenuItem
        '
        Me.SaveInTextToolStripMenuItem.Image = CType(resources.GetObject("SaveInTextToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SaveInTextToolStripMenuItem.Name = "SaveInTextToolStripMenuItem"
        Me.SaveInTextToolStripMenuItem.Size = New System.Drawing.Size(155, 22)
        Me.SaveInTextToolStripMenuItem.Text = "Save in Text"
        '
        'CopyUserToolStripMenuItem
        '
        Me.CopyUserToolStripMenuItem.Image = CType(resources.GetObject("CopyUserToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyUserToolStripMenuItem.Name = "CopyUserToolStripMenuItem"
        Me.CopyUserToolStripMenuItem.Size = New System.Drawing.Size(155, 22)
        Me.CopyUserToolStripMenuItem.Text = "Copy User"
        '
        'CopyPasswordToolStripMenuItem
        '
        Me.CopyPasswordToolStripMenuItem.Image = CType(resources.GetObject("CopyPasswordToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyPasswordToolStripMenuItem.Name = "CopyPasswordToolStripMenuItem"
        Me.CopyPasswordToolStripMenuItem.Size = New System.Drawing.Size(155, 22)
        Me.CopyPasswordToolStripMenuItem.Text = "Copy Password"
        '
        'OpenURLToolStripMenuItem
        '
        Me.OpenURLToolStripMenuItem.Image = CType(resources.GetObject("OpenURLToolStripMenuItem.Image"), System.Drawing.Image)
        Me.OpenURLToolStripMenuItem.Name = "OpenURLToolStripMenuItem"
        Me.OpenURLToolStripMenuItem.Size = New System.Drawing.Size(155, 22)
        Me.OpenURLToolStripMenuItem.Text = "Open URL"
        '
        'Password
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(484, 282)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.ListView1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Password"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Password"
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents ToolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ListView1 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents SaveInTextToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyUserToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyPasswordToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents OpenURLToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
End Class
