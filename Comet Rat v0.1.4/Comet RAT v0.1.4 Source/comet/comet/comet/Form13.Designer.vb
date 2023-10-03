<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form13
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form13))
        Me.Button1 = New System.Windows.Forms.Button()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.ComboBox1 = New System.Windows.Forms.ComboBox()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.ListView1 = New comet.GClass9()
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ListView2 = New comet.GClass9()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.BackColor = System.Drawing.Color.Gainsboro
        Me.Button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button1.ForeColor = System.Drawing.Color.Black
        Me.Button1.Image = CType(resources.GetObject("Button1.Image"), System.Drawing.Image)
        Me.Button1.Location = New System.Drawing.Point(617, 6)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(46, 27)
        Me.Button1.TabIndex = 0
        Me.Button1.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.ToolTip1.SetToolTip(Me.Button1, "On Attack")
        Me.Button1.UseVisualStyleBackColor = False
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.Gainsboro
        Me.TextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TextBox1.ForeColor = System.Drawing.Color.Black
        Me.TextBox1.Location = New System.Drawing.Point(104, 9)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(208, 20)
        Me.TextBox1.TabIndex = 1
        Me.TextBox1.Text = "www.xxxxxxxxxx.com"
        '
        'TextBox2
        '
        Me.TextBox2.BackColor = System.Drawing.Color.Gainsboro
        Me.TextBox2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TextBox2.ForeColor = System.Drawing.Color.Black
        Me.TextBox2.Location = New System.Drawing.Point(361, 9)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(155, 20)
        Me.TextBox2.TabIndex = 2
        Me.TextBox2.Text = "500"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Gainsboro
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(12, 11)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(87, 13)
        Me.Label1.TabIndex = 3
        Me.Label1.Text = "Denial of Service"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.Gainsboro
        Me.Label2.ForeColor = System.Drawing.Color.Black
        Me.Label2.Location = New System.Drawing.Point(318, 11)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(37, 13)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Speed"
        '
        'Timer1
        '
        '
        'ComboBox1
        '
        Me.ComboBox1.BackColor = System.Drawing.Color.Gainsboro
        Me.ComboBox1.FlatStyle = System.Windows.Forms.FlatStyle.System
        Me.ComboBox1.ForeColor = System.Drawing.Color.Black
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Items.AddRange(New Object() {"Cmd", "HTTP"})
        Me.ComboBox1.Location = New System.Drawing.Point(521, 8)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(78, 21)
        Me.ComboBox1.TabIndex = 7
        Me.ComboBox1.Text = "Cmd"
        '
        'Button2
        '
        Me.Button2.BackColor = System.Drawing.Color.Gainsboro
        Me.Button2.Enabled = False
        Me.Button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button2.ForeColor = System.Drawing.Color.Black
        Me.Button2.Image = CType(resources.GetObject("Button2.Image"), System.Drawing.Image)
        Me.Button2.Location = New System.Drawing.Point(669, 6)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(46, 27)
        Me.Button2.TabIndex = 8
        Me.Button2.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.ToolTip1.SetToolTip(Me.Button2, "off Attack")
        Me.Button2.UseVisualStyleBackColor = False
        '
        'Panel1
        '
        Me.Panel1.AutoSize = True
        Me.Panel1.BackColor = System.Drawing.Color.Gainsboro
        Me.Panel1.Controls.Add(Me.Button2)
        Me.Panel1.Controls.Add(Me.Label1)
        Me.Panel1.Controls.Add(Me.Button1)
        Me.Panel1.Controls.Add(Me.TextBox1)
        Me.Panel1.Controls.Add(Me.ComboBox1)
        Me.Panel1.Controls.Add(Me.TextBox2)
        Me.Panel1.Controls.Add(Me.Label2)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(722, 36)
        Me.Panel1.TabIndex = 9
        '
        'ListView1
        '
        Me.ListView1.BackColor = System.Drawing.Color.White
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader3})
        Me.ListView1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListView1.Font = New System.Drawing.Font("Arial", 8.0!, System.Drawing.FontStyle.Bold)
        Me.ListView1.ForeColor = System.Drawing.Color.Black
        Me.ListView1.FullRowSelect = True
        Me.ListView1.Location = New System.Drawing.Point(0, 36)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.OwnerDraw = True
        Me.ListView1.Size = New System.Drawing.Size(480, 271)
        Me.ListView1.TabIndex = 10
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Case of attack"
        Me.ColumnHeader3.Width = 476
        '
        'ListView2
        '
        Me.ListView2.BackColor = System.Drawing.Color.White
        Me.ListView2.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1})
        Me.ListView2.Dock = System.Windows.Forms.DockStyle.Right
        Me.ListView2.Font = New System.Drawing.Font("Arial", 8.0!, System.Drawing.FontStyle.Bold)
        Me.ListView2.ForeColor = System.Drawing.Color.Black
        Me.ListView2.FullRowSelect = True
        Me.ListView2.Location = New System.Drawing.Point(480, 36)
        Me.ListView2.Name = "ListView2"
        Me.ListView2.OwnerDraw = True
        Me.ListView2.Size = New System.Drawing.Size(242, 271)
        Me.ListView2.TabIndex = 11
        Me.ListView2.UseCompatibleStateImageBehavior = False
        Me.ListView2.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "The number of attacks"
        Me.ColumnHeader1.Width = 238
        '
        'Form13
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.Black
        Me.ClientSize = New System.Drawing.Size(722, 307)
        Me.Controls.Add(Me.ListView1)
        Me.Controls.Add(Me.ListView2)
        Me.Controls.Add(Me.Panel1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form13"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Denial of Service "
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents ListView1 As comet.GClass9
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ListView2 As comet.GClass9
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
End Class
