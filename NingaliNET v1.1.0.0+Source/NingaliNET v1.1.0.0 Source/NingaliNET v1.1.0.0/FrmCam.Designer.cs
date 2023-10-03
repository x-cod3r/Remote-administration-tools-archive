namespace NINGALINET
{
	// Token: 0x0200000D RID: 13
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmCam : global::System.Windows.Forms.Form
	{
		// Token: 0x06000315 RID: 789 RVA: 0x0001F5EC File Offset: 0x0001D7EC
		[global::System.Diagnostics.DebuggerNonUserCode]
		protected override void Dispose(bool disposing)
		{
			try
			{
				if (disposing && this.components != null)
				{
					this.components.Dispose();
				}
			}
			finally
			{
				base.Dispose(disposing);
			}
		}

		// Token: 0x06000316 RID: 790 RVA: 0x0001F630 File Offset: 0x0001D830
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			this.ComboBox1 = new global::System.Windows.Forms.ComboBox();
			this.CheckBox1 = new global::System.Windows.Forms.CheckBox();
			this.CheckBox3 = new global::System.Windows.Forms.CheckBox();
			this.ComboBox2 = new global::System.Windows.Forms.ComboBox();
			this.Label2 = new global::System.Windows.Forms.Label();
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.Timer2 = new global::System.Windows.Forms.Timer(this.components);
			this.Panel1 = new global::System.Windows.Forms.Panel();
			this.GroupDropBox1 = new global::NINGALINET.GroupDropBox();
			this.Button1 = new global::System.Windows.Forms.Button();
			this.Label3 = new global::System.Windows.Forms.Label();
			this.PictureBox1 = new global::System.Windows.Forms.PictureBox();
			this.Timer3 = new global::System.Windows.Forms.Timer(this.components);
			this.Panel1.SuspendLayout();
			this.GroupDropBox1.SuspendLayout();
			((global::System.ComponentModel.ISupportInitialize)this.PictureBox1).BeginInit();
			this.SuspendLayout();
			this.ComboBox1.Anchor = (global::System.Windows.Forms.AnchorStyles.Top | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.ComboBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.ComboBox1.DropDownStyle = global::System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.ComboBox1.FlatStyle = global::System.Windows.Forms.FlatStyle.Flat;
			this.ComboBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.ComboBox1.FormattingEnabled = true;
			global::System.Windows.Forms.Control arg_13C_0 = this.ComboBox1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(15, 100);
			arg_13C_0.Location = location;
			this.ComboBox1.Name = "ComboBox1";
			global::System.Windows.Forms.Control arg_166_0 = this.ComboBox1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(238, 22);
			arg_166_0.Size = size;
			this.ComboBox1.TabIndex = 2;
			this.CheckBox1.AutoSize = true;
			this.CheckBox1.Checked = true;
			this.CheckBox1.CheckState = global::System.Windows.Forms.CheckState.Checked;
			global::System.Windows.Forms.Control arg_1B0_0 = this.CheckBox1;
			location = new global::System.Drawing.Point(15, 130);
			arg_1B0_0.Location = location;
			this.CheckBox1.Name = "CheckBox1";
			global::System.Windows.Forms.Control arg_1D7_0 = this.CheckBox1;
			size = new global::System.Drawing.Size(92, 18);
			arg_1D7_0.Size = size;
			this.CheckBox1.TabIndex = 3;
			this.CheckBox1.Text = "Stretch Image";
			this.CheckBox1.UseVisualStyleBackColor = true;
			this.CheckBox3.AutoSize = true;
			this.CheckBox3.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_235_0 = this.CheckBox3;
			location = new global::System.Drawing.Point(118, 130);
			arg_235_0.Location = location;
			this.CheckBox3.Name = "CheckBox3";
			global::System.Windows.Forms.Control arg_25C_0 = this.CheckBox3;
			size = new global::System.Drawing.Size(77, 18);
			arg_25C_0.Size = size;
			this.CheckBox3.TabIndex = 1;
			this.CheckBox3.Text = "Auto Save";
			this.CheckBox3.UseVisualStyleBackColor = true;
			this.ComboBox2.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.ComboBox2.FlatStyle = global::System.Windows.Forms.FlatStyle.Flat;
			this.ComboBox2.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.ComboBox2.FormattingEnabled = true;
			this.ComboBox2.Items.AddRange(new object[]
			{
				"640,480",
				"352,288",
				"320,240",
				"220,160",
				"160,120"
			});
			global::System.Windows.Forms.Control arg_319_0 = this.ComboBox2;
			location = new global::System.Drawing.Point(15, 55);
			arg_319_0.Location = location;
			this.ComboBox2.Name = "ComboBox2";
			global::System.Windows.Forms.Control arg_340_0 = this.ComboBox2;
			size = new global::System.Drawing.Size(122, 22);
			arg_340_0.Size = size;
			this.ComboBox2.TabIndex = 3;
			this.Label2.AutoSize = true;
			global::System.Windows.Forms.Control arg_36F_0 = this.Label2;
			location = new global::System.Drawing.Point(12, 38);
			arg_36F_0.Location = location;
			this.Label2.Name = "Label2";
			global::System.Windows.Forms.Control arg_396_0 = this.Label2;
			size = new global::System.Drawing.Size(65, 14);
			arg_396_0.Size = size;
			this.Label2.TabIndex = 4;
			this.Label2.Text = "Image Size :";
			this.Timer2.Enabled = true;
			this.Panel1.Controls.Add(this.GroupDropBox1);
			this.Panel1.Controls.Add(this.PictureBox1);
			this.Panel1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			global::System.Windows.Forms.Control arg_40B_0 = this.Panel1;
			location = new global::System.Drawing.Point(0, 0);
			arg_40B_0.Location = location;
			this.Panel1.Name = "Panel1";
			global::System.Windows.Forms.Control arg_438_0 = this.Panel1;
			size = new global::System.Drawing.Size(265, 213);
			arg_438_0.Size = size;
			this.Panel1.TabIndex = 3;
			this.GroupDropBox1.Checked = true;
			this.GroupDropBox1.Controls.Add(this.Button1);
			this.GroupDropBox1.Controls.Add(this.Label3);
			this.GroupDropBox1.Controls.Add(this.CheckBox1);
			this.GroupDropBox1.Controls.Add(this.ComboBox1);
			this.GroupDropBox1.Controls.Add(this.Label2);
			this.GroupDropBox1.Controls.Add(this.CheckBox3);
			this.GroupDropBox1.Controls.Add(this.ComboBox2);
			this.GroupDropBox1.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.GroupDropBox1.Font = new global::System.Drawing.Font("Arial", 8f);
			this.GroupDropBox1.ForeColor = global::System.Drawing.Color.FromArgb(245, 245, 245);
			global::System.Windows.Forms.Control arg_545_0 = this.GroupDropBox1;
			location = new global::System.Drawing.Point(0, 13);
			arg_545_0.Location = location;
			global::System.Windows.Forms.Control arg_55B_0 = this.GroupDropBox1;
			size = new global::System.Drawing.Size(5, 32);
			arg_55B_0.MinimumSize = size;
			this.GroupDropBox1.Name = "GroupDropBox1";
			this.GroupDropBox1.NoRounding = false;
			global::NINGALINET.GroupDropBox arg_594_0 = this.GroupDropBox1;
			size = new global::System.Drawing.Size(265, 200);
			arg_594_0.OpenSize = size;
			global::System.Windows.Forms.Control arg_5B1_0 = this.GroupDropBox1;
			size = new global::System.Drawing.Size(265, 200);
			arg_5B1_0.Size = size;
			this.GroupDropBox1.TabIndex = 7;
			this.GroupDropBox1.Text = "Capture Options";
			this.Button1.Anchor = (global::System.Windows.Forms.AnchorStyles.Top | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.Button1.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			this.Button1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_626_0 = this.Button1;
			location = new global::System.Drawing.Point(15, 158);
			arg_626_0.Location = location;
			this.Button1.Name = "Button1";
			global::System.Windows.Forms.Control arg_650_0 = this.Button1;
			size = new global::System.Drawing.Size(238, 25);
			arg_650_0.Size = size;
			this.Button1.TabIndex = 8;
			this.Button1.Text = "Start";
			this.Button1.UseVisualStyleBackColor = false;
			this.Label3.AutoSize = true;
			global::System.Windows.Forms.Control arg_69B_0 = this.Label3;
			location = new global::System.Drawing.Point(12, 82);
			arg_69B_0.Location = location;
			this.Label3.Name = "Label3";
			global::System.Windows.Forms.Control arg_6C2_0 = this.Label3;
			size = new global::System.Drawing.Size(87, 14);
			arg_6C2_0.Size = size;
			this.Label3.TabIndex = 5;
			this.Label3.Text = "Webcam Driver :";
			this.PictureBox1.Anchor = (global::System.Windows.Forms.AnchorStyles.Top | global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			global::System.Windows.Forms.Control arg_700_0 = this.PictureBox1;
			location = new global::System.Drawing.Point(0, 0);
			arg_700_0.Location = location;
			this.PictureBox1.Name = "PictureBox1";
			global::System.Windows.Forms.Control arg_72D_0 = this.PictureBox1;
			size = new global::System.Drawing.Size(265, 183);
			arg_72D_0.Size = size;
			this.PictureBox1.SizeMode = global::System.Windows.Forms.PictureBoxSizeMode.StretchImage;
			this.PictureBox1.TabIndex = 5;
			this.PictureBox1.TabStop = false;
			this.Timer3.Enabled = true;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(265, 213);
			this.ClientSize = size;
			this.Controls.Add(this.Panel1);
			this.Font = new global::System.Drawing.Font("Arial", 8.25f);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Name = "FrmCam";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "cam";
			this.Panel1.ResumeLayout(false);
			this.GroupDropBox1.ResumeLayout(false);
			this.GroupDropBox1.PerformLayout();
			((global::System.ComponentModel.ISupportInitialize)this.PictureBox1).EndInit();
			this.ResumeLayout(false);
		}

		// Token: 0x0400016C RID: 364
		private global::System.ComponentModel.IContainer components;
	}
}
