<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class About
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(About))
        Me.Title = New System.Windows.Forms.Label
        Me.Version = New System.Windows.Forms.Label
        Me.CR = New System.Windows.Forms.Label
        Me.URL = New System.Windows.Forms.Label
        Me.License = New System.Windows.Forms.Label
        Me.Registered = New System.Windows.Forms.Label
        Me.http = New System.Windows.Forms.LinkLabel
        Me.Company = New System.Windows.Forms.Label
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.http2 = New System.Windows.Forms.LinkLabel
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Title
        '
        Me.Title.AutoSize = True
        Me.Title.BackColor = System.Drawing.Color.Transparent
        Me.Title.Font = New System.Drawing.Font("Times New Roman", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Title.ForeColor = System.Drawing.Color.Red
        Me.Title.Location = New System.Drawing.Point(12, 213)
        Me.Title.Name = "Title"
        Me.Title.Size = New System.Drawing.Size(55, 19)
        Me.Title.TabIndex = 0
        Me.Title.Text = "Label1"
        '
        'Version
        '
        Me.Version.AutoSize = True
        Me.Version.BackColor = System.Drawing.Color.Transparent
        Me.Version.Font = New System.Drawing.Font("Times New Roman", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Version.ForeColor = System.Drawing.Color.Black
        Me.Version.Location = New System.Drawing.Point(12, 234)
        Me.Version.Name = "Version"
        Me.Version.Size = New System.Drawing.Size(55, 19)
        Me.Version.TabIndex = 2
        Me.Version.Text = "Label2"
        '
        'CR
        '
        Me.CR.AutoSize = True
        Me.CR.BackColor = System.Drawing.Color.Transparent
        Me.CR.Font = New System.Drawing.Font("Times New Roman", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CR.ForeColor = System.Drawing.Color.Black
        Me.CR.Location = New System.Drawing.Point(12, 256)
        Me.CR.Name = "CR"
        Me.CR.Size = New System.Drawing.Size(55, 19)
        Me.CR.TabIndex = 3
        Me.CR.Text = "Label3"
        '
        'URL
        '
        Me.URL.AutoSize = True
        Me.URL.BackColor = System.Drawing.Color.Transparent
        Me.URL.Font = New System.Drawing.Font("Times New Roman", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.URL.ForeColor = System.Drawing.Color.Black
        Me.URL.Location = New System.Drawing.Point(12, 311)
        Me.URL.Name = "URL"
        Me.URL.Size = New System.Drawing.Size(55, 19)
        Me.URL.TabIndex = 5
        Me.URL.Text = "Label5"
        '
        'License
        '
        Me.License.AutoSize = True
        Me.License.BackColor = System.Drawing.Color.Transparent
        Me.License.Font = New System.Drawing.Font("Times New Roman", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.License.ForeColor = System.Drawing.Color.Black
        Me.License.Location = New System.Drawing.Point(12, 354)
        Me.License.Name = "License"
        Me.License.Size = New System.Drawing.Size(55, 19)
        Me.License.TabIndex = 6
        Me.License.Text = "Label6"
        '
        'Registered
        '
        Me.Registered.AutoSize = True
        Me.Registered.BackColor = System.Drawing.Color.Transparent
        Me.Registered.Font = New System.Drawing.Font("Times New Roman", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Registered.ForeColor = System.Drawing.Color.Black
        Me.Registered.Location = New System.Drawing.Point(12, 377)
        Me.Registered.Name = "Registered"
        Me.Registered.Size = New System.Drawing.Size(55, 19)
        Me.Registered.TabIndex = 7
        Me.Registered.Text = "Label7"
        '
        'http
        '
        Me.http.AutoSize = True
        Me.http.BackColor = System.Drawing.Color.Transparent
        Me.http.Font = New System.Drawing.Font("Times New Roman", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.http.ForeColor = System.Drawing.Color.Black
        Me.http.LinkColor = System.Drawing.Color.Blue
        Me.http.Location = New System.Drawing.Point(90, 311)
        Me.http.Name = "http"
        Me.http.Size = New System.Drawing.Size(189, 19)
        Me.http.TabIndex = 11
        Me.http.TabStop = True
        Me.http.Text = "http://albertino.110mb.com"
        '
        'Company
        '
        Me.Company.AutoSize = True
        Me.Company.BackColor = System.Drawing.Color.Transparent
        Me.Company.Font = New System.Drawing.Font("Times New Roman", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Company.ForeColor = System.Drawing.Color.Black
        Me.Company.Location = New System.Drawing.Point(115, 377)
        Me.Company.Name = "Company"
        Me.Company.Size = New System.Drawing.Size(55, 19)
        Me.Company.TabIndex = 14
        Me.Company.Text = "Label7"
        Me.Company.Visible = False
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = Global.Resources.mat
        Me.PictureBox1.Location = New System.Drawing.Point(-1, 0)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(533, 210)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 1
        Me.PictureBox1.TabStop = False
        '
        'http2
        '
        Me.http2.AutoSize = True
        Me.http2.BackColor = System.Drawing.Color.Transparent
        Me.http2.Font = New System.Drawing.Font("Times New Roman", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.http2.ForeColor = System.Drawing.Color.Black
        Me.http2.LinkColor = System.Drawing.Color.Blue
        Me.http2.Location = New System.Drawing.Point(285, 311)
        Me.http2.Name = "http2"
        Me.http2.Size = New System.Drawing.Size(188, 19)
        Me.http2.TabIndex = 15
        Me.http2.TabStop = True
        Me.http2.Text = "http://www.geogensoft.com"
        '
        'About
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(532, 399)
        Me.Controls.Add(Me.http2)
        Me.Controls.Add(Me.Company)
        Me.Controls.Add(Me.http)
        Me.Controls.Add(Me.Registered)
        Me.Controls.Add(Me.License)
        Me.Controls.Add(Me.URL)
        Me.Controls.Add(Me.CR)
        Me.Controls.Add(Me.Version)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.Title)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "About"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "About ARC"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Title As System.Windows.Forms.Label
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents Version As System.Windows.Forms.Label
    Friend WithEvents CR As System.Windows.Forms.Label
    Friend WithEvents URL As System.Windows.Forms.Label
    Friend WithEvents License As System.Windows.Forms.Label
    Friend WithEvents Registered As System.Windows.Forms.Label
    Friend WithEvents http As System.Windows.Forms.LinkLabel
    Friend WithEvents Company As System.Windows.Forms.Label
    Friend WithEvents http2 As System.Windows.Forms.LinkLabel

End Class
