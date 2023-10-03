<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Fm
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Fm))
        Me.Button1 = New System.Windows.Forms.Button()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.ListView1 = New System.Windows.Forms.ListView()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.RunToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DeleteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RenameToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(0, 0)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "Back"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(81, 2)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(474, 20)
        Me.TextBox1.TabIndex = 1
        '
        'ListView1
        '
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2})
        Me.ListView1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.ListView1.FullRowSelect = True
        Me.ListView1.GridLines = True
        Me.ListView1.Location = New System.Drawing.Point(0, 23)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.Size = New System.Drawing.Size(567, 373)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 2
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "Name"
        Me.ColumnHeader1.Width = 403
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "Size"
        Me.ColumnHeader2.Width = 159
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RunToolStripMenuItem, Me.DeleteToolStripMenuItem, Me.RenameToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(121, 70)
        '
        'RunToolStripMenuItem
        '
        Me.RunToolStripMenuItem.Name = "RunToolStripMenuItem"
        Me.RunToolStripMenuItem.Size = New System.Drawing.Size(120, 22)
        Me.RunToolStripMenuItem.Text = "Run"
        '
        'DeleteToolStripMenuItem
        '
        Me.DeleteToolStripMenuItem.Name = "DeleteToolStripMenuItem"
        Me.DeleteToolStripMenuItem.Size = New System.Drawing.Size(120, 22)
        Me.DeleteToolStripMenuItem.Text = "Delete"
        '
        'RenameToolStripMenuItem
        '
        Me.RenameToolStripMenuItem.Name = "RenameToolStripMenuItem"
        Me.RenameToolStripMenuItem.Size = New System.Drawing.Size(120, 22)
        Me.RenameToolStripMenuItem.Text = "Rename"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "0.png")
        Me.ImageList1.Images.SetKeyName(1, "1.png")
        Me.ImageList1.Images.SetKeyName(2, "2.png")
        Me.ImageList1.Images.SetKeyName(3, "3.png")
        Me.ImageList1.Images.SetKeyName(4, "4.png")
        Me.ImageList1.Images.SetKeyName(5, "5.png")
        Me.ImageList1.Images.SetKeyName(6, "6.png")
        Me.ImageList1.Images.SetKeyName(7, "7.png")
        Me.ImageList1.Images.SetKeyName(8, "8.png")
        Me.ImageList1.Images.SetKeyName(9, "9.png")
        Me.ImageList1.Images.SetKeyName(10, "10.png")
        Me.ImageList1.Images.SetKeyName(11, "11.png")
        Me.ImageList1.Images.SetKeyName(12, "12.png")
        Me.ImageList1.Images.SetKeyName(13, "13.png")
        Me.ImageList1.Images.SetKeyName(14, "14.png")
        Me.ImageList1.Images.SetKeyName(15, "15.png")
        Me.ImageList1.Images.SetKeyName(16, "16.png")
        Me.ImageList1.Images.SetKeyName(17, "17.png")
        Me.ImageList1.Images.SetKeyName(18, "18.png")
        Me.ImageList1.Images.SetKeyName(19, "19.png")
        Me.ImageList1.Images.SetKeyName(20, "20.png")
        Me.ImageList1.Images.SetKeyName(21, "21.png")
        Me.ImageList1.Images.SetKeyName(22, "22.png")
        Me.ImageList1.Images.SetKeyName(23, "23.png")
        Me.ImageList1.Images.SetKeyName(24, "24.png")
        Me.ImageList1.Images.SetKeyName(25, "25.png")
        Me.ImageList1.Images.SetKeyName(26, "26.png")
        Me.ImageList1.Images.SetKeyName(27, "27.png")
        Me.ImageList1.Images.SetKeyName(28, "28.png")
        Me.ImageList1.Images.SetKeyName(29, "29.png")
        Me.ImageList1.Images.SetKeyName(30, "30.png")
        Me.ImageList1.Images.SetKeyName(31, "31.png")
        Me.ImageList1.Images.SetKeyName(32, "32.png")
        Me.ImageList1.Images.SetKeyName(33, "33.png")
        Me.ImageList1.Images.SetKeyName(34, "34.png")
        Me.ImageList1.Images.SetKeyName(35, "35.png")
        Me.ImageList1.Images.SetKeyName(36, "36.png")
        Me.ImageList1.Images.SetKeyName(37, "37.png")
        Me.ImageList1.Images.SetKeyName(38, "38.png")
        Me.ImageList1.Images.SetKeyName(39, "39.png")
        Me.ImageList1.Images.SetKeyName(40, "40.png")
        Me.ImageList1.Images.SetKeyName(41, "41.png")
        Me.ImageList1.Images.SetKeyName(42, "42.png")
        Me.ImageList1.Images.SetKeyName(43, "43.png")
        Me.ImageList1.Images.SetKeyName(44, "44.png")
        Me.ImageList1.Images.SetKeyName(45, "45.png")
        Me.ImageList1.Images.SetKeyName(46, "46.png")
        Me.ImageList1.Images.SetKeyName(47, "47.png")
        Me.ImageList1.Images.SetKeyName(48, "48.png")
        Me.ImageList1.Images.SetKeyName(49, "49.png")
        Me.ImageList1.Images.SetKeyName(50, "50.png")
        Me.ImageList1.Images.SetKeyName(51, "51.png")
        Me.ImageList1.Images.SetKeyName(52, "52.png")
        Me.ImageList1.Images.SetKeyName(53, "53.png")
        Me.ImageList1.Images.SetKeyName(54, "54.png")
        Me.ImageList1.Images.SetKeyName(55, "55.png")
        Me.ImageList1.Images.SetKeyName(56, "56.png")
        Me.ImageList1.Images.SetKeyName(57, "57.png")
        '
        'Fm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(567, 394)
        Me.Controls.Add(Me.ListView1)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Button1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Fm"
        Me.Text = "Fm"
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents ListView1 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents RunToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DeleteToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RenameToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
End Class
