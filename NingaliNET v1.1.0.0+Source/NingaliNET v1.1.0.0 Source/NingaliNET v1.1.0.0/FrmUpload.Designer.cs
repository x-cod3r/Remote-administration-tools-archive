namespace NINGALINET
{
	// Token: 0x02000027 RID: 39
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmUpload : global::System.Windows.Forms.Form
	{
		// Token: 0x06000786 RID: 1926 RVA: 0x0003C5A8 File Offset: 0x0003A7A8
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

		// Token: 0x06000787 RID: 1927 RVA: 0x0003C5EC File Offset: 0x0003A7EC
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmUpload));
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.PictureBox1 = new global::System.Windows.Forms.PictureBox();
			this.Ldata = new global::System.Windows.Forms.Label();
			this.Lspeed = new global::System.Windows.Forms.Label();
			this.Lname = new global::System.Windows.Forms.Label();
			this.Progressbar1 = new global::NINGALINET.CHProgressbar();
			((global::System.ComponentModel.ISupportInitialize)this.PictureBox1).BeginInit();
			this.SuspendLayout();
			this.Timer1.Interval = 1000;
			this.PictureBox1.Image = (global::System.Drawing.Image)componentResourceManager.GetObject("PictureBox1.Image");
			global::System.Windows.Forms.Control arg_B0_0 = this.PictureBox1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(7, 9);
			arg_B0_0.Location = location;
			this.PictureBox1.Name = "PictureBox1";
			global::System.Windows.Forms.Control arg_D7_0 = this.PictureBox1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(64, 78);
			arg_D7_0.Size = size;
			this.PictureBox1.SizeMode = global::System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.PictureBox1.TabIndex = 13;
			this.PictureBox1.TabStop = false;
			this.Ldata.Anchor = (global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left);
			this.Ldata.AutoSize = true;
			global::System.Windows.Forms.Control arg_12B_0 = this.Ldata;
			location = new global::System.Drawing.Point(77, 72);
			arg_12B_0.Location = location;
			this.Ldata.Name = "Ldata";
			global::System.Windows.Forms.Control arg_152_0 = this.Ldata;
			size = new global::System.Drawing.Size(42, 14);
			arg_152_0.Size = size;
			this.Ldata.TabIndex = 12;
			this.Ldata.Text = "0 B/0 B";
			this.Ldata.TextAlign = global::System.Drawing.ContentAlignment.MiddleLeft;
			this.Lspeed.AutoSize = true;
			global::System.Windows.Forms.Control arg_1A2_0 = this.Lspeed;
			location = new global::System.Drawing.Point(189, 72);
			arg_1A2_0.Location = location;
			this.Lspeed.Name = "Lspeed";
			global::System.Windows.Forms.Control arg_1C9_0 = this.Lspeed;
			size = new global::System.Drawing.Size(23, 14);
			arg_1C9_0.Size = size;
			this.Lspeed.TabIndex = 11;
			this.Lspeed.Text = "0 B";
			this.Lspeed.Visible = false;
			this.Lname.AutoSize = true;
			global::System.Windows.Forms.Control arg_215_0 = this.Lname;
			location = new global::System.Drawing.Point(77, 10);
			arg_215_0.Location = location;
			this.Lname.Name = "Lname";
			global::System.Windows.Forms.Control arg_23C_0 = this.Lname;
			size = new global::System.Drawing.Size(13, 14);
			arg_23C_0.Size = size;
			this.Lname.TabIndex = 10;
			this.Lname.Text = "..";
			this.Progressbar1.Anchor = (global::System.Windows.Forms.AnchorStyles.Top | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.Progressbar1.BackColor = global::System.Drawing.Color.Transparent;
			this.Progressbar1.Colors = new global::NINGALINET.Bloom[0];
			this.Progressbar1.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.Progressbar1.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.Progressbar1.Image = null;
			global::System.Windows.Forms.Control arg_2D4_0 = this.Progressbar1;
			location = new global::System.Drawing.Point(80, 27);
			arg_2D4_0.Location = location;
			this.Progressbar1.Maximum = 100;
			this.Progressbar1.Name = "Progressbar1";
			this.Progressbar1.NoRounding = false;
			global::System.Windows.Forms.Control arg_317_0 = this.Progressbar1;
			size = new global::System.Drawing.Size(286, 42);
			arg_317_0.Size = size;
			this.Progressbar1.TabIndex = 9;
			this.Progressbar1.Text = "ChProgressbar1";
			this.Progressbar1.Transparent = true;
			this.Progressbar1.Value = 0;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.FromArgb(10, 10, 10);
			size = new global::System.Drawing.Size(375, 93);
			this.ClientSize = size;
			this.Controls.Add(this.PictureBox1);
			this.Controls.Add(this.Ldata);
			this.Controls.Add(this.Lspeed);
			this.Controls.Add(this.Lname);
			this.Controls.Add(this.Progressbar1);
			this.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.MaximizeBox = false;
			size = new global::System.Drawing.Size(1000, 131);
			this.MaximumSize = size;
			size = new global::System.Drawing.Size(237, 131);
			this.MinimumSize = size;
			this.Name = "up";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "up";
			((global::System.ComponentModel.ISupportInitialize)this.PictureBox1).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x0400037D RID: 893
		private global::System.ComponentModel.IContainer components;
	}
}
