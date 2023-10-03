<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form31
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form31))
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SeveToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RefreshToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CleaningToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.TextBox5 = New System.Windows.Forms.TextBox()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ToolStripStatusLabel2 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.Timer3 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer4 = New System.Windows.Forms.Timer(Me.components)
        Me.VisualStudioTabControl1 = New comet.VisualStudioTabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.HuraAlertBox1 = New comet.HuraAlertBox()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.TextBox3 = New System.Windows.Forms.TextBox()
        Me.T1 = New System.Windows.Forms.RichTextBox()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.RichTextBox1 = New System.Windows.Forms.RichTextBox()
        Me.Panel3 = New System.Windows.Forms.Panel()
        Me.TextBox4 = New System.Windows.Forms.TextBox()
        Me.Button9 = New System.Windows.Forms.Button()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.Button7 = New System.Windows.Forms.Button()
        Me.Button8 = New System.Windows.Forms.Button()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.Panel1.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.VisualStudioTabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.Panel2.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        Me.Panel3.SuspendLayout()
        Me.SuspendLayout()
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.Gainsboro
        Me.TextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TextBox1.ForeColor = System.Drawing.Color.Black
        Me.TextBox1.Location = New System.Drawing.Point(37, 5)
        Me.TextBox1.Multiline = True
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(260, 19)
        Me.TextBox1.TabIndex = 1
        Me.TextBox1.Text = "Find Word "
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SeveToolStripMenuItem, Me.CopyToolStripMenuItem, Me.RefreshToolStripMenuItem, Me.CleaningToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.ContextMenuStrip1.ShowImageMargin = False
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(89, 92)
        '
        'SeveToolStripMenuItem
        '
        Me.SeveToolStripMenuItem.Name = "SeveToolStripMenuItem"
        Me.SeveToolStripMenuItem.Size = New System.Drawing.Size(88, 22)
        Me.SeveToolStripMenuItem.Text = "Save"
        '
        'CopyToolStripMenuItem
        '
        Me.CopyToolStripMenuItem.Name = "CopyToolStripMenuItem"
        Me.CopyToolStripMenuItem.Size = New System.Drawing.Size(88, 22)
        Me.CopyToolStripMenuItem.Text = "Copy"
        '
        'RefreshToolStripMenuItem
        '
        Me.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem"
        Me.RefreshToolStripMenuItem.Size = New System.Drawing.Size(88, 22)
        Me.RefreshToolStripMenuItem.Text = "Refresh"
        '
        'CleaningToolStripMenuItem
        '
        Me.CleaningToolStripMenuItem.Name = "CleaningToolStripMenuItem"
        Me.CleaningToolStripMenuItem.Size = New System.Drawing.Size(88, 22)
        Me.CleaningToolStripMenuItem.Text = "Clean"
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.Gainsboro
        Me.Panel1.Controls.Add(Me.TextBox5)
        Me.Panel1.Controls.Add(Me.TextBox1)
        Me.Panel1.Controls.Add(Me.Button3)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.Panel1.ForeColor = System.Drawing.Color.Black
        Me.Panel1.Location = New System.Drawing.Point(0, 312)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(618, 26)
        Me.Panel1.TabIndex = 11
        '
        'TextBox5
        '
        Me.TextBox5.Location = New System.Drawing.Point(739, 4)
        Me.TextBox5.Name = "TextBox5"
        Me.TextBox5.Size = New System.Drawing.Size(28, 20)
        Me.TextBox5.TabIndex = 12
        '
        'Button3
        '
        Me.Button3.BackColor = System.Drawing.Color.Gainsboro
        Me.Button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button3.ForeColor = System.Drawing.Color.Gray
        Me.Button3.Image = CType(resources.GetObject("Button3.Image"), System.Drawing.Image)
        Me.Button3.ImageAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.Button3.Location = New System.Drawing.Point(4, 1)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(32, 25)
        Me.Button3.TabIndex = 0
        Me.Button3.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.Button3.UseVisualStyleBackColor = False
        '
        'Timer1
        '
        Me.Timer1.Interval = 500
        '
        'Timer2
        '
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.Gainsboro
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel1, Me.ToolStripStatusLabel2})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 290)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip1.Size = New System.Drawing.Size(618, 22)
        Me.StatusStrip1.SizingGrip = False
        Me.StatusStrip1.TabIndex = 13
        Me.StatusStrip1.Text = "The Number Of Characters"
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.ForeColor = System.Drawing.Color.Black
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(121, 17)
        Me.ToolStripStatusLabel1.Text = "ToolStripStatusLabel1"
        '
        'ToolStripStatusLabel2
        '
        Me.ToolStripStatusLabel2.ForeColor = System.Drawing.Color.DimGray
        Me.ToolStripStatusLabel2.Name = "ToolStripStatusLabel2"
        Me.ToolStripStatusLabel2.Size = New System.Drawing.Size(121, 17)
        Me.ToolStripStatusLabel2.Text = "ToolStripStatusLabel2"
        '
        'Timer3
        '
        Me.Timer3.Interval = 500
        '
        'Timer4
        '
        Me.Timer4.Enabled = True
        '
        'VisualStudioTabControl1
        '
        Me.VisualStudioTabControl1.ActiveColour = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(122, Byte), Integer), CType(CType(204, Byte), Integer))
        Me.VisualStudioTabControl1.AllowDrop = True
        Me.VisualStudioTabControl1.BackTabColour = System.Drawing.Color.Gainsboro
        Me.VisualStudioTabControl1.BaseColour = System.Drawing.Color.Gainsboro
        Me.VisualStudioTabControl1.BorderColour = System.Drawing.Color.Gainsboro
        Me.VisualStudioTabControl1.Controls.Add(Me.TabPage1)
        Me.VisualStudioTabControl1.Controls.Add(Me.TabPage2)
        Me.VisualStudioTabControl1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.VisualStudioTabControl1.HorizontalLineColour = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(122, Byte), Integer), CType(CType(204, Byte), Integer))
        Me.VisualStudioTabControl1.ItemSize = New System.Drawing.Size(240, 16)
        Me.VisualStudioTabControl1.Location = New System.Drawing.Point(0, 0)
        Me.VisualStudioTabControl1.Name = "VisualStudioTabControl1"
        Me.VisualStudioTabControl1.SelectedIndex = 0
        Me.VisualStudioTabControl1.Size = New System.Drawing.Size(618, 290)
        Me.VisualStudioTabControl1.TabIndex = 14
        Me.VisualStudioTabControl1.TextColour = System.Drawing.Color.Black
        '
        'TabPage1
        '
        Me.TabPage1.BackColor = System.Drawing.Color.Gainsboro
        Me.TabPage1.Controls.Add(Me.HuraAlertBox1)
        Me.TabPage1.Controls.Add(Me.Panel2)
        Me.TabPage1.Controls.Add(Me.T1)
        Me.TabPage1.Location = New System.Drawing.Point(4, 20)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(610, 266)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "TabPage1"
        '
        'HuraAlertBox1
        '
        Me.HuraAlertBox1.AlertStyle = comet.HuraAlertBox.Style.Success
        Me.HuraAlertBox1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.HuraAlertBox1.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.HuraAlertBox1.Location = New System.Drawing.Point(3, 223)
        Me.HuraAlertBox1.Name = "HuraAlertBox1"
        Me.HuraAlertBox1.Size = New System.Drawing.Size(604, 40)
        Me.HuraAlertBox1.TabIndex = 12
        Me.HuraAlertBox1.Text = "Pull the keyboard ..."
        '
        'Panel2
        '
        Me.Panel2.BackColor = System.Drawing.Color.Red
        Me.Panel2.Controls.Add(Me.TextBox2)
        Me.Panel2.Controls.Add(Me.TextBox3)
        Me.Panel2.Location = New System.Drawing.Point(200, 50)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(10, 20)
        Me.Panel2.TabIndex = 11
        '
        'TextBox2
        '
        Me.TextBox2.BackColor = System.Drawing.Color.Red
        Me.TextBox2.Location = New System.Drawing.Point(95, 69)
        Me.TextBox2.Multiline = True
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(26, 46)
        Me.TextBox2.TabIndex = 1
        Me.TextBox2.Text = "1"
        '
        'TextBox3
        '
        Me.TextBox3.BackColor = System.Drawing.Color.Red
        Me.TextBox3.Location = New System.Drawing.Point(47, 56)
        Me.TextBox3.Multiline = True
        Me.TextBox3.Name = "TextBox3"
        Me.TextBox3.Size = New System.Drawing.Size(30, 46)
        Me.TextBox3.TabIndex = 0
        '
        'T1
        '
        Me.T1.BackColor = System.Drawing.Color.White
        Me.T1.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.T1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.T1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.T1.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.T1.ForeColor = System.Drawing.Color.Green
        Me.T1.Location = New System.Drawing.Point(3, 3)
        Me.T1.Name = "T1"
        Me.T1.ReadOnly = True
        Me.T1.Size = New System.Drawing.Size(604, 260)
        Me.T1.TabIndex = 10
        Me.T1.Text = ""
        Me.T1.WordWrap = False
        '
        'TabPage2
        '
        Me.TabPage2.BackColor = System.Drawing.Color.Gainsboro
        Me.TabPage2.Controls.Add(Me.RichTextBox1)
        Me.TabPage2.Controls.Add(Me.Panel3)
        Me.TabPage2.Location = New System.Drawing.Point(4, 20)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(610, 266)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "TabPage2"
        '
        'RichTextBox1
        '
        Me.RichTextBox1.BackColor = System.Drawing.Color.White
        Me.RichTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.RichTextBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.RichTextBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.RichTextBox1.Font = New System.Drawing.Font("Tahoma", 9.75!)
        Me.RichTextBox1.ForeColor = System.Drawing.Color.Black
        Me.RichTextBox1.Location = New System.Drawing.Point(3, 3)
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.ReadOnly = True
        Me.RichTextBox1.Size = New System.Drawing.Size(518, 260)
        Me.RichTextBox1.TabIndex = 0
        Me.RichTextBox1.Text = ""
        '
        'Panel3
        '
        Me.Panel3.BackColor = System.Drawing.Color.Gainsboro
        Me.Panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.Panel3.Controls.Add(Me.TextBox4)
        Me.Panel3.Controls.Add(Me.Button9)
        Me.Panel3.Controls.Add(Me.Button5)
        Me.Panel3.Controls.Add(Me.Button6)
        Me.Panel3.Controls.Add(Me.Button7)
        Me.Panel3.Controls.Add(Me.Button8)
        Me.Panel3.Dock = System.Windows.Forms.DockStyle.Right
        Me.Panel3.Location = New System.Drawing.Point(521, 3)
        Me.Panel3.Name = "Panel3"
        Me.Panel3.Size = New System.Drawing.Size(86, 260)
        Me.Panel3.TabIndex = 5
        '
        'TextBox4
        '
        Me.TextBox4.Location = New System.Drawing.Point(3, 247)
        Me.TextBox4.Name = "TextBox4"
        Me.TextBox4.Size = New System.Drawing.Size(69, 20)
        Me.TextBox4.TabIndex = 6
        '
        'Button9
        '
        Me.Button9.BackColor = System.Drawing.Color.Gainsboro
        Me.Button9.ForeColor = System.Drawing.Color.FromArgb(CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer))
        Me.Button9.Location = New System.Drawing.Point(20, 62)
        Me.Button9.Name = "Button9"
        Me.Button9.Size = New System.Drawing.Size(22, 23)
        Me.Button9.TabIndex = 5
        Me.Button9.Text = "E"
        Me.Button9.UseVisualStyleBackColor = False
        '
        'Button5
        '
        Me.Button5.BackColor = System.Drawing.Color.Gainsboro
        Me.Button5.ForeColor = System.Drawing.Color.FromArgb(CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer))
        Me.Button5.Location = New System.Drawing.Point(4, 4)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(75, 23)
        Me.Button5.TabIndex = 1
        Me.Button5.Text = "Start"
        Me.Button5.UseVisualStyleBackColor = False
        '
        'Button6
        '
        Me.Button6.BackColor = System.Drawing.Color.Gainsboro
        Me.Button6.ForeColor = System.Drawing.Color.FromArgb(CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer))
        Me.Button6.Location = New System.Drawing.Point(3, 91)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(75, 23)
        Me.Button6.TabIndex = 2
        Me.Button6.Text = "Clean"
        Me.Button6.UseVisualStyleBackColor = False
        '
        'Button7
        '
        Me.Button7.BackColor = System.Drawing.Color.Gainsboro
        Me.Button7.ForeColor = System.Drawing.Color.FromArgb(CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer))
        Me.Button7.Location = New System.Drawing.Point(42, 62)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(22, 23)
        Me.Button7.TabIndex = 3
        Me.Button7.Text = "A"
        Me.Button7.UseVisualStyleBackColor = False
        '
        'Button8
        '
        Me.Button8.BackColor = System.Drawing.Color.Gainsboro
        Me.Button8.Enabled = False
        Me.Button8.ForeColor = System.Drawing.Color.FromArgb(CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer), CType(CType(43, Byte), Integer))
        Me.Button8.Location = New System.Drawing.Point(3, 33)
        Me.Button8.Name = "Button8"
        Me.Button8.Size = New System.Drawing.Size(75, 23)
        Me.Button8.TabIndex = 4
        Me.Button8.Text = "Stop"
        Me.Button8.UseVisualStyleBackColor = False
        '
        'Form31
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(618, 338)
        Me.Controls.Add(Me.VisualStudioTabControl1)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.Panel1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form31"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Keylogger  "
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.VisualStudioTabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        Me.TabPage2.ResumeLayout(False)
        Me.Panel3.ResumeLayout(False)
        Me.Panel3.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents T1 As System.Windows.Forms.RichTextBox
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Timer1 As Timer
    Friend WithEvents Panel2 As System.Windows.Forms.Panel
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox3 As System.Windows.Forms.TextBox
    Friend WithEvents Timer2 As System.Windows.Forms.Timer
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents RichTextBox1 As System.Windows.Forms.RichTextBox
    Friend WithEvents Timer3 As System.Windows.Forms.Timer
    Friend WithEvents Button6 As System.Windows.Forms.Button
    Friend WithEvents Button7 As System.Windows.Forms.Button
    Friend WithEvents Button8 As System.Windows.Forms.Button
    Friend WithEvents Panel3 As System.Windows.Forms.Panel
    Friend WithEvents Button9 As System.Windows.Forms.Button
    Friend WithEvents Timer4 As System.Windows.Forms.Timer
    Friend WithEvents TextBox4 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox5 As System.Windows.Forms.TextBox
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents SeveToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RefreshToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CleaningToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel2 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents VisualStudioTabControl1 As comet.VisualStudioTabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents HuraAlertBox1 As comet.HuraAlertBox
End Class
