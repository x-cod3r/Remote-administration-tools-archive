<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class w
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
        Me.Sendbox = New System.Windows.Forms.TextBox()
        Me.Recv = New System.Windows.Forms.RichTextBox()
        Me.SuspendLayout()
        '
        'Sendbox
        '
        Me.Sendbox.BackColor = System.Drawing.Color.Gainsboro
        Me.Sendbox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.Sendbox.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.Sendbox.Font = New System.Drawing.Font("Tahoma", 8.0!)
        Me.Sendbox.ForeColor = System.Drawing.Color.Black
        Me.Sendbox.Location = New System.Drawing.Point(0, 261)
        Me.Sendbox.Multiline = True
        Me.Sendbox.Name = "Sendbox"
        Me.Sendbox.Size = New System.Drawing.Size(316, 32)
        Me.Sendbox.TabIndex = 9
        '
        'Recv
        '
        Me.Recv.BackColor = System.Drawing.Color.White
        Me.Recv.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Recv.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Recv.ForeColor = System.Drawing.Color.Black
        Me.Recv.Location = New System.Drawing.Point(0, 0)
        Me.Recv.Name = "Recv"
        Me.Recv.ReadOnly = True
        Me.Recv.Size = New System.Drawing.Size(316, 261)
        Me.Recv.TabIndex = 10
        Me.Recv.Text = ""
        Me.Recv.WordWrap = False
        '
        'w
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.Gainsboro
        Me.ClientSize = New System.Drawing.Size(316, 293)
        Me.ControlBox = False
        Me.Controls.Add(Me.Recv)
        Me.Controls.Add(Me.Sendbox)
        Me.ForeColor = System.Drawing.Color.Black
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "w"
        Me.Opacity = 0.98R
        Me.ShowIcon = False
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Chatting"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Sendbox As System.Windows.Forms.TextBox
    Friend WithEvents Recv As System.Windows.Forms.RichTextBox
End Class
