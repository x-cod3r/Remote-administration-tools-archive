<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class keylogger
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(keylogger))
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.T1 = New System.Windows.Forms.RichTextBox()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.SystemColors.Control
        Me.TextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TextBox1.Location = New System.Drawing.Point(358, 2)
        Me.TextBox1.Multiline = True
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(169, 22)
        Me.TextBox1.TabIndex = 1
        '
        'T1
        '
        Me.T1.BackColor = System.Drawing.SystemColors.Control
        Me.T1.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.T1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.T1.Location = New System.Drawing.Point(0, 26)
        Me.T1.Name = "T1"
        Me.T1.ReadOnly = True
        Me.T1.Size = New System.Drawing.Size(529, 395)
        Me.T1.TabIndex = 10
        Me.T1.Text = ""
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.SystemColors.Control
        Me.Panel1.Controls.Add(Me.Button4)
        Me.Panel1.Controls.Add(Me.TextBox1)
        Me.Panel1.Controls.Add(Me.Button3)
        Me.Panel1.Controls.Add(Me.Button2)
        Me.Panel1.Controls.Add(Me.Button1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(529, 26)
        Me.Panel1.TabIndex = 11
        '
        'Button4
        '
        Me.Button4.Image = CType(resources.GetObject("Button4.Image"), System.Drawing.Image)
        Me.Button4.Location = New System.Drawing.Point(150, 1)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(75, 24)
        Me.Button4.TabIndex = 2
        Me.Button4.Text = "Delete"
        Me.Button4.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Image = CType(resources.GetObject("Button3.Image"), System.Drawing.Image)
        Me.Button3.Location = New System.Drawing.Point(282, 1)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(75, 24)
        Me.Button3.TabIndex = 0
        Me.Button3.Text = "Search"
        Me.Button3.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Image = CType(resources.GetObject("Button2.Image"), System.Drawing.Image)
        Me.Button2.Location = New System.Drawing.Point(75, 1)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 24)
        Me.Button2.TabIndex = 0
        Me.Button2.Text = "Refresh"
        Me.Button2.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Image = CType(resources.GetObject("Button1.Image"), System.Drawing.Image)
        Me.Button1.Location = New System.Drawing.Point(0, 1)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 24)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "Save"
        Me.Button1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Keylogger
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(529, 421)
        Me.Controls.Add(Me.T1)
        Me.Controls.Add(Me.Panel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Keylogger"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Keylogger  "
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents T1 As System.Windows.Forms.RichTextBox
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
End Class
