<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form36
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form36))
        Me.BackgroundWorker1 = New System.ComponentModel.BackgroundWorker()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.RichTextBox1 = New System.Windows.Forms.RichTextBox()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SeveToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'TextBox2
        '
        Me.TextBox2.AutoCompleteCustomSource.AddRange(New String() {"ipconfig", "netstat -n", "systeminfo", "DATE", "NSLOOKUP", "WHOAMI", "WHERE", "RUN", "WINRM", "NET VIEW", "CMDKEY", "KILL", "NBTSTAT", "PING", "NETSTAT", "PRINT", "TASKLIST", "VER", "VOL", "WHOAMI", "WMIC", "DriverQuery", " OPENFILES", "START", "SC", "FTP"})
        Me.TextBox2.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend
        Me.TextBox2.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource
        Me.TextBox2.BackColor = System.Drawing.Color.Black
        Me.TextBox2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.TextBox2.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.TextBox2.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextBox2.ForeColor = System.Drawing.Color.White
        Me.TextBox2.Location = New System.Drawing.Point(0, 246)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(602, 22)
        Me.TextBox2.TabIndex = 9
        '
        'RichTextBox1
        '
        Me.RichTextBox1.BackColor = System.Drawing.Color.Black
        Me.RichTextBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.RichTextBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.RichTextBox1.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.RichTextBox1.ForeColor = System.Drawing.Color.Black
        Me.RichTextBox1.Location = New System.Drawing.Point(0, 0)
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.ReadOnly = True
        Me.RichTextBox1.Size = New System.Drawing.Size(602, 246)
        Me.RichTextBox1.TabIndex = 11
        Me.RichTextBox1.Text = ""
        Me.RichTextBox1.WordWrap = False
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SeveToolStripMenuItem, Me.CopyToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.ContextMenuStrip1.ShowImageMargin = False
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(78, 48)
        '
        'SeveToolStripMenuItem
        '
        Me.SeveToolStripMenuItem.Name = "SeveToolStripMenuItem"
        Me.SeveToolStripMenuItem.Size = New System.Drawing.Size(77, 22)
        Me.SeveToolStripMenuItem.Text = "Save"
        '
        'CopyToolStripMenuItem
        '
        Me.CopyToolStripMenuItem.Name = "CopyToolStripMenuItem"
        Me.CopyToolStripMenuItem.Size = New System.Drawing.Size(77, 22)
        Me.CopyToolStripMenuItem.Text = "Copy"
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        '
        'Form36
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(602, 268)
        Me.Controls.Add(Me.RichTextBox1)
        Me.Controls.Add(Me.TextBox2)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form36"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Windows Command Processor  "
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents BackgroundWorker1 As System.ComponentModel.BackgroundWorker
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents RichTextBox1 As System.Windows.Forms.RichTextBox
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents SeveToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
End Class
