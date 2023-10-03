namespace NINGALINET
{
	// Token: 0x0200000F RID: 15
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmClipboar : global::System.Windows.Forms.Form
	{
		// Token: 0x06000351 RID: 849 RVA: 0x00021384 File Offset: 0x0001F584
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

		// Token: 0x06000352 RID: 850 RVA: 0x000213C8 File Offset: 0x0001F5C8
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.TextBox1 = new global::System.Windows.Forms.TextBox();
			this.Button1 = new global::System.Windows.Forms.Button();
			this.Button2 = new global::System.Windows.Forms.Button();
			this.Button3 = new global::System.Windows.Forms.Button();
			this.Button4 = new global::System.Windows.Forms.Button();
			this.SuspendLayout();
			this.TextBox1.Anchor = (global::System.Windows.Forms.AnchorStyles.Top | global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.TextBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.TextBox1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.TextBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_8C_0 = this.TextBox1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 0);
			arg_8C_0.Location = location;
			this.TextBox1.Multiline = true;
			this.TextBox1.Name = "TextBox1";
			global::System.Windows.Forms.Control arg_C5_0 = this.TextBox1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(471, 259);
			arg_C5_0.Size = size;
			this.TextBox1.TabIndex = 10;
			this.Button1.Anchor = (global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.Button1.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_11A_0 = this.Button1;
			location = new global::System.Drawing.Point(0, 300);
			arg_11A_0.Location = location;
			this.Button1.Name = "Button1";
			global::System.Windows.Forms.Control arg_144_0 = this.Button1;
			size = new global::System.Drawing.Size(153, 29);
			arg_144_0.Size = size;
			this.Button1.TabIndex = 9;
			this.Button1.Text = "Get Clipboard (Server)";
			this.Button1.UseVisualStyleBackColor = false;
			this.Button2.Anchor = (global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.Button2.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button2.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_1B9_0 = this.Button2;
			location = new global::System.Drawing.Point(159, 300);
			arg_1B9_0.Location = location;
			this.Button2.Name = "Button2";
			global::System.Windows.Forms.Control arg_1E3_0 = this.Button2;
			size = new global::System.Drawing.Size(153, 29);
			arg_1E3_0.Size = size;
			this.Button2.TabIndex = 11;
			this.Button2.Text = "Clear Clipboard (Server)";
			this.Button2.UseVisualStyleBackColor = false;
			this.Button3.Anchor = (global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.Button3.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button3.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_254_0 = this.Button3;
			location = new global::System.Drawing.Point(0, 265);
			arg_254_0.Location = location;
			this.Button3.Name = "Button3";
			global::System.Windows.Forms.Control arg_27E_0 = this.Button3;
			size = new global::System.Drawing.Size(471, 29);
			arg_27E_0.Size = size;
			this.Button3.TabIndex = 12;
			this.Button3.Text = "Copy";
			this.Button3.UseVisualStyleBackColor = false;
			this.Button4.Anchor = (global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.Button4.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button4.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_2F3_0 = this.Button4;
			location = new global::System.Drawing.Point(318, 300);
			arg_2F3_0.Location = location;
			this.Button4.Name = "Button4";
			global::System.Windows.Forms.Control arg_31D_0 = this.Button4;
			size = new global::System.Drawing.Size(153, 29);
			arg_31D_0.Size = size;
			this.Button4.TabIndex = 13;
			this.Button4.Text = "Set Clipboard (Server)";
			this.Button4.UseVisualStyleBackColor = false;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(472, 329);
			this.ClientSize = size;
			this.Controls.Add(this.Button4);
			this.Controls.Add(this.Button3);
			this.Controls.Add(this.Button2);
			this.Controls.Add(this.TextBox1);
			this.Controls.Add(this.Button1);
			this.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Name = "FrmClipboar";
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "FrmClipboar";
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x0400018E RID: 398
		private global::System.ComponentModel.IContainer components;
	}
}
