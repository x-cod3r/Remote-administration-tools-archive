<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class UDX
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(UDX))
        Me.GroupBox12 = New System.Windows.Forms.GroupBox()
        Me.tr1 = New System.Windows.Forms.TextBox()
        Me.temp2 = New System.Windows.Forms.RadioButton()
        Me.temp1 = New System.Windows.Forms.RadioButton()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.tr2 = New System.Windows.Forms.TextBox()
        Me.sys2 = New System.Windows.Forms.RadioButton()
        Me.sys1 = New System.Windows.Forms.RadioButton()
        Me.GroupBox12.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox12
        '
        Me.GroupBox12.Controls.Add(Me.tr1)
        Me.GroupBox12.Controls.Add(Me.temp2)
        Me.GroupBox12.Controls.Add(Me.temp1)
        Me.GroupBox12.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox12.ForeColor = System.Drawing.Color.Blue
        Me.GroupBox12.Location = New System.Drawing.Point(10, 3)
        Me.GroupBox12.Name = "GroupBox12"
        Me.GroupBox12.Size = New System.Drawing.Size(454, 85)
        Me.GroupBox12.TabIndex = 41
        Me.GroupBox12.TabStop = False
        Me.GroupBox12.Text = "Install Server - 1"
        '
        'tr1
        '
        Me.tr1.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tr1.Location = New System.Drawing.Point(9, 42)
        Me.tr1.Name = "tr1"
        Me.tr1.Size = New System.Drawing.Size(439, 22)
        Me.tr1.TabIndex = 1
        Me.tr1.Text = "Comet\Folder"
        '
        'temp2
        '
        Me.temp2.AutoSize = True
        Me.temp2.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.temp2.ForeColor = System.Drawing.Color.Black
        Me.temp2.Location = New System.Drawing.Point(9, 21)
        Me.temp2.Name = "temp2"
        Me.temp2.Size = New System.Drawing.Size(114, 17)
        Me.temp2.TabIndex = 15
        Me.temp2.Text = "Templates Folder"
        Me.temp2.UseVisualStyleBackColor = True
        '
        'temp1
        '
        Me.temp1.AutoSize = True
        Me.temp1.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.temp1.ForeColor = System.Drawing.Color.Black
        Me.temp1.Location = New System.Drawing.Point(-129, 16)
        Me.temp1.Name = "temp1"
        Me.temp1.Size = New System.Drawing.Size(78, 17)
        Me.temp1.TabIndex = 13
        Me.temp1.Text = "Templates"
        Me.temp1.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.tr2)
        Me.GroupBox1.Controls.Add(Me.sys2)
        Me.GroupBox1.Controls.Add(Me.sys1)
        Me.GroupBox1.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.ForeColor = System.Drawing.Color.Blue
        Me.GroupBox1.Location = New System.Drawing.Point(10, 88)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(454, 85)
        Me.GroupBox1.TabIndex = 42
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Install Server - 2"
        '
        'tr2
        '
        Me.tr2.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tr2.Location = New System.Drawing.Point(9, 42)
        Me.tr2.Name = "tr2"
        Me.tr2.Size = New System.Drawing.Size(439, 22)
        Me.tr2.TabIndex = 1
        Me.tr2.Text = "Comet\Folder"
        '
        'sys2
        '
        Me.sys2.AutoSize = True
        Me.sys2.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.sys2.ForeColor = System.Drawing.Color.Black
        Me.sys2.Location = New System.Drawing.Point(9, 21)
        Me.sys2.Name = "sys2"
        Me.sys2.Size = New System.Drawing.Size(111, 17)
        Me.sys2.TabIndex = 15
        Me.sys2.Text = "Programs Folder"
        Me.sys2.UseVisualStyleBackColor = True
        '
        'sys1
        '
        Me.sys1.AutoSize = True
        Me.sys1.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.sys1.ForeColor = System.Drawing.Color.Black
        Me.sys1.Location = New System.Drawing.Point(-108, 16)
        Me.sys1.Name = "sys1"
        Me.sys1.Size = New System.Drawing.Size(75, 17)
        Me.sys1.TabIndex = 13
        Me.sys1.Text = "Programs"
        Me.sys1.UseVisualStyleBackColor = True
        '
        'UDX
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(8, 0)
        Me.Controls.Add(Me.GroupBox12)
        Me.Controls.Add(Me.GroupBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "UDX"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Extra Install Server"
        Me.GroupBox12.ResumeLayout(False)
        Me.GroupBox12.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox12 As System.Windows.Forms.GroupBox
    Friend WithEvents tr1 As System.Windows.Forms.TextBox
    Friend WithEvents temp2 As System.Windows.Forms.RadioButton
    Friend WithEvents temp1 As System.Windows.Forms.RadioButton
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents tr2 As System.Windows.Forms.TextBox
    Friend WithEvents sys2 As System.Windows.Forms.RadioButton
    Friend WithEvents sys1 As System.Windows.Forms.RadioButton
End Class
