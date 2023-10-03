<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form5
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form5))
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.pic1 = New System.Windows.Forms.PictureBox()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.OpenFolderToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.PlayMusicHidenToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SetAsWallpaperToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.Back1ToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CrypteDecryptTextToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ViewEditTextToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NewTextFileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ShowFolderFileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.HideFolderFileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NewFolderToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.UploadToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DownloadToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RenameToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ExecuteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DeleteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CorruptFileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RefreshToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.BackToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.Button2 = New System.Windows.Forms.Button()
        Me.ListView1 = New System.Windows.Forms.ListView()
        CType(Me.pic1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.SystemColors.Control
        Me.TextBox1.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.TextBox1.Font = New System.Drawing.Font("Arial", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextBox1.ForeColor = System.Drawing.Color.Blue
        Me.TextBox1.Location = New System.Drawing.Point(3, 412)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(611, 14)
        Me.TextBox1.TabIndex = 45
        Me.TextBox1.TabStop = False
        '
        'Button5
        '
        Me.Button5.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.Button5.Image = CType(resources.GetObject("Button5.Image"), System.Drawing.Image)
        Me.Button5.Location = New System.Drawing.Point(446, 109)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(203, 50)
        Me.Button5.TabIndex = 43
        Me.Button5.Text = "My Documents"
        Me.Button5.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.Button4.Image = CType(resources.GetObject("Button4.Image"), System.Drawing.Image)
        Me.Button4.Location = New System.Drawing.Point(446, 56)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(203, 50)
        Me.Button4.TabIndex = 42
        Me.Button4.Text = "Startup"
        Me.Button4.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.Button3.Image = CType(resources.GetObject("Button3.Image"), System.Drawing.Image)
        Me.Button3.Location = New System.Drawing.Point(446, 162)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(203, 50)
        Me.Button3.TabIndex = 41
        Me.Button3.Text = "Temp"
        Me.Button3.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.Button3.UseVisualStyleBackColor = True
        '
        'pic1
        '
        Me.pic1.BackColor = System.Drawing.SystemColors.Control
        Me.pic1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.pic1.Location = New System.Drawing.Point(446, 215)
        Me.pic1.Name = "pic1"
        Me.pic1.Size = New System.Drawing.Size(203, 190)
        Me.pic1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pic1.TabIndex = 40
        Me.pic1.TabStop = False
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 408)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Padding = New System.Windows.Forms.Padding(1, 0, 16, 0)
        Me.StatusStrip1.Size = New System.Drawing.Size(652, 22)
        Me.StatusStrip1.TabIndex = 39
        Me.StatusStrip1.Text = "StatusStrip1"
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
        'OpenFolderToolStripMenuItem
        '
        Me.OpenFolderToolStripMenuItem.Image = CType(resources.GetObject("OpenFolderToolStripMenuItem.Image"), System.Drawing.Image)
        Me.OpenFolderToolStripMenuItem.Name = "OpenFolderToolStripMenuItem"
        Me.OpenFolderToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.OpenFolderToolStripMenuItem.Text = "Open Download Folder"
        '
        'PlayMusicHidenToolStripMenuItem
        '
        Me.PlayMusicHidenToolStripMenuItem.Image = CType(resources.GetObject("PlayMusicHidenToolStripMenuItem.Image"), System.Drawing.Image)
        Me.PlayMusicHidenToolStripMenuItem.Name = "PlayMusicHidenToolStripMenuItem"
        Me.PlayMusicHidenToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.PlayMusicHidenToolStripMenuItem.Text = "Play Music Hiden"
        '
        'SetAsWallpaperToolStripMenuItem
        '
        Me.SetAsWallpaperToolStripMenuItem.Image = CType(resources.GetObject("SetAsWallpaperToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SetAsWallpaperToolStripMenuItem.Name = "SetAsWallpaperToolStripMenuItem"
        Me.SetAsWallpaperToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.SetAsWallpaperToolStripMenuItem.Text = "Set as Wallpaper"
        '
        'Back1ToolStripMenuItem
        '
        Me.Back1ToolStripMenuItem.Image = CType(resources.GetObject("Back1ToolStripMenuItem.Image"), System.Drawing.Image)
        Me.Back1ToolStripMenuItem.Name = "Back1ToolStripMenuItem"
        Me.Back1ToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.Back1ToolStripMenuItem.Text = "View Image"
        '
        'CrypteDecryptTextToolStripMenuItem
        '
        Me.CrypteDecryptTextToolStripMenuItem.Image = CType(resources.GetObject("CrypteDecryptTextToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CrypteDecryptTextToolStripMenuItem.Name = "CrypteDecryptTextToolStripMenuItem"
        Me.CrypteDecryptTextToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.CrypteDecryptTextToolStripMenuItem.Text = "Crypte/Decrypt Text"
        '
        'ViewEditTextToolStripMenuItem
        '
        Me.ViewEditTextToolStripMenuItem.Image = CType(resources.GetObject("ViewEditTextToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ViewEditTextToolStripMenuItem.Name = "ViewEditTextToolStripMenuItem"
        Me.ViewEditTextToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.ViewEditTextToolStripMenuItem.Text = "View/Edit Text"
        '
        'NewTextFileToolStripMenuItem
        '
        Me.NewTextFileToolStripMenuItem.Image = CType(resources.GetObject("NewTextFileToolStripMenuItem.Image"), System.Drawing.Image)
        Me.NewTextFileToolStripMenuItem.Name = "NewTextFileToolStripMenuItem"
        Me.NewTextFileToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.NewTextFileToolStripMenuItem.Text = "New Text File"
        '
        'ShowFolderFileToolStripMenuItem
        '
        Me.ShowFolderFileToolStripMenuItem.Image = CType(resources.GetObject("ShowFolderFileToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ShowFolderFileToolStripMenuItem.Name = "ShowFolderFileToolStripMenuItem"
        Me.ShowFolderFileToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.ShowFolderFileToolStripMenuItem.Text = "Show Folder/File"
        '
        'HideFolderFileToolStripMenuItem
        '
        Me.HideFolderFileToolStripMenuItem.Image = CType(resources.GetObject("HideFolderFileToolStripMenuItem.Image"), System.Drawing.Image)
        Me.HideFolderFileToolStripMenuItem.Name = "HideFolderFileToolStripMenuItem"
        Me.HideFolderFileToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.HideFolderFileToolStripMenuItem.Text = "Hide Folder/File"
        '
        'NewFolderToolStripMenuItem
        '
        Me.NewFolderToolStripMenuItem.Image = CType(resources.GetObject("NewFolderToolStripMenuItem.Image"), System.Drawing.Image)
        Me.NewFolderToolStripMenuItem.Name = "NewFolderToolStripMenuItem"
        Me.NewFolderToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.NewFolderToolStripMenuItem.Text = "New Folder"
        '
        'UploadToolStripMenuItem
        '
        Me.UploadToolStripMenuItem.Image = CType(resources.GetObject("UploadToolStripMenuItem.Image"), System.Drawing.Image)
        Me.UploadToolStripMenuItem.Name = "UploadToolStripMenuItem"
        Me.UploadToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.UploadToolStripMenuItem.Text = "Upload"
        '
        'DownloadToolStripMenuItem
        '
        Me.DownloadToolStripMenuItem.Image = CType(resources.GetObject("DownloadToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DownloadToolStripMenuItem.Name = "DownloadToolStripMenuItem"
        Me.DownloadToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.DownloadToolStripMenuItem.Text = "Download"
        '
        'RenameToolStripMenuItem
        '
        Me.RenameToolStripMenuItem.Image = CType(resources.GetObject("RenameToolStripMenuItem.Image"), System.Drawing.Image)
        Me.RenameToolStripMenuItem.Name = "RenameToolStripMenuItem"
        Me.RenameToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.RenameToolStripMenuItem.Text = "Rename"
        '
        'ExecuteToolStripMenuItem
        '
        Me.ExecuteToolStripMenuItem.Image = CType(resources.GetObject("ExecuteToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ExecuteToolStripMenuItem.Name = "ExecuteToolStripMenuItem"
        Me.ExecuteToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.ExecuteToolStripMenuItem.Text = "Execute"
        '
        'DeleteToolStripMenuItem
        '
        Me.DeleteToolStripMenuItem.Image = CType(resources.GetObject("DeleteToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DeleteToolStripMenuItem.Name = "DeleteToolStripMenuItem"
        Me.DeleteToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.DeleteToolStripMenuItem.Text = "Delete"
        '
        'CorruptFileToolStripMenuItem
        '
        Me.CorruptFileToolStripMenuItem.Image = CType(resources.GetObject("CorruptFileToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CorruptFileToolStripMenuItem.Name = "CorruptFileToolStripMenuItem"
        Me.CorruptFileToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.CorruptFileToolStripMenuItem.Text = "Corrupt File"
        '
        'RefreshToolStripMenuItem
        '
        Me.RefreshToolStripMenuItem.Image = CType(resources.GetObject("RefreshToolStripMenuItem.Image"), System.Drawing.Image)
        Me.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem"
        Me.RefreshToolStripMenuItem.Size = New System.Drawing.Size(196, 22)
        Me.RefreshToolStripMenuItem.Text = "Refresh"
        '
        'BackToolStripMenuItem1
        '
        Me.BackToolStripMenuItem1.Image = CType(resources.GetObject("BackToolStripMenuItem1.Image"), System.Drawing.Image)
        Me.BackToolStripMenuItem1.Name = "BackToolStripMenuItem1"
        Me.BackToolStripMenuItem1.Size = New System.Drawing.Size(196, 22)
        Me.BackToolStripMenuItem1.Text = "Back"
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BackToolStripMenuItem1, Me.RefreshToolStripMenuItem, Me.CorruptFileToolStripMenuItem, Me.DeleteToolStripMenuItem, Me.ExecuteToolStripMenuItem, Me.RenameToolStripMenuItem, Me.DownloadToolStripMenuItem, Me.UploadToolStripMenuItem, Me.NewFolderToolStripMenuItem, Me.HideFolderFileToolStripMenuItem, Me.ShowFolderFileToolStripMenuItem, Me.NewTextFileToolStripMenuItem, Me.ViewEditTextToolStripMenuItem, Me.CrypteDecryptTextToolStripMenuItem, Me.Back1ToolStripMenuItem, Me.SetAsWallpaperToolStripMenuItem, Me.PlayMusicHidenToolStripMenuItem, Me.OpenFolderToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(197, 400)
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "File Size"
        Me.ColumnHeader2.Width = 98
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "File Name"
        Me.ColumnHeader1.Width = 338
        '
        'Button2
        '
        Me.Button2.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.Button2.Image = CType(resources.GetObject("Button2.Image"), System.Drawing.Image)
        Me.Button2.Location = New System.Drawing.Point(446, 3)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(203, 50)
        Me.Button2.TabIndex = 44
        Me.Button2.Text = "Desktop"
        Me.Button2.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.Button2.UseVisualStyleBackColor = True
        '
        'ListView1
        '
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2})
        Me.ListView1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.ListView1.GridLines = True
        Me.ListView1.Location = New System.Drawing.Point(3, 3)
        Me.ListView1.MultiSelect = False
        Me.ListView1.Name = "ListView1"
        Me.ListView1.Size = New System.Drawing.Size(440, 402)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 38
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'Form5
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 14.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(652, 430)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.pic1)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.ListView1)
        Me.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Form5"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "File Manger  "
        CType(Me.pic1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents pic1 As System.Windows.Forms.PictureBox
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents OpenFolderToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PlayMusicHidenToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents SetAsWallpaperToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Back1ToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CrypteDecryptTextToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ViewEditTextToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents NewTextFileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ShowFolderFileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents HideFolderFileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents NewFolderToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents UploadToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DownloadToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RenameToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ExecuteToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DeleteToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CorruptFileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RefreshToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents BackToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents ListView1 As System.Windows.Forms.ListView
End Class
