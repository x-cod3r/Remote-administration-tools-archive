namespace NINGALINET
{
	// Token: 0x02000022 RID: 34
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmScript : global::System.Windows.Forms.Form
	{
		// Token: 0x060006F3 RID: 1779 RVA: 0x00038FA8 File Offset: 0x000371A8
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

		// Token: 0x060006F4 RID: 1780 RVA: 0x00038FEC File Offset: 0x000371EC
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.Button1 = new global::System.Windows.Forms.Button();
			this.TextBox1 = new global::System.Windows.Forms.TextBox();
			this.SuspendLayout();
			this.Button1.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button1.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.Button1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_5E_0 = this.Button1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 338);
			arg_5E_0.Location = location;
			this.Button1.Name = "Button1";
			global::System.Windows.Forms.Control arg_88_0 = this.Button1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(524, 25);
			arg_88_0.Size = size;
			this.Button1.TabIndex = 4;
			this.Button1.Text = "Run";
			this.Button1.UseVisualStyleBackColor = false;
			this.TextBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.TextBox1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.TextBox1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.TextBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_103_0 = this.TextBox1;
			location = new global::System.Drawing.Point(0, 0);
			arg_103_0.Location = location;
			this.TextBox1.Multiline = true;
			this.TextBox1.Name = "TextBox1";
			global::System.Windows.Forms.Control arg_13C_0 = this.TextBox1;
			size = new global::System.Drawing.Size(524, 338);
			arg_13C_0.Size = size;
			this.TextBox1.TabIndex = 6;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(524, 363);
			this.ClientSize = size;
			this.Controls.Add(this.TextBox1);
			this.Controls.Add(this.Button1);
			this.Font = new global::System.Drawing.Font("Arial", 8.25f);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Name = "FrmScript";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Script";
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x04000333 RID: 819
		private global::System.ComponentModel.IContainer components;
	}
}
