namespace NINGALINET
{
	// Token: 0x02000024 RID: 36
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmShell : global::System.Windows.Forms.Form
	{
		// Token: 0x06000726 RID: 1830 RVA: 0x0003A064 File Offset: 0x00038264
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

		// Token: 0x06000727 RID: 1831 RVA: 0x0003A0A8 File Offset: 0x000382A8
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			this.T2 = new global::System.Windows.Forms.TextBox();
			this.T1 = new global::System.Windows.Forms.RichTextBox();
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.SuspendLayout();
			this.T2.BackColor = global::System.Drawing.Color.Black;
			this.T2.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.T2.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.T2.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_84_0 = this.T2;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 342);
			arg_84_0.Location = location;
			this.T2.Name = "T2";
			global::System.Windows.Forms.Control arg_AE_0 = this.T2;
			global::System.Drawing.Size size = new global::System.Drawing.Size(584, 20);
			arg_AE_0.Size = size;
			this.T2.TabIndex = 0;
			this.T1.BackColor = global::System.Drawing.Color.Black;
			this.T1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.T1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.T1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_107_0 = this.T1;
			location = new global::System.Drawing.Point(0, 0);
			arg_107_0.Location = location;
			this.T1.Name = "T1";
			global::System.Windows.Forms.Control arg_134_0 = this.T1;
			size = new global::System.Drawing.Size(584, 342);
			arg_134_0.Size = size;
			this.T1.TabIndex = 1;
			this.T1.Text = global::NINGALINET.My.Resources.Resources.notf;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.T1);
			this.Controls.Add(this.T2);
			this.Name = "FrmShell";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "shl";
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x0400034E RID: 846
		private global::System.ComponentModel.IContainer components;
	}
}
