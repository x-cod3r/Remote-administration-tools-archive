namespace NINGALINET
{
	// Token: 0x02000009 RID: 9
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FDesktop : global::System.Windows.Forms.Form
	{
		// Token: 0x06000062 RID: 98 RVA: 0x00006FB0 File Offset: 0x000051B0
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

		// Token: 0x06000063 RID: 99 RVA: 0x00006FF4 File Offset: 0x000051F4
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FDesktop));
			this.C2 = new global::System.Windows.Forms.ComboBox();
			this.Label2 = new global::System.Windows.Forms.Label();
			this.Label3 = new global::System.Windows.Forms.Label();
			this.CheckBox1 = new global::System.Windows.Forms.CheckBox();
			this.C = new global::System.Windows.Forms.NumericUpDown();
			this.C1 = new global::System.Windows.Forms.ComboBox();
			this.ImageList1 = new global::System.Windows.Forms.ImageList(this.components);
			this.CheckBox3 = new global::System.Windows.Forms.CheckBox();
			this.CheckBox2 = new global::System.Windows.Forms.CheckBox();
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.Button1 = new global::System.Windows.Forms.Button();
			this.Label1 = new global::System.Windows.Forms.Label();
			this.Button2 = new global::System.Windows.Forms.Button();
			this.P1 = new global::System.Windows.Forms.PictureBox();
			this.ContextMenuStrip1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.SaveAsImageToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.ScreenOptionsToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.CheckBox4 = new global::System.Windows.Forms.CheckBox();
			this.Panel1 = new global::System.Windows.Forms.Panel();
			this.Panel2 = new global::System.Windows.Forms.Panel();
			this.TextBox1 = new global::System.Windows.Forms.TextBox();
			this.Timer2 = new global::System.Windows.Forms.Timer(this.components);
			((global::System.ComponentModel.ISupportInitialize)this.C).BeginInit();
			((global::System.ComponentModel.ISupportInitialize)this.P1).BeginInit();
			this.ContextMenuStrip1.SuspendLayout();
			this.Panel1.SuspendLayout();
			this.Panel2.SuspendLayout();
			this.SuspendLayout();
			this.C2.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.C2.DropDownStyle = global::System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.C2.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			this.C2.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.C2.FormattingEnabled = true;
			global::System.Windows.Forms.Control arg_1C1_0 = this.C2;
			global::System.Drawing.Point location = new global::System.Drawing.Point(438, 24);
			arg_1C1_0.Location = location;
			this.C2.Name = "C2";
			global::System.Windows.Forms.Control arg_1E8_0 = this.C2;
			global::System.Drawing.Size size = new global::System.Drawing.Size(84, 22);
			arg_1E8_0.Size = size;
			this.C2.TabIndex = 3;
			this.Label2.AutoSize = true;
			global::System.Windows.Forms.Control arg_21A_0 = this.Label2;
			location = new global::System.Drawing.Point(434, 9);
			arg_21A_0.Location = location;
			this.Label2.Name = "Label2";
			global::System.Windows.Forms.Control arg_241_0 = this.Label2;
			size = new global::System.Drawing.Size(30, 14);
			arg_241_0.Size = size;
			this.Label2.TabIndex = 2;
			this.Label2.Text = "Split:";
			this.Label3.AutoSize = true;
			global::System.Windows.Forms.Control arg_283_0 = this.Label3;
			location = new global::System.Drawing.Point(344, 9);
			arg_283_0.Location = location;
			this.Label3.Name = "Label3";
			global::System.Windows.Forms.Control arg_2AA_0 = this.Label3;
			size = new global::System.Drawing.Size(43, 14);
			arg_2AA_0.Size = size;
			this.Label3.TabIndex = 4;
			this.Label3.Text = "Quality:";
			this.CheckBox1.AutoSize = true;
			global::System.Windows.Forms.Control arg_2EC_0 = this.CheckBox1;
			location = new global::System.Drawing.Point(168, 28);
			arg_2EC_0.Location = location;
			this.CheckBox1.Name = "CheckBox1";
			global::System.Windows.Forms.Control arg_313_0 = this.CheckBox1;
			size = new global::System.Drawing.Size(84, 18);
			arg_313_0.Size = size;
			this.CheckBox1.TabIndex = 6;
			this.CheckBox1.Text = "Show Lines";
			this.CheckBox1.UseVisualStyleBackColor = true;
			this.C.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.C.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_37B_0 = this.C;
			location = new global::System.Drawing.Point(348, 26);
			arg_37B_0.Location = location;
			global::System.Windows.Forms.NumericUpDown arg_3AD_0 = this.C;
			decimal num = new decimal(new int[]
			{
				20,
				0,
				0,
				0
			});
			arg_3AD_0.Minimum = num;
			this.C.Name = "C";
			global::System.Windows.Forms.Control arg_3D4_0 = this.C;
			size = new global::System.Drawing.Size(84, 20);
			arg_3D4_0.Size = size;
			this.C.TabIndex = 9;
			global::System.Windows.Forms.NumericUpDown arg_413_0 = this.C;
			num = new decimal(new int[]
			{
				50,
				0,
				0,
				0
			});
			arg_413_0.Value = num;
			this.C1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.C1.DropDownStyle = global::System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.C1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			this.C1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.C1.FormattingEnabled = true;
			global::System.Windows.Forms.Control arg_477_0 = this.C1;
			location = new global::System.Drawing.Point(258, 24);
			arg_477_0.Location = location;
			this.C1.Name = "C1";
			global::System.Windows.Forms.Control arg_49E_0 = this.C1;
			size = new global::System.Drawing.Size(84, 22);
			arg_49E_0.Size = size;
			this.C1.TabIndex = 1;
			this.ImageList1.ImageStream = (global::System.Windows.Forms.ImageListStreamer)componentResourceManager.GetObject("ImageList1.ImageStream");
			this.ImageList1.TransparentColor = global::System.Drawing.Color.Transparent;
			this.ImageList1.Images.SetKeyName(0, "016.png");
			this.ImageList1.Images.SetKeyName(1, "015.png");
			this.ImageList1.Images.SetKeyName(2, "microphone.png");
			this.CheckBox3.AutoSize = true;
			this.CheckBox3.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_54A_0 = this.CheckBox3;
			location = new global::System.Drawing.Point(88, 29);
			arg_54A_0.Location = location;
			this.CheckBox3.Name = "CheckBox3";
			global::System.Windows.Forms.Control arg_571_0 = this.CheckBox3;
			size = new global::System.Drawing.Size(73, 18);
			arg_571_0.Size = size;
			this.CheckBox3.TabIndex = 31;
			this.CheckBox3.Text = "Keyboard";
			this.CheckBox3.UseVisualStyleBackColor = true;
			this.CheckBox2.AutoSize = true;
			this.CheckBox2.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_5CC_0 = this.CheckBox2;
			location = new global::System.Drawing.Point(88, 5);
			arg_5CC_0.Location = location;
			this.CheckBox2.Name = "CheckBox2";
			global::System.Windows.Forms.Control arg_5F3_0 = this.CheckBox2;
			size = new global::System.Drawing.Size(58, 18);
			arg_5F3_0.Size = size;
			this.CheckBox2.TabIndex = 10;
			this.CheckBox2.Text = "Mouse";
			this.CheckBox2.UseVisualStyleBackColor = true;
			this.Timer1.Enabled = true;
			this.Button1.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_65F_0 = this.Button1;
			location = new global::System.Drawing.Point(7, 6);
			arg_65F_0.Location = location;
			this.Button1.Name = "Button1";
			global::System.Windows.Forms.Control arg_686_0 = this.Button1;
			size = new global::System.Drawing.Size(75, 40);
			arg_686_0.Size = size;
			this.Button1.TabIndex = 45;
			this.Button1.Text = "Start";
			this.Button1.UseVisualStyleBackColor = false;
			this.Label1.AutoSize = true;
			global::System.Windows.Forms.Control arg_6D5_0 = this.Label1;
			location = new global::System.Drawing.Point(254, 9);
			arg_6D5_0.Location = location;
			this.Label1.Name = "Label1";
			global::System.Windows.Forms.Control arg_6FC_0 = this.Label1;
			size = new global::System.Drawing.Size(37, 14);
			arg_6FC_0.Size = size;
			this.Label1.TabIndex = 46;
			this.Label1.Text = "Size : ";
			this.Button2.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button2.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_758_0 = this.Button2;
			location = new global::System.Drawing.Point(634, 239);
			arg_758_0.Location = location;
			this.Button2.Name = "Button2";
			global::System.Windows.Forms.Control arg_77F_0 = this.Button2;
			size = new global::System.Drawing.Size(75, 25);
			arg_77F_0.Size = size;
			this.Button2.TabIndex = 47;
			this.Button2.Text = "Save";
			this.Button2.UseVisualStyleBackColor = false;
			this.P1.BackColor = global::System.Drawing.Color.Black;
			this.P1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			global::System.Windows.Forms.Control arg_7D9_0 = this.P1;
			location = new global::System.Drawing.Point(0, 0);
			arg_7D9_0.Location = location;
			this.P1.Name = "P1";
			global::System.Windows.Forms.Control arg_806_0 = this.P1;
			size = new global::System.Drawing.Size(610, 379);
			arg_806_0.Size = size;
			this.P1.SizeMode = global::System.Windows.Forms.PictureBoxSizeMode.StretchImage;
			this.P1.TabIndex = 49;
			this.P1.TabStop = false;
			this.ContextMenuStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.SaveAsImageToolStripMenuItem,
				this.ScreenOptionsToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_883_0 = this.ContextMenuStrip1;
			size = new global::System.Drawing.Size(155, 48);
			arg_883_0.Size = size;
			this.SaveAsImageToolStripMenuItem.Name = "SaveAsImageToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_8AD_0 = this.SaveAsImageToolStripMenuItem;
			size = new global::System.Drawing.Size(154, 22);
			arg_8AD_0.Size = size;
			this.SaveAsImageToolStripMenuItem.Text = "Save As";
			this.ScreenOptionsToolStripMenuItem.Name = "ScreenOptionsToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_8E7_0 = this.ScreenOptionsToolStripMenuItem;
			size = new global::System.Drawing.Size(154, 22);
			arg_8E7_0.Size = size;
			this.ScreenOptionsToolStripMenuItem.Text = "Screen Options";
			this.CheckBox4.AutoSize = true;
			global::System.Windows.Forms.Control arg_91C_0 = this.CheckBox4;
			location = new global::System.Drawing.Point(168, 6);
			arg_91C_0.Location = location;
			this.CheckBox4.Name = "CheckBox4";
			global::System.Windows.Forms.Control arg_943_0 = this.CheckBox4;
			size = new global::System.Drawing.Size(77, 18);
			arg_943_0.Size = size;
			this.CheckBox4.TabIndex = 47;
			this.CheckBox4.Text = "Auto Save";
			this.CheckBox4.UseVisualStyleBackColor = true;
			this.Panel1.Anchor = (global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left);
			this.Panel1.BackColor = global::System.Drawing.Color.FromArgb(10, 10, 10);
			this.Panel1.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.Panel1.Controls.Add(this.Button1);
			this.Panel1.Controls.Add(this.Label3);
			this.Panel1.Controls.Add(this.C2);
			this.Panel1.Controls.Add(this.CheckBox1);
			this.Panel1.Controls.Add(this.CheckBox2);
			this.Panel1.Controls.Add(this.Label1);
			this.Panel1.Controls.Add(this.CheckBox3);
			this.Panel1.Controls.Add(this.CheckBox4);
			this.Panel1.Controls.Add(this.C);
			this.Panel1.Controls.Add(this.C1);
			this.Panel1.Controls.Add(this.Label2);
			global::System.Windows.Forms.Control arg_AA6_0 = this.Panel1;
			location = new global::System.Drawing.Point(-4, 328);
			arg_AA6_0.Location = location;
			this.Panel1.Name = "Panel1";
			global::System.Windows.Forms.Control arg_AD0_0 = this.Panel1;
			size = new global::System.Drawing.Size(531, 52);
			arg_AD0_0.Size = size;
			this.Panel1.TabIndex = 52;
			this.Panel2.BackColor = global::System.Drawing.Color.Black;
			this.Panel2.Controls.Add(this.TextBox1);
			this.Panel2.Controls.Add(this.Panel1);
			this.Panel2.Controls.Add(this.P1);
			this.Panel2.Dock = global::System.Windows.Forms.DockStyle.Fill;
			global::System.Windows.Forms.Control arg_B50_0 = this.Panel2;
			location = new global::System.Drawing.Point(0, 0);
			arg_B50_0.Location = location;
			this.Panel2.Name = "Panel2";
			global::System.Windows.Forms.Control arg_B7D_0 = this.Panel2;
			size = new global::System.Drawing.Size(610, 379);
			arg_B7D_0.Size = size;
			this.Panel2.TabIndex = 53;
			this.TextBox1.Anchor = global::System.Windows.Forms.AnchorStyles.None;
			this.TextBox1.BackColor = global::System.Drawing.Color.MediumBlue;
			this.TextBox1.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.TextBox1.Font = new global::System.Drawing.Font("Arial", 14f);
			this.TextBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_BF9_0 = this.TextBox1;
			location = new global::System.Drawing.Point(139, 135);
			arg_BF9_0.Location = location;
			this.TextBox1.Multiline = true;
			this.TextBox1.Name = "TextBox1";
			this.TextBox1.ReadOnly = true;
			global::System.Windows.Forms.Control arg_C3B_0 = this.TextBox1;
			size = new global::System.Drawing.Size(332, 71);
			arg_C3B_0.Size = size;
			this.TextBox1.TabIndex = 54;
			this.TextBox1.Text = "\r\nCtrl+O for Hide or Show Options.\r\n           \r\n";
			this.TextBox1.TextAlign = global::System.Windows.Forms.HorizontalAlignment.Center;
			this.Timer2.Interval = 5000;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.FromArgb(10, 10, 10);
			size = new global::System.Drawing.Size(610, 379);
			this.ClientSize = size;
			this.Controls.Add(this.Panel2);
			this.Controls.Add(this.Button2);
			this.Font = new global::System.Drawing.Font("Arial", 8.25f);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.KeyPreview = true;
			this.Name = "FDesktop";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			((global::System.ComponentModel.ISupportInitialize)this.C).EndInit();
			((global::System.ComponentModel.ISupportInitialize)this.P1).EndInit();
			this.ContextMenuStrip1.ResumeLayout(false);
			this.Panel1.ResumeLayout(false);
			this.Panel1.PerformLayout();
			this.Panel2.ResumeLayout(false);
			this.Panel2.PerformLayout();
			this.ResumeLayout(false);
		}

		// Token: 0x0400002B RID: 43
		private global::System.ComponentModel.IContainer components;
	}
}
