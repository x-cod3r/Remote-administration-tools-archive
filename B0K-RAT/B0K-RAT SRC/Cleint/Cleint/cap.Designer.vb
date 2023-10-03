<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class cap
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(cap))
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.P1 = New System.Windows.Forms.PictureBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.CheckBox2 = New System.Windows.Forms.CheckBox()
        Me.C1 = New System.Windows.Forms.ComboBox()
        Me.C2 = New System.Windows.Forms.ComboBox()
        Me.c = New System.Windows.Forms.NumericUpDown()
        Me.Panel1 = New System.Windows.Forms.Panel()
        CType(Me.P1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.c, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 50
        '
        'P1
        '
        Me.P1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.P1.Location = New System.Drawing.Point(3, 30)
        Me.P1.Name = "P1"
        Me.P1.Size = New System.Drawing.Size(613, 327)
        Me.P1.TabIndex = 25
        Me.P1.TabStop = False
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(3, 3)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 19
        Me.Button1.Text = "start"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.Location = New System.Drawing.Point(151, 7)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(87, 17)
        Me.CheckBox1.TabIndex = 20
        Me.CheckBox1.Text = "Dividing lines"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'CheckBox2
        '
        Me.CheckBox2.AutoSize = True
        Me.CheckBox2.Location = New System.Drawing.Point(84, 7)
        Me.CheckBox2.Name = "CheckBox2"
        Me.CheckBox2.Size = New System.Drawing.Size(60, 17)
        Me.CheckBox2.TabIndex = 21
        Me.CheckBox2.Text = "Mouse "
        Me.CheckBox2.UseVisualStyleBackColor = True
        '
        'C1
        '
        Me.C1.FormattingEnabled = True
        Me.C1.Location = New System.Drawing.Point(368, 3)
        Me.C1.Name = "C1"
        Me.C1.Size = New System.Drawing.Size(121, 21)
        Me.C1.TabIndex = 22
        '
        'C2
        '
        Me.C2.FormattingEnabled = True
        Me.C2.Location = New System.Drawing.Point(495, 3)
        Me.C2.Name = "C2"
        Me.C2.Size = New System.Drawing.Size(121, 21)
        Me.C2.TabIndex = 23
        '
        'c
        '
        Me.c.Location = New System.Drawing.Point(245, 4)
        Me.c.Name = "c"
        Me.c.Size = New System.Drawing.Size(120, 20)
        Me.c.TabIndex = 24
        Me.c.Value = New Decimal(New Integer() {30, 0, 0, 0})
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.Button1)
        Me.Panel1.Controls.Add(Me.CheckBox2)
        Me.Panel1.Controls.Add(Me.C2)
        Me.Panel1.Controls.Add(Me.c)
        Me.Panel1.Controls.Add(Me.C1)
        Me.Panel1.Controls.Add(Me.CheckBox1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(618, 27)
        Me.Panel1.TabIndex = 26
        '
        'cap
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(618, 360)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.P1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "cap"
        Me.Text = "cap"
        CType(Me.P1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.c, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents P1 As System.Windows.Forms.PictureBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents CheckBox1 As System.Windows.Forms.CheckBox
    Friend WithEvents CheckBox2 As System.Windows.Forms.CheckBox
    Friend WithEvents C1 As System.Windows.Forms.ComboBox
    Friend WithEvents C2 As System.Windows.Forms.ComboBox
    Friend WithEvents c As System.Windows.Forms.NumericUpDown
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
End Class
