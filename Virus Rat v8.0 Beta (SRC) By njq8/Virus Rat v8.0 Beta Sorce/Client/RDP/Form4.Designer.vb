<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form4
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form4))
        Me.ListView1 = New System.Windows.Forms.ListView
        Me.ColumnHeader1 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader2 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader3 = New System.Windows.Forms.ColumnHeader
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.CopyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.CopyPasswordToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.CopyPasswordToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem
        Me.OpenUrlToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ListView1
        '
        Me.ListView1.BackColor = System.Drawing.Color.White
        Me.ListView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3})
        Me.ListView1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.ListView1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListView1.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ListView1.ForeColor = System.Drawing.Color.Blue
        Me.ListView1.GridLines = True
        Me.ListView1.LargeImageList = Me.ImageList1
        Me.ListView1.Location = New System.Drawing.Point(0, 0)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.Size = New System.Drawing.Size(553, 283)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 0
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "URL"
        Me.ColumnHeader1.Width = 224
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "User Name "
        Me.ColumnHeader2.Width = 156
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Password"
        Me.ColumnHeader3.Width = 121
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CopyToolStripMenuItem, Me.CopyPasswordToolStripMenuItem, Me.CopyPasswordToolStripMenuItem1, Me.OpenUrlToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(165, 130)
        '
        'CopyToolStripMenuItem
        '
        Me.CopyToolStripMenuItem.Font = New System.Drawing.Font("Segoe UI Semibold", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CopyToolStripMenuItem.Image = CType(resources.GetObject("CopyToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyToolStripMenuItem.Name = "CopyToolStripMenuItem"
        Me.CopyToolStripMenuItem.Size = New System.Drawing.Size(164, 26)
        Me.CopyToolStripMenuItem.Text = "Save in Text"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "key.png")
        '
        'CopyPasswordToolStripMenuItem
        '
        Me.CopyPasswordToolStripMenuItem.Image = CType(resources.GetObject("CopyPasswordToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyPasswordToolStripMenuItem.Name = "CopyPasswordToolStripMenuItem"
        Me.CopyPasswordToolStripMenuItem.Size = New System.Drawing.Size(164, 26)
        Me.CopyPasswordToolStripMenuItem.Text = "Copy User"
        '
        'CopyPasswordToolStripMenuItem1
        '
        Me.CopyPasswordToolStripMenuItem1.Image = CType(resources.GetObject("CopyPasswordToolStripMenuItem1.Image"), System.Drawing.Image)
        Me.CopyPasswordToolStripMenuItem1.Name = "CopyPasswordToolStripMenuItem1"
        Me.CopyPasswordToolStripMenuItem1.Size = New System.Drawing.Size(164, 26)
        Me.CopyPasswordToolStripMenuItem1.Text = "Copy Password"
        '
        'OpenUrlToolStripMenuItem
        '
        Me.OpenUrlToolStripMenuItem.Image = CType(resources.GetObject("OpenUrlToolStripMenuItem.Image"), System.Drawing.Image)
        Me.OpenUrlToolStripMenuItem.Name = "OpenUrlToolStripMenuItem"
        Me.OpenUrlToolStripMenuItem.Size = New System.Drawing.Size(164, 26)
        Me.OpenUrlToolStripMenuItem.Text = "Open Url"
        '
        'Form4
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(553, 283)
        Me.Controls.Add(Me.ListView1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Form4"
        Me.Text = "Password - "
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents ListView1 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents CopyToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyPasswordToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyPasswordToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents OpenUrlToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
End Class
