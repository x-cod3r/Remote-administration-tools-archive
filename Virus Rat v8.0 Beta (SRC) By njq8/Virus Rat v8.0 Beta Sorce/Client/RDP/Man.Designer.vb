<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Man
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Man))
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.ListView1 = New System.Windows.Forms.ListView
        Me.ColumnHeader1 = New System.Windows.Forms.ColumnHeader
        Me.ColumnHeader2 = New System.Windows.Forms.ColumnHeader
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.BackToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.RefreshToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ExecuteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.RenameToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.DeleteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.UploadToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.DownloadToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.NewFolderToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.HideFolderFileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ShowFolderFileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.CrypterTextFileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.DecrypterTextFileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ViewImageToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ShowTextToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.PlayWavSongToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.AddRarToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.DecompressTheFileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.pic1 = New System.Windows.Forms.PictureBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.TextBox2 = New System.Windows.Forms.TextBox
        Me.ContextMenuStrip1.SuspendLayout()
        CType(Me.pic1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(-10, 311)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(193, 20)
        Me.TextBox1.TabIndex = 0
        Me.TextBox1.Visible = False
        '
        'ListView1
        '
        Me.ListView1.BackColor = System.Drawing.Color.MintCream
        Me.ListView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2})
        Me.ListView1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.ListView1.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ListView1.ForeColor = System.Drawing.Color.Blue
        Me.ListView1.FullRowSelect = True
        Me.ListView1.GridLines = True
        Me.ListView1.LargeImageList = Me.ImageList1
        Me.ListView1.Location = New System.Drawing.Point(0, 0)
        Me.ListView1.MultiSelect = False
        Me.ListView1.Name = "ListView1"
        Me.ListView1.Size = New System.Drawing.Size(404, 497)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 2
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "File Name"
        Me.ColumnHeader1.Width = 205
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "File Size"
        Me.ColumnHeader2.Width = 195
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BackToolStripMenuItem, Me.RefreshToolStripMenuItem, Me.ExecuteToolStripMenuItem, Me.RenameToolStripMenuItem, Me.DeleteToolStripMenuItem, Me.UploadToolStripMenuItem, Me.DownloadToolStripMenuItem, Me.NewFolderToolStripMenuItem, Me.HideFolderFileToolStripMenuItem, Me.ShowFolderFileToolStripMenuItem, Me.CrypterTextFileToolStripMenuItem, Me.DecrypterTextFileToolStripMenuItem, Me.ViewImageToolStripMenuItem, Me.ShowTextToolStripMenuItem, Me.PlayWavSongToolStripMenuItem, Me.AddRarToolStripMenuItem, Me.DecompressTheFileToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(207, 378)
        '
        'BackToolStripMenuItem
        '
        Me.BackToolStripMenuItem.Image = CType(resources.GetObject("BackToolStripMenuItem.Image"), System.Drawing.Image)
        Me.BackToolStripMenuItem.Name = "BackToolStripMenuItem"
        Me.BackToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.BackToolStripMenuItem.Text = "Back"
        '
        'RefreshToolStripMenuItem
        '
        Me.RefreshToolStripMenuItem.Image = CType(resources.GetObject("RefreshToolStripMenuItem.Image"), System.Drawing.Image)
        Me.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem"
        Me.RefreshToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.RefreshToolStripMenuItem.Text = "Refresh"
        '
        'ExecuteToolStripMenuItem
        '
        Me.ExecuteToolStripMenuItem.Image = CType(resources.GetObject("ExecuteToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ExecuteToolStripMenuItem.Name = "ExecuteToolStripMenuItem"
        Me.ExecuteToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.ExecuteToolStripMenuItem.Text = "Run"
        '
        'RenameToolStripMenuItem
        '
        Me.RenameToolStripMenuItem.Image = CType(resources.GetObject("RenameToolStripMenuItem.Image"), System.Drawing.Image)
        Me.RenameToolStripMenuItem.Name = "RenameToolStripMenuItem"
        Me.RenameToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.RenameToolStripMenuItem.Text = "Rename"
        '
        'DeleteToolStripMenuItem
        '
        Me.DeleteToolStripMenuItem.Image = CType(resources.GetObject("DeleteToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DeleteToolStripMenuItem.Name = "DeleteToolStripMenuItem"
        Me.DeleteToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.DeleteToolStripMenuItem.Text = "Delete"
        '
        'UploadToolStripMenuItem
        '
        Me.UploadToolStripMenuItem.Image = CType(resources.GetObject("UploadToolStripMenuItem.Image"), System.Drawing.Image)
        Me.UploadToolStripMenuItem.Name = "UploadToolStripMenuItem"
        Me.UploadToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.UploadToolStripMenuItem.Text = "Upload"
        '
        'DownloadToolStripMenuItem
        '
        Me.DownloadToolStripMenuItem.Image = CType(resources.GetObject("DownloadToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DownloadToolStripMenuItem.Name = "DownloadToolStripMenuItem"
        Me.DownloadToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.DownloadToolStripMenuItem.Text = "Download"
        '
        'NewFolderToolStripMenuItem
        '
        Me.NewFolderToolStripMenuItem.Image = CType(resources.GetObject("NewFolderToolStripMenuItem.Image"), System.Drawing.Image)
        Me.NewFolderToolStripMenuItem.Name = "NewFolderToolStripMenuItem"
        Me.NewFolderToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.NewFolderToolStripMenuItem.Text = "New Folder"
        '
        'HideFolderFileToolStripMenuItem
        '
        Me.HideFolderFileToolStripMenuItem.Image = CType(resources.GetObject("HideFolderFileToolStripMenuItem.Image"), System.Drawing.Image)
        Me.HideFolderFileToolStripMenuItem.Name = "HideFolderFileToolStripMenuItem"
        Me.HideFolderFileToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.HideFolderFileToolStripMenuItem.Text = "Hide Folder/File"
        '
        'ShowFolderFileToolStripMenuItem
        '
        Me.ShowFolderFileToolStripMenuItem.Image = CType(resources.GetObject("ShowFolderFileToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ShowFolderFileToolStripMenuItem.Name = "ShowFolderFileToolStripMenuItem"
        Me.ShowFolderFileToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.ShowFolderFileToolStripMenuItem.Text = "Show Folder/File"
        '
        'CrypterTextFileToolStripMenuItem
        '
        Me.CrypterTextFileToolStripMenuItem.Image = CType(resources.GetObject("CrypterTextFileToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CrypterTextFileToolStripMenuItem.Name = "CrypterTextFileToolStripMenuItem"
        Me.CrypterTextFileToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.CrypterTextFileToolStripMenuItem.Text = "Crypter Text File"
        '
        'DecrypterTextFileToolStripMenuItem
        '
        Me.DecrypterTextFileToolStripMenuItem.Image = CType(resources.GetObject("DecrypterTextFileToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DecrypterTextFileToolStripMenuItem.Name = "DecrypterTextFileToolStripMenuItem"
        Me.DecrypterTextFileToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.DecrypterTextFileToolStripMenuItem.Text = "Decrypter Text File"
        '
        'ViewImageToolStripMenuItem
        '
        Me.ViewImageToolStripMenuItem.Image = CType(resources.GetObject("ViewImageToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ViewImageToolStripMenuItem.Name = "ViewImageToolStripMenuItem"
        Me.ViewImageToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.ViewImageToolStripMenuItem.Text = "View image"
        '
        'ShowTextToolStripMenuItem
        '
        Me.ShowTextToolStripMenuItem.Image = CType(resources.GetObject("ShowTextToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ShowTextToolStripMenuItem.Name = "ShowTextToolStripMenuItem"
        Me.ShowTextToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.ShowTextToolStripMenuItem.Text = "Show Text"
        '
        'PlayWavSongToolStripMenuItem
        '
        Me.PlayWavSongToolStripMenuItem.Image = CType(resources.GetObject("PlayWavSongToolStripMenuItem.Image"), System.Drawing.Image)
        Me.PlayWavSongToolStripMenuItem.Name = "PlayWavSongToolStripMenuItem"
        Me.PlayWavSongToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.PlayWavSongToolStripMenuItem.Text = "Play Wav Song"
        '
        'AddRarToolStripMenuItem
        '
        Me.AddRarToolStripMenuItem.Image = CType(resources.GetObject("AddRarToolStripMenuItem.Image"), System.Drawing.Image)
        Me.AddRarToolStripMenuItem.Name = "AddRarToolStripMenuItem"
        Me.AddRarToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.AddRarToolStripMenuItem.Text = "File compression - Rar"
        '
        'DecompressTheFileToolStripMenuItem
        '
        Me.DecompressTheFileToolStripMenuItem.Image = CType(resources.GetObject("DecompressTheFileToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DecompressTheFileToolStripMenuItem.Name = "DecompressTheFileToolStripMenuItem"
        Me.DecompressTheFileToolStripMenuItem.Size = New System.Drawing.Size(206, 22)
        Me.DecompressTheFileToolStripMenuItem.Text = "Decompress the file - Rar"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "drive.png")
        Me.ImageList1.Images.SetKeyName(1, "drive_cd.png")
        Me.ImageList1.Images.SetKeyName(2, "folder.png")
        Me.ImageList1.Images.SetKeyName(3, "application_xp.png")
        Me.ImageList1.Images.SetKeyName(4, "picture.png")
        Me.ImageList1.Images.SetKeyName(5, "page_white_text.png")
        Me.ImageList1.Images.SetKeyName(6, "cog.png")
        Me.ImageList1.Images.SetKeyName(7, "page_white_compressed.png")
        Me.ImageList1.Images.SetKeyName(8, "page_white.png")
        Me.ImageList1.Images.SetKeyName(9, "sound.png")
        Me.ImageList1.Images.SetKeyName(10, "world.png")
        Me.ImageList1.Images.SetKeyName(11, "film.png")
        Me.ImageList1.Images.SetKeyName(12, "resultset_next.png")
        Me.ImageList1.Images.SetKeyName(13, "122.ico")
        '
        'pic1
        '
        Me.pic1.BackColor = System.Drawing.SystemColors.Control
        Me.pic1.Location = New System.Drawing.Point(410, 39)
        Me.pic1.Name = "pic1"
        Me.pic1.Size = New System.Drawing.Size(218, 205)
        Me.pic1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pic1.TabIndex = 3
        Me.pic1.TabStop = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Label1.Font = New System.Drawing.Font("Snap ITC", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.SystemColors.WindowText
        Me.Label1.Location = New System.Drawing.Point(478, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(81, 27)
        Me.Label1.TabIndex = 4
        Me.Label1.Text = "Image"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.SystemColors.Control
        Me.Label2.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Label2.Font = New System.Drawing.Font("Snap ITC", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.SystemColors.WindowText
        Me.Label2.Location = New System.Drawing.Point(478, 247)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(70, 27)
        Me.Label2.TabIndex = 5
        Me.Label2.Text = "Text"
        '
        'TextBox2
        '
        Me.TextBox2.BackColor = System.Drawing.SystemColors.Control
        Me.TextBox2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TextBox2.Font = New System.Drawing.Font("Segoe UI Symbol", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextBox2.ForeColor = System.Drawing.Color.Blue
        Me.TextBox2.Location = New System.Drawing.Point(410, 277)
        Me.TextBox2.Multiline = True
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.ReadOnly = True
        Me.TextBox2.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.TextBox2.Size = New System.Drawing.Size(218, 205)
        Me.TextBox2.TabIndex = 6
        Me.TextBox2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Man
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.Control
        Me.ClientSize = New System.Drawing.Size(631, 494)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.TextBox2)
        Me.Controls.Add(Me.ListView1)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.pic1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Man"
        Me.Text = "File Manger - "
        Me.ContextMenuStrip1.ResumeLayout(False)
        CType(Me.pic1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents ListView1 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents ExecuteToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RenameToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DeleteToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents BackToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RefreshToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DownloadToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents UploadToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents NewFolderToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents HideFolderFileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ShowFolderFileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CrypterTextFileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DecrypterTextFileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ShowTextToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PlayWavSongToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ViewImageToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents pic1 As System.Windows.Forms.PictureBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents AddRarToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DecompressTheFileToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
End Class
