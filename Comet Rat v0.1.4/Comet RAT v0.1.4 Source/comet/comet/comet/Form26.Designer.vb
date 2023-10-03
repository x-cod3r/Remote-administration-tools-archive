<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form26
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form26))
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.AvButton1 = New comet.AVButton()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.ComboBox1 = New System.Windows.Forms.ComboBox()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.ListView1 = New comet.GClass9()
        Me.ColumnHeader5 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader6 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader7 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader8 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "4erwfgasdfvwer3wesd.png")
        Me.ImageList1.Images.SetKeyName(1, "qweqwde3.png")
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.Gainsboro
        Me.Panel1.Controls.Add(Me.AvButton1)
        Me.Panel1.Controls.Add(Me.TextBox1)
        Me.Panel1.Controls.Add(Me.ComboBox1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(740, 34)
        Me.Panel1.TabIndex = 1
        '
        'AvButton1
        '
        Me.AvButton1.BackColor = System.Drawing.Color.Transparent
        Me.AvButton1.Location = New System.Drawing.Point(617, 5)
        Me.AvButton1.MainColor = Nothing
        Me.AvButton1.Name = "AvButton1"
        Me.AvButton1.Size = New System.Drawing.Size(111, 23)
        Me.AvButton1.TabIndex = 3
        Me.AvButton1.Text = "Scan"
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.White
        Me.TextBox1.ForeColor = System.Drawing.Color.Black
        Me.TextBox1.Location = New System.Drawing.Point(176, 8)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(70, 20)
        Me.TextBox1.TabIndex = 2
        Me.TextBox1.Text = "80"
        '
        'ComboBox1
        '
        Me.ComboBox1.BackColor = System.Drawing.Color.White
        Me.ComboBox1.ForeColor = System.Drawing.Color.Black
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Items.AddRange(New Object() {"127.0.0.1"})
        Me.ComboBox1.Location = New System.Drawing.Point(12, 7)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(140, 21)
        Me.ComboBox1.TabIndex = 1
        Me.ComboBox1.Text = "127.0.0.1"
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        '
        'ListView1
        '
        Me.ListView1.BackColor = System.Drawing.Color.White
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader5, Me.ColumnHeader6, Me.ColumnHeader7, Me.ColumnHeader8})
        Me.ListView1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListView1.Font = New System.Drawing.Font("Arial", 8.0!, System.Drawing.FontStyle.Bold)
        Me.ListView1.ForeColor = System.Drawing.Color.Black
        Me.ListView1.FullRowSelect = True
        Me.ListView1.Location = New System.Drawing.Point(0, 34)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.OwnerDraw = True
        Me.ListView1.Size = New System.Drawing.Size(740, 260)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 2
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader5
        '
        Me.ColumnHeader5.Text = "Port status"
        Me.ColumnHeader5.Width = 104
        '
        'ColumnHeader6
        '
        Me.ColumnHeader6.Text = "Detection"
        Me.ColumnHeader6.Width = 93
        '
        'ColumnHeader7
        '
        Me.ColumnHeader7.Text = "Value"
        Me.ColumnHeader7.Width = 90
        '
        'ColumnHeader8
        '
        Me.ColumnHeader8.Text = "Handle"
        Me.ColumnHeader8.Width = 449
        '
        'Timer2
        '
        Me.Timer2.Enabled = True
        Me.Timer2.Interval = 1
        '
        'Form26
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(740, 294)
        Me.Controls.Add(Me.ListView1)
        Me.Controls.Add(Me.Panel1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form26"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Scan Ports"
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
    Friend WithEvents ListView1 As comet.GClass9
    Friend WithEvents ColumnHeader5 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader6 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader7 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader8 As System.Windows.Forms.ColumnHeader
    Friend WithEvents Timer2 As System.Windows.Forms.Timer
    Friend WithEvents AvButton1 As comet.AVButton
End Class
