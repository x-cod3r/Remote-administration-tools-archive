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
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form2))
        Me.CheckBox3 = New System.Windows.Forms.CheckBox()
        Me.NumericUpDown1 = New System.Windows.Forms.NumericUpDown()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.AvTextbox1 = New comet.AVTextbox()
        Me.AvLabel1 = New comet.AVLabel()
        Me.ClsButtonOrange1 = New comet.clsButtonOrange()
        Me.ClsButtonBlue1 = New comet.clsButtonBlue()
        CType(Me.NumericUpDown1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
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
        'NumericUpDown1
        '
        Me.NumericUpDown1.BackColor = System.Drawing.Color.WhiteSmoke
        Me.NumericUpDown1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.NumericUpDown1.Location = New System.Drawing.Point(561, 113)
        Me.NumericUpDown1.Maximum = New Decimal(New Integer() {9999, 0, 0, 0})
        Me.NumericUpDown1.Name = "NumericUpDown1"
        Me.NumericUpDown1.Size = New System.Drawing.Size(103, 20)
        Me.NumericUpDown1.TabIndex = 38
        Me.NumericUpDown1.Value = New Decimal(New Integer() {1122, 0, 0, 0})
        '
        'ImageList1
        '
        Me.ImageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ImageList1.ImageSize = New System.Drawing.Size(16, 16)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        '
        'AvTextbox1
        '
        Me.AvTextbox1.BackColor = System.Drawing.SystemColors.Control
        Me.AvTextbox1.Font = New System.Drawing.Font("Verdana", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.AvTextbox1.ForeColor = System.Drawing.Color.Black
        Me.AvTextbox1.Location = New System.Drawing.Point(2, 43)
        Me.AvTextbox1.MaxLength = 32767
        Me.AvTextbox1.MultiLine = False
        Me.AvTextbox1.Name = "AvTextbox1"
        Me.AvTextbox1.Size = New System.Drawing.Size(262, 33)
        Me.AvTextbox1.TabIndex = 54
        Me.AvTextbox1.Text = "1122"
        Me.AvTextbox1.TextAlignment = System.Windows.Forms.HorizontalAlignment.Center
        Me.AvTextbox1.UseSystemPasswordChar = False
        '
        'AvLabel1
        '
        Me.AvLabel1.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.AvLabel1.Image = CType(resources.GetObject("AvLabel1.Image"), System.Drawing.Image)
        Me.AvLabel1.Location = New System.Drawing.Point(2, 12)
        Me.AvLabel1.Name = "AvLabel1"
        Me.AvLabel1.Size = New System.Drawing.Size(122, 25)
        Me.AvLabel1.String1 = "Add"
        Me.AvLabel1.String2 = "/ Port _"
        Me.AvLabel1.TabIndex = 53
        Me.AvLabel1.Text = "port"
        '
        'ClsButtonOrange1
        '
        Me.ClsButtonOrange1.Customization = "9fX1/6mpqf8="
        Me.ClsButtonOrange1.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ClsButtonOrange1.Image = Nothing
        Me.ClsButtonOrange1.Location = New System.Drawing.Point(2, 127)
        Me.ClsButtonOrange1.Name = "ClsButtonOrange1"
        Me.ClsButtonOrange1.NoRounding = False
        Me.ClsButtonOrange1.Size = New System.Drawing.Size(262, 39)
        Me.ClsButtonOrange1.TabIndex = 52
        Me.ClsButtonOrange1.Text = "Exit"
        Me.ClsButtonOrange1.Transparent = False
        '
        'ClsButtonBlue1
        '
        Me.ClsButtonBlue1.Customization = "9fX1/6mpqf8="
        Me.ClsButtonBlue1.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ClsButtonBlue1.Image = Nothing
        Me.ClsButtonBlue1.Location = New System.Drawing.Point(2, 82)
        Me.ClsButtonBlue1.Name = "ClsButtonBlue1"
        Me.ClsButtonBlue1.NoRounding = False
        Me.ClsButtonBlue1.Size = New System.Drawing.Size(262, 39)
        Me.ClsButtonBlue1.TabIndex = 51
        Me.ClsButtonBlue1.Text = "Start"
        Me.ClsButtonBlue1.Transparent = False
        '
        'Form2
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.Gainsboro
        Me.ClientSize = New System.Drawing.Size(267, 166)
        Me.ControlBox = False
        Me.Controls.Add(Me.AvTextbox1)
        Me.Controls.Add(Me.AvLabel1)
        Me.Controls.Add(Me.ClsButtonOrange1)
        Me.Controls.Add(Me.ClsButtonBlue1)
        Me.Controls.Add(Me.CheckBox3)
        Me.Controls.Add(Me.NumericUpDown1)
        Me.ForeColor = System.Drawing.Color.White
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Form2"
        Me.ShowIcon = False
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Port Settings"
        Me.TransparencyKey = System.Drawing.Color.Fuchsia
        CType(Me.NumericUpDown1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents CheckBox3 As System.Windows.Forms.CheckBox
    Friend WithEvents NumericUpDown1 As System.Windows.Forms.NumericUpDown
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents ClsButtonBlue1 As comet.clsButtonBlue
    Friend WithEvents ClsButtonOrange1 As comet.clsButtonOrange
    Friend WithEvents AvLabel1 As comet.AVLabel
    Friend WithEvents AvTextbox1 As comet.AVTextbox
End Class
