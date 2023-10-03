<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Chatt
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Chatt))
        Me.Sendbox = New System.Windows.Forms.TextBox()
        Me.Recv = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'Sendbox
        '
        Me.Sendbox.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.Sendbox.Location = New System.Drawing.Point(0, 304)
        Me.Sendbox.Name = "Sendbox"
        Me.Sendbox.Size = New System.Drawing.Size(450, 20)
        Me.Sendbox.TabIndex = 7
        '
        'Recv
        '
        Me.Recv.BackColor = System.Drawing.SystemColors.MenuText
        Me.Recv.Dock = System.Windows.Forms.DockStyle.Top
        Me.Recv.Font = New System.Drawing.Font("Tahoma", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Recv.ForeColor = System.Drawing.Color.Lime
        Me.Recv.Location = New System.Drawing.Point(0, 0)
        Me.Recv.Multiline = True
        Me.Recv.Name = "Recv"
        Me.Recv.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.Recv.Size = New System.Drawing.Size(450, 303)
        Me.Recv.TabIndex = 6
        Me.Recv.TabStop = False
        '
        'Chatt
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(450, 324)
        Me.Controls.Add(Me.Sendbox)
        Me.Controls.Add(Me.Recv)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Chatt"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Sendbox As System.Windows.Forms.TextBox
    Friend WithEvents Recv As System.Windows.Forms.TextBox
End Class
