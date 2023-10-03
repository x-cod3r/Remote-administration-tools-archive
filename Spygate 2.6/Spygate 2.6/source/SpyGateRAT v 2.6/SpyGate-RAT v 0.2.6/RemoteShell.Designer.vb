<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class RemoteShell
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(RemoteShell))
        Me.BackgroundWorker1 = New System.ComponentModel.BackgroundWorker()
        Me.RichTextBox1 = New System.Windows.Forms.TextBox()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'RichTextBox1
        '
        Me.RichTextBox1.BackColor = System.Drawing.Color.Black
        Me.RichTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.RichTextBox1.Cursor = System.Windows.Forms.Cursors.Default
        Me.RichTextBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.RichTextBox1.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.RichTextBox1.ForeColor = System.Drawing.Color.White
        Me.RichTextBox1.Location = New System.Drawing.Point(0, 0)
        Me.RichTextBox1.MaxLength = 9999999
        Me.RichTextBox1.Multiline = True
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.ReadOnly = True
        Me.RichTextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.RichTextBox1.ShortcutsEnabled = False
        Me.RichTextBox1.Size = New System.Drawing.Size(585, 278)
        Me.RichTextBox1.TabIndex = 8
        Me.RichTextBox1.TabStop = False
        Me.RichTextBox1.WordWrap = False
        '
        'TextBox2
        '
        Me.TextBox2.BackColor = System.Drawing.Color.Black
        Me.TextBox2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TextBox2.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.TextBox2.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextBox2.ForeColor = System.Drawing.Color.White
        Me.TextBox2.Location = New System.Drawing.Point(0, 278)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(585, 22)
        Me.TextBox2.TabIndex = 9
        '
        'RemoteShell
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(585, 300)
        Me.Controls.Add(Me.RichTextBox1)
        Me.Controls.Add(Me.TextBox2)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "RemoteShell"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Windows Command Processor  "
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents BackgroundWorker1 As System.ComponentModel.BackgroundWorker
    Friend WithEvents RichTextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
End Class
