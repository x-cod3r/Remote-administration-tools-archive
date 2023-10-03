namespace NINGALINET
{
	// Token: 0x02000011 RID: 17
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmDwonload : global::System.Windows.Forms.Form
	{
		// Token: 0x0600038B RID: 907 RVA: 0x000225C8 File Offset: 0x000207C8
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

		// Token: 0x0600038C RID: 908 RVA: 0x0002260C File Offset: 0x0002080C
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmDwonload));
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.Progressbar1 = new global::NINGALINET.CHProgressbar();
			this.Lname = new global::System.Windows.Forms.Label();
			this.Lspeed = new global::System.Windows.Forms.Label();
			this.Ldata = new global::System.Windows.Forms.Label();
			this.PictureBox1 = new global::System.Windows.Forms.PictureBox();
			this.CheckBox1 = new global::System.Windows.Forms.CheckBox();
			((global::System.ComponentModel.ISupportInitialize)this.PictureBox1).BeginInit();
			this.SuspendLayout();
			this.Timer1.Interval = 1000;
			this.Progressbar1.Anchor = (global::System.Windows.Forms.AnchorStyles.Top | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.Progressbar1.BackColor = global::System.Drawing.Color.Transparent;
			this.Progressbar1.Colors = new global::NINGALINET.Bloom[0];
			this.Progressbar1.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.Progressbar1.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.Progressbar1.Image = null;
			global::System.Windows.Forms.Control arg_105_0 = this.Progressbar1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(80, 27);
			arg_105_0.Location = location;
			this.Progressbar1.Maximum = 100;
			this.Progressbar1.Name = "Progressbar1";
			this.Progressbar1.NoRounding = false;
			global::System.Windows.Forms.Control arg_148_0 = this.Progressbar1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(283, 42);
			arg_148_0.Size = size;
			this.Progressbar1.TabIndex = 3;
			this.Progressbar1.Text = "ChProgressbar1";
			this.Progressbar1.Transparent = true;
			this.Progressbar1.Value = 0;
			this.Lname.AutoSize = true;
			global::System.Windows.Forms.Control arg_19F_0 = this.Lname;
			location = new global::System.Drawing.Point(77, 10);
			arg_19F_0.Location = location;
			this.Lname.Name = "Lname";
			global::System.Windows.Forms.Control arg_1C6_0 = this.Lname;
			size = new global::System.Drawing.Size(13, 14);
			arg_1C6_0.Size = size;
			this.Lname.TabIndex = 5;
			this.Lname.Text = "..";
			this.Lspeed.AutoSize = true;
			global::System.Windows.Forms.Control arg_208_0 = this.Lspeed;
			location = new global::System.Drawing.Point(340, 72);
			arg_208_0.Location = location;
			this.Lspeed.Name = "Lspeed";
			global::System.Windows.Forms.Control arg_22F_0 = this.Lspeed;
			size = new global::System.Drawing.Size(23, 14);
			arg_22F_0.Size = size;
			this.Lspeed.TabIndex = 6;
			this.Lspeed.Text = "0 B";
			this.Lspeed.Visible = false;
			this.Ldata.AutoSize = true;
			global::System.Windows.Forms.Control arg_27A_0 = this.Ldata;
			location = new global::System.Drawing.Point(77, 72);
			arg_27A_0.Location = location;
			this.Ldata.Name = "Ldata";
			global::System.Windows.Forms.Control arg_2A1_0 = this.Ldata;
			size = new global::System.Drawing.Size(45, 14);
			arg_2A1_0.Size = size;
			this.Ldata.TabIndex = 7;
			this.Ldata.Text = "0 B/0 B ";
			this.Ldata.TextAlign = global::System.Drawing.ContentAlignment.MiddleLeft;
			this.PictureBox1.Image = (global::System.Drawing.Image)componentResourceManager.GetObject("PictureBox1.Image");
			global::System.Windows.Forms.Control arg_2FB_0 = this.PictureBox1;
			location = new global::System.Drawing.Point(7, 9);
			arg_2FB_0.Location = location;
			this.PictureBox1.Name = "PictureBox1";
			global::System.Windows.Forms.Control arg_322_0 = this.PictureBox1;
			size = new global::System.Drawing.Size(64, 78);
			arg_322_0.Size = size;
			this.PictureBox1.SizeMode = global::System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.PictureBox1.TabIndex = 8;
			this.PictureBox1.TabStop = false;
			this.CheckBox1.Anchor = (global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left);
			this.CheckBox1.AutoSize = true;
			global::System.Windows.Forms.Control arg_374_0 = this.CheckBox1;
			location = new global::System.Drawing.Point(7, 98);
			arg_374_0.Location = location;
			this.CheckBox1.Name = "CheckBox1";
			global::System.Windows.Forms.Control arg_39E_0 = this.CheckBox1;
			size = new global::System.Drawing.Size(255, 18);
			arg_39E_0.Size = size;
			this.CheckBox1.TabIndex = 9;
			this.CheckBox1.Text = "Open folder \"Downloads\" automatical complete.";
			this.CheckBox1.UseVisualStyleBackColor = true;
			this.CheckBox1.Visible = false;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.FromArgb(10, 10, 10);
			size = new global::System.Drawing.Size(375, 93);
			this.ClientSize = size;
			this.Controls.Add(this.CheckBox1);
			this.Controls.Add(this.PictureBox1);
			this.Controls.Add(this.Ldata);
			this.Controls.Add(this.Lspeed);
			this.Controls.Add(this.Lname);
			this.Controls.Add(this.Progressbar1);
			this.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.MaximizeBox = false;
			size = new global::System.Drawing.Size(1000, 143);
			this.MaximumSize = size;
			size = new global::System.Drawing.Size(391, 131);
			this.MinimumSize = size;
			this.Name = "DW";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "DW";
			((global::System.ComponentModel.ISupportInitialize)this.PictureBox1).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x040001A9 RID: 425
		private global::System.ComponentModel.IContainer components;
	}
}
