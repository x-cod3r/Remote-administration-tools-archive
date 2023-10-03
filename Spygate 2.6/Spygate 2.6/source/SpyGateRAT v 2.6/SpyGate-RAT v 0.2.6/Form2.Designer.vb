<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form2
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form2))
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.CheckBox4 = New System.Windows.Forms.CheckBox()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.CheckBox3 = New System.Windows.Forms.CheckBox()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.NumericUpDown1 = New System.Windows.Forms.NumericUpDown()
        CType(Me.NumericUpDown1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Button2
        '
        Me.Button2.Image = CType(resources.GetObject("Button2.Image"), System.Drawing.Image)
        Me.Button2.Location = New System.Drawing.Point(119, 49)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 24)
        Me.Button2.TabIndex = 46
        Me.Button2.Text = "Stop"
        Me.Button2.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Image = CType(resources.GetObject("Button1.Image"), System.Drawing.Image)
        Me.Button1.Location = New System.Drawing.Point(5, 102)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(109, 24)
        Me.Button1.TabIndex = 45
        Me.Button1.Text = "OK"
        Me.Button1.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        Me.Button1.UseVisualStyleBackColor = True
        '
        'CheckBox4
        '
        Me.CheckBox4.AutoSize = True
        Me.CheckBox4.Location = New System.Drawing.Point(6, 79)
        Me.CheckBox4.Name = "CheckBox4"
        Me.CheckBox4.Size = New System.Drawing.Size(101, 17)
        Me.CheckBox4.TabIndex = 44
        Me.CheckBox4.Text = "Show Password"
        Me.CheckBox4.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Image = CType(resources.GetObject("Button5.Image"), System.Drawing.Image)
        Me.Button5.Location = New System.Drawing.Point(119, 102)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(75, 24)
        Me.Button5.TabIndex = 43
        Me.Button5.Text = "Save"
        Me.Button5.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(3, 35)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(60, 13)
        Me.Label1.TabIndex = 42
        Me.Label1.Text = "Password :"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(6, 51)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(108, 20)
        Me.TextBox1.TabIndex = 41
        Me.TextBox1.Text = "SpyGateRAT"
        Me.TextBox1.UseSystemPasswordChar = True
        '
        'CheckBox3
        '
        Me.CheckBox3.AutoSize = True
        Me.CheckBox3.Location = New System.Drawing.Point(-105, 9)
        Me.CheckBox3.Name = "CheckBox3"
        Me.CheckBox3.Size = New System.Drawing.Size(80, 17)
        Me.CheckBox3.TabIndex = 40
        Me.CheckBox3.Text = "Auto Liestn"
        Me.CheckBox3.UseVisualStyleBackColor = True
        Me.CheckBox3.Visible = False
        '
        'Button4
        '
        Me.Button4.Image = CType(resources.GetObject("Button4.Image"), System.Drawing.Image)
        Me.Button4.Location = New System.Drawing.Point(119, 6)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(75, 24)
        Me.Button4.TabIndex = 39
        Me.Button4.Text = "Start"
        Me.Button4.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.Button4.UseVisualStyleBackColor = True
        '
        'NumericUpDown1
        '
        Me.NumericUpDown1.Location = New System.Drawing.Point(6, 8)
        Me.NumericUpDown1.Maximum = New Decimal(New Integer() {9999, 0, 0, 0})
        Me.NumericUpDown1.Name = "NumericUpDown1"
        Me.NumericUpDown1.Size = New System.Drawing.Size(108, 20)
        Me.NumericUpDown1.TabIndex = 38
        Me.NumericUpDown1.Value = New Decimal(New Integer() {1122, 0, 0, 0})
        '
        'Form2
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(199, 132)
        Me.ControlBox = False
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.CheckBox4)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.CheckBox3)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.NumericUpDown1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Form2"
        Me.ShowIcon = False
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Port Settings"
        CType(Me.NumericUpDown1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents CheckBox4 As System.Windows.Forms.CheckBox
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents CheckBox3 As System.Windows.Forms.CheckBox
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents NumericUpDown1 As System.Windows.Forms.NumericUpDown
End Class
