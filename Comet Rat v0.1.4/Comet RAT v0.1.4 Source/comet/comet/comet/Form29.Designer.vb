<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form29
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form29))
        Me.Recv = New System.Windows.Forms.RichTextBox()
        Me.Sendbox = New System.Windows.Forms.TextBox()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.Panel3 = New System.Windows.Forms.Panel()
        Me.tOP = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Panel1.SuspendLayout()
        Me.Panel2.SuspendLayout()
        Me.Panel3.SuspendLayout()
        Me.SuspendLayout()
        '
        'Recv
        '
        Me.Recv.BackColor = System.Drawing.Color.White
        Me.Recv.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Recv.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Recv.ForeColor = System.Drawing.Color.Black
        Me.Recv.Location = New System.Drawing.Point(0, 0)
        Me.Recv.Name = "Recv"
        Me.Recv.ReadOnly = True
        Me.Recv.Size = New System.Drawing.Size(284, 244)
        Me.Recv.TabIndex = 8
        Me.Recv.Text = ""
        Me.Recv.WordWrap = False
        '
        'Sendbox
        '
        Me.Sendbox.BackColor = System.Drawing.Color.Gainsboro
        Me.Sendbox.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Sendbox.Font = New System.Drawing.Font("Tahoma", 8.0!)
        Me.Sendbox.ForeColor = System.Drawing.Color.Black
        Me.Sendbox.Location = New System.Drawing.Point(0, 0)
        Me.Sendbox.Multiline = True
        Me.Sendbox.Name = "Sendbox"
        Me.Sendbox.Size = New System.Drawing.Size(192, 47)
        Me.Sendbox.TabIndex = 10
        Me.Sendbox.WordWrap = False
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.SystemColors.ActiveBorder
        Me.Panel1.Controls.Add(Me.Sendbox)
        Me.Panel1.Controls.Add(Me.Button2)
        Me.Panel1.Controls.Add(Me.Button1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.Panel1.Location = New System.Drawing.Point(0, 244)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(284, 47)
        Me.Panel1.TabIndex = 12
        '
        'Button2
        '
        Me.Button2.BackColor = System.Drawing.Color.Gainsboro
        Me.Button2.Dock = System.Windows.Forms.DockStyle.Right
        Me.Button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button2.ForeColor = System.Drawing.Color.Black
        Me.Button2.Image = CType(resources.GetObject("Button2.Image"), System.Drawing.Image)
        Me.Button2.Location = New System.Drawing.Point(192, 0)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(46, 47)
        Me.Button2.TabIndex = 12
        Me.Button2.UseVisualStyleBackColor = False
        '
        'Button1
        '
        Me.Button1.BackColor = System.Drawing.Color.Gainsboro
        Me.Button1.Dock = System.Windows.Forms.DockStyle.Right
        Me.Button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button1.ForeColor = System.Drawing.Color.Black
        Me.Button1.Image = CType(resources.GetObject("Button1.Image"), System.Drawing.Image)
        Me.Button1.Location = New System.Drawing.Point(238, 0)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(46, 47)
        Me.Button1.TabIndex = 11
        Me.Button1.UseVisualStyleBackColor = False
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "AngrySmile.png")
        Me.ImageList1.Images.SetKeyName(1, "item3416.gif")
        Me.ImageList1.Images.SetKeyName(2, "item3417.gif")
        Me.ImageList1.Images.SetKeyName(3, "item4087.gif")
        Me.ImageList1.Images.SetKeyName(4, "Emoticons-Mail.icon.gif")
        Me.ImageList1.Images.SetKeyName(5, "item4034.gif")
        Me.ImageList1.Images.SetKeyName(6, "item4160.gif")
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.White
        Me.Label1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.Label1.Dock = System.Windows.Forms.DockStyle.Right
        Me.Label1.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(227, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(57, 15)
        Me.Label1.TabIndex = 13
        Me.Label1.Text = "Letters[0]"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.SystemColors.ControlDarkDark
        Me.Label2.ForeColor = System.Drawing.Color.White
        Me.Label2.Location = New System.Drawing.Point(34, 4)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(19, 13)
        Me.Label2.TabIndex = 14
        Me.Label2.Text = "89"
        '
        'Panel2
        '
        Me.Panel2.BackColor = System.Drawing.SystemColors.ActiveCaption
        Me.Panel2.Controls.Add(Me.Panel3)
        Me.Panel2.Controls.Add(Me.Label3)
        Me.Panel2.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.Panel2.Location = New System.Drawing.Point(0, 226)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(227, 18)
        Me.Panel2.TabIndex = 15
        '
        'Panel3
        '
        Me.Panel3.Controls.Add(Me.tOP)
        Me.Panel3.Controls.Add(Me.Label2)
        Me.Panel3.Location = New System.Drawing.Point(350, 12)
        Me.Panel3.Name = "Panel3"
        Me.Panel3.Size = New System.Drawing.Size(10, 40)
        Me.Panel3.TabIndex = 17
        '
        'tOP
        '
        Me.tOP.Location = New System.Drawing.Point(37, 17)
        Me.tOP.Name = "tOP"
        Me.tOP.Size = New System.Drawing.Size(31, 20)
        Me.tOP.TabIndex = 16
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.BackColor = System.Drawing.SystemColors.ActiveCaption
        Me.Label3.ForeColor = System.Drawing.Color.Black
        Me.Label3.Location = New System.Drawing.Point(3, 2)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(108, 13)
        Me.Label3.TabIndex = 15
        Me.Label3.Text = "[ Name ] is writing ..."
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 500
        '
        'Form29
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(284, 291)
        Me.Controls.Add(Me.Panel2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Recv)
        Me.Controls.Add(Me.Panel1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Form29"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        Me.Panel3.ResumeLayout(False)
        Me.Panel3.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Recv As System.Windows.Forms.RichTextBox
    Friend WithEvents Sendbox As System.Windows.Forms.TextBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Private WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Panel2 As System.Windows.Forms.Panel
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents tOP As System.Windows.Forms.TextBox
    Friend WithEvents Panel3 As System.Windows.Forms.Panel
End Class
