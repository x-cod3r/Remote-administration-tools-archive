namespace NINGALINET
{
	// Token: 0x02000012 RID: 18
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmEditHost : global::System.Windows.Forms.Form
	{
		// Token: 0x060003A4 RID: 932 RVA: 0x0002321C File Offset: 0x0002141C
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

		// Token: 0x060003A5 RID: 933 RVA: 0x00023260 File Offset: 0x00021460
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmEditHost));
			this.TextBox1 = new global::System.Windows.Forms.TextBox();
			this.Button1 = new global::System.Windows.Forms.Button();
			this.SuspendLayout();
			this.TextBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.TextBox1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.TextBox1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.TextBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_7A_0 = this.TextBox1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 0);
			arg_7A_0.Location = location;
			this.TextBox1.Multiline = true;
			this.TextBox1.Name = "TextBox1";
			global::System.Windows.Forms.Control arg_B3_0 = this.TextBox1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(534, 320);
			arg_B3_0.Size = size;
			this.TextBox1.TabIndex = 8;
			this.Button1.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button1.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.Button1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			this.Button1.Image = (global::System.Drawing.Image)componentResourceManager.GetObject("Button1.Image");
			this.Button1.ImageAlign = global::System.Drawing.ContentAlignment.MiddleLeft;
			global::System.Windows.Forms.Control arg_12E_0 = this.Button1;
			location = new global::System.Drawing.Point(0, 320);
			arg_12E_0.Location = location;
			this.Button1.Name = "Button1";
			global::System.Windows.Forms.Control arg_158_0 = this.Button1;
			size = new global::System.Drawing.Size(534, 27);
			arg_158_0.Size = size;
			this.Button1.TabIndex = 7;
			this.Button1.Text = "Save";
			this.Button1.UseVisualStyleBackColor = false;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(534, 347);
			this.ClientSize = size;
			this.Controls.Add(this.TextBox1);
			this.Controls.Add(this.Button1);
			this.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Name = "FrmEditHost";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "FrmEditHost";
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x040001BB RID: 443
		private global::System.ComponentModel.IContainer components;
	}
}
