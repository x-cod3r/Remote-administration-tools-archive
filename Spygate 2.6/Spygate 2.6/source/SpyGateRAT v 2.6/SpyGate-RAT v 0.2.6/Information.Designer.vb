<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Information
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Information))
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.TabPage3 = New System.Windows.Forms.TabPage()
        Me.rtinfo2 = New System.Windows.Forms.TextBox()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.rtinfo1 = New System.Windows.Forms.TextBox()
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.TabPage3.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        Me.TabControl1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "server_connect.png")
        Me.ImageList1.Images.SetKeyName(1, "report_user.png")
        Me.ImageList1.Images.SetKeyName(2, "computer_key.png")
        '
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.rtinfo2)
        Me.TabPage3.ImageIndex = 2
        Me.TabPage3.Location = New System.Drawing.Point(4, 23)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Size = New System.Drawing.Size(414, 235)
        Me.TabPage3.TabIndex = 2
        Me.TabPage3.Text = "Computer Information"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'rtinfo2
        '
        Me.rtinfo2.BackColor = System.Drawing.Color.White
        Me.rtinfo2.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.rtinfo2.Dock = System.Windows.Forms.DockStyle.Fill
        Me.rtinfo2.Location = New System.Drawing.Point(0, 0)
        Me.rtinfo2.Multiline = True
        Me.rtinfo2.Name = "rtinfo2"
        Me.rtinfo2.ReadOnly = True
        Me.rtinfo2.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.rtinfo2.Size = New System.Drawing.Size(414, 235)
        Me.rtinfo2.TabIndex = 0
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.rtinfo1)
        Me.TabPage2.ImageIndex = 1
        Me.TabPage2.Location = New System.Drawing.Point(4, 23)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(414, 235)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "User Information"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'rtinfo1
        '
        Me.rtinfo1.BackColor = System.Drawing.Color.White
        Me.rtinfo1.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.rtinfo1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.rtinfo1.Location = New System.Drawing.Point(3, 3)
        Me.rtinfo1.Multiline = True
        Me.rtinfo1.Name = "rtinfo1"
        Me.rtinfo1.ReadOnly = True
        Me.rtinfo1.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.rtinfo1.Size = New System.Drawing.Size(408, 229)
        Me.rtinfo1.TabIndex = 2
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Controls.Add(Me.TabPage3)
        Me.TabControl1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.TabControl1.ImageList = Me.ImageList1
        Me.TabControl1.Location = New System.Drawing.Point(0, 0)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(422, 262)
        Me.TabControl1.TabIndex = 5
        '
        'Information
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(422, 262)
        Me.Controls.Add(Me.TabControl1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Information"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Information"
        Me.TabPage3.ResumeLayout(False)
        Me.TabPage3.PerformLayout()
        Me.TabPage2.ResumeLayout(False)
        Me.TabPage2.PerformLayout()
        Me.TabControl1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents TabPage3 As System.Windows.Forms.TabPage
    Friend WithEvents rtinfo2 As System.Windows.Forms.TextBox
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents rtinfo1 As System.Windows.Forms.TextBox
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
End Class
