namespace NINGALINET
{
	// Token: 0x02000014 RID: 20
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmFlood : global::System.Windows.Forms.Form
	{
		// Token: 0x06000460 RID: 1120 RVA: 0x00028240 File Offset: 0x00026440
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

		// Token: 0x06000461 RID: 1121 RVA: 0x00028284 File Offset: 0x00026484
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.TextBox1 = new global::System.Windows.Forms.TextBox();
			this.ComboBox1 = new global::System.Windows.Forms.ComboBox();
			this.NumericUpDown1 = new global::System.Windows.Forms.NumericUpDown();
			this.Label1 = new global::System.Windows.Forms.Label();
			this.Label2 = new global::System.Windows.Forms.Label();
			this.Label3 = new global::System.Windows.Forms.Label();
			this.NumericUpDown2 = new global::System.Windows.Forms.NumericUpDown();
			this.Button2 = new global::System.Windows.Forms.Button();
			this.Label4 = new global::System.Windows.Forms.Label();
			this.sl = new global::System.Windows.Forms.Label();
			((global::System.ComponentModel.ISupportInitialize)this.NumericUpDown1).BeginInit();
			((global::System.ComponentModel.ISupportInitialize)this.NumericUpDown2).BeginInit();
			this.SuspendLayout();
			this.TextBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.TextBox1.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.TextBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_CE_0 = this.TextBox1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(12, 30);
			arg_CE_0.Location = location;
			this.TextBox1.Name = "TextBox1";
			global::System.Windows.Forms.Control arg_F8_0 = this.TextBox1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(369, 20);
			arg_F8_0.Size = size;
			this.TextBox1.TabIndex = 3;
			this.TextBox1.Text = "127.0.0.1";
			this.ComboBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.ComboBox1.DropDownStyle = global::System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.ComboBox1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			this.ComboBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.ComboBox1.FormattingEnabled = true;
			this.ComboBox1.Items.AddRange(new object[]
			{
				"UDP",
				"TCP",
				"SYN"
			});
			global::System.Windows.Forms.Control arg_1A5_0 = this.ComboBox1;
			location = new global::System.Drawing.Point(110, 73);
			arg_1A5_0.Location = location;
			this.ComboBox1.Name = "ComboBox1";
			global::System.Windows.Forms.Control arg_1CC_0 = this.ComboBox1;
			size = new global::System.Drawing.Size(91, 21);
			arg_1CC_0.Size = size;
			this.ComboBox1.TabIndex = 9;
			this.NumericUpDown1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.NumericUpDown1.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.NumericUpDown1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_225_0 = this.NumericUpDown1;
			location = new global::System.Drawing.Point(207, 74);
			arg_225_0.Location = location;
			this.NumericUpDown1.Name = "NumericUpDown1";
			global::System.Windows.Forms.Control arg_24C_0 = this.NumericUpDown1;
			size = new global::System.Drawing.Size(91, 20);
			arg_24C_0.Size = size;
			this.NumericUpDown1.TabIndex = 9;
			global::System.Windows.Forms.NumericUpDown arg_28A_0 = this.NumericUpDown1;
			decimal num = new decimal(new int[]
			{
				1,
				0,
				0,
				0
			});
			arg_28A_0.Value = num;
			this.Label1.AutoSize = true;
			global::System.Windows.Forms.Control arg_2AD_0 = this.Label1;
			location = new global::System.Drawing.Point(107, 58);
			arg_2AD_0.Location = location;
			this.Label1.Name = "Label1";
			global::System.Windows.Forms.Control arg_2D4_0 = this.Label1;
			size = new global::System.Drawing.Size(43, 13);
			arg_2D4_0.Size = size;
			this.Label1.TabIndex = 5;
			this.Label1.Text = "Method";
			this.Label2.AutoSize = true;
			global::System.Windows.Forms.Control arg_316_0 = this.Label2;
			location = new global::System.Drawing.Point(204, 58);
			arg_316_0.Location = location;
			this.Label2.Name = "Label2";
			global::System.Windows.Forms.Control arg_33D_0 = this.Label2;
			size = new global::System.Drawing.Size(41, 13);
			arg_33D_0.Size = size;
			this.Label2.TabIndex = 9;
			this.Label2.Text = "Thread";
			this.Label3.AutoSize = true;
			global::System.Windows.Forms.Control arg_37D_0 = this.Label3;
			location = new global::System.Drawing.Point(10, 58);
			arg_37D_0.Location = location;
			this.Label3.Name = "Label3";
			global::System.Windows.Forms.Control arg_3A4_0 = this.Label3;
			size = new global::System.Drawing.Size(26, 13);
			arg_3A4_0.Size = size;
			this.Label3.TabIndex = 11;
			this.Label3.Text = "Port";
			this.NumericUpDown2.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.NumericUpDown2.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.NumericUpDown2.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_40A_0 = this.NumericUpDown2;
			location = new global::System.Drawing.Point(13, 74);
			arg_40A_0.Location = location;
			global::System.Windows.Forms.NumericUpDown arg_43F_0 = this.NumericUpDown2;
			num = new decimal(new int[]
			{
				9999,
				0,
				0,
				0
			});
			arg_43F_0.Maximum = num;
			this.NumericUpDown2.Name = "NumericUpDown2";
			global::System.Windows.Forms.Control arg_466_0 = this.NumericUpDown2;
			size = new global::System.Drawing.Size(91, 20);
			arg_466_0.Size = size;
			this.NumericUpDown2.TabIndex = 10;
			global::System.Windows.Forms.NumericUpDown arg_4A5_0 = this.NumericUpDown2;
			num = new decimal(new int[]
			{
				80,
				0,
				0,
				0
			});
			arg_4A5_0.Value = num;
			this.Button2.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button2.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_4E1_0 = this.Button2;
			location = new global::System.Drawing.Point(306, 58);
			arg_4E1_0.Location = location;
			this.Button2.Name = "Button2";
			global::System.Windows.Forms.Control arg_508_0 = this.Button2;
			size = new global::System.Drawing.Size(75, 39);
			arg_508_0.Size = size;
			this.Button2.TabIndex = 14;
			this.Button2.Text = "Start";
			this.Button2.UseVisualStyleBackColor = false;
			this.Label4.AutoSize = true;
			global::System.Windows.Forms.Control arg_554_0 = this.Label4;
			location = new global::System.Drawing.Point(9, 14);
			arg_554_0.Location = location;
			this.Label4.Name = "Label4";
			global::System.Windows.Forms.Control arg_57B_0 = this.Label4;
			size = new global::System.Drawing.Size(44, 13);
			arg_57B_0.Size = size;
			this.Label4.TabIndex = 15;
			this.Label4.Text = "URL/IP";
			this.sl.Anchor = (global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left);
			this.sl.AutoSize = true;
			global::System.Windows.Forms.Control arg_5C7_0 = this.sl;
			location = new global::System.Drawing.Point(12, 108);
			arg_5C7_0.Location = location;
			this.sl.Name = "sl";
			global::System.Windows.Forms.Control arg_5EE_0 = this.sl;
			size = new global::System.Drawing.Size(13, 13);
			arg_5EE_0.Size = size;
			this.sl.TabIndex = 16;
			this.sl.Text = "..";
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(395, 130);
			this.ClientSize = size;
			this.Controls.Add(this.sl);
			this.Controls.Add(this.Label4);
			this.Controls.Add(this.TextBox1);
			this.Controls.Add(this.Label3);
			this.Controls.Add(this.NumericUpDown2);
			this.Controls.Add(this.NumericUpDown1);
			this.Controls.Add(this.Button2);
			this.Controls.Add(this.Label2);
			this.Controls.Add(this.ComboBox1);
			this.Controls.Add(this.Label1);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "FrmFlood";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Flood";
			((global::System.ComponentModel.ISupportInitialize)this.NumericUpDown1).EndInit();
			((global::System.ComponentModel.ISupportInitialize)this.NumericUpDown2).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x0400020E RID: 526
		private global::System.ComponentModel.IContainer components;
	}
}
