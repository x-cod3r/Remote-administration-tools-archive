<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Cap
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Cap))
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.CheckBox2 = New System.Windows.Forms.CheckBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.C = New System.Windows.Forms.NumericUpDown()
        Me.C2 = New System.Windows.Forms.ComboBox()
        Me.C1 = New System.Windows.Forms.ComboBox()
        Me.P1 = New System.Windows.Forms.PictureBox()
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Panel1.SuspendLayout()
        CType(Me.C, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.P1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.White
        Me.Panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Panel1.Controls.Add(Me.Button2)
        Me.Panel1.Controls.Add(Me.CheckBox1)
        Me.Panel1.Controls.Add(Me.CheckBox2)
        Me.Panel1.Controls.Add(Me.Button1)
        Me.Panel1.Controls.Add(Me.C)
        Me.Panel1.Controls.Add(Me.C2)
        Me.Panel1.Controls.Add(Me.C1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.Panel1.Location = New System.Drawing.Point(0, 310)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(593, 32)
        Me.Panel1.TabIndex = 12
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CheckBox1.Location = New System.Drawing.Point(234, 7)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(88, 17)
        Me.CheckBox1.TabIndex = 13
        Me.CheckBox1.TabStop = False
        Me.CheckBox1.Text = "Show Lines"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'CheckBox2
        '
        Me.CheckBox2.AutoSize = True
        Me.CheckBox2.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CheckBox2.Location = New System.Drawing.Point(167, 7)
        Me.CheckBox2.Name = "CheckBox2"
        Me.CheckBox2.Size = New System.Drawing.Size(63, 17)
        Me.CheckBox2.TabIndex = 12
        Me.CheckBox2.TabStop = False
        Me.CheckBox2.Text = "Mouse"
        Me.CheckBox2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button1.Location = New System.Drawing.Point(3, 3)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 11
        Me.Button1.Text = "Start"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'C
        '
        Me.C.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.C.Location = New System.Drawing.Point(331, 4)
        Me.C.Minimum = New Decimal(New Integer() {20, 0, 0, 0})
        Me.C.Name = "C"
        Me.C.Size = New System.Drawing.Size(49, 20)
        Me.C.TabIndex = 10
        Me.C.TabStop = False
        Me.C.Value = New Decimal(New Integer() {100, 0, 0, 0})
        '
        'C2
        '
        Me.C2.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.C2.FormattingEnabled = True
        Me.C2.Location = New System.Drawing.Point(386, 4)
        Me.C2.Name = "C2"
        Me.C2.Size = New System.Drawing.Size(97, 21)
        Me.C2.TabIndex = 4
        Me.C2.TabStop = False
        '
        'C1
        '
        Me.C1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.C1.FormattingEnabled = True
        Me.C1.Location = New System.Drawing.Point(489, 4)
        Me.C1.Name = "C1"
        Me.C1.Size = New System.Drawing.Size(97, 21)
        Me.C1.TabIndex = 2
        Me.C1.TabStop = False
        '
        'P1
        '
        Me.P1.BackColor = System.Drawing.Color.WhiteSmoke
        Me.P1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.P1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.P1.Location = New System.Drawing.Point(0, 0)
        Me.P1.Name = "P1"
        Me.P1.Size = New System.Drawing.Size(593, 342)
        Me.P1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.P1.TabIndex = 13
        Me.P1.TabStop = False
        '
        'Timer2
        '
        Me.Timer2.Interval = 500
        '
        'Button2
        '
        Me.Button2.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button2.Location = New System.Drawing.Point(84, 3)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 14
        Me.Button2.Text = "Save"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Cap
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(593, 342)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.P1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximumSize = New System.Drawing.Size(1300, 1300)
        Me.MinimumSize = New System.Drawing.Size(609, 380)
        Me.Name = "Cap"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Remote Desktop "
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        CType(Me.C, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.P1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents CheckBox1 As System.Windows.Forms.CheckBox
    Friend WithEvents CheckBox2 As System.Windows.Forms.CheckBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents C As System.Windows.Forms.NumericUpDown
    Friend WithEvents C2 As System.Windows.Forms.ComboBox
    Friend WithEvents C1 As System.Windows.Forms.ComboBox
    Friend WithEvents P1 As System.Windows.Forms.PictureBox
    Friend WithEvents Timer2 As System.Windows.Forms.Timer
    Friend WithEvents Button2 As System.Windows.Forms.Button
End Class
