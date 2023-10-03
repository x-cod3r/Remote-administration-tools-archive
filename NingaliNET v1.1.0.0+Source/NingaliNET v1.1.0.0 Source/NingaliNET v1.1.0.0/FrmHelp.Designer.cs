namespace NINGALINET
{
	// Token: 0x02000016 RID: 22
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmHelp : global::System.Windows.Forms.Form
	{
		// Token: 0x0600057B RID: 1403 RVA: 0x0003017C File Offset: 0x0002E37C
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

		// Token: 0x0600057C RID: 1404 RVA: 0x000301C0 File Offset: 0x0002E3C0
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmHelp));
			this.RichTextBox1 = new global::System.Windows.Forms.RichTextBox();
			this.SuspendLayout();
			this.RichTextBox1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.RichTextBox1.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			global::System.Windows.Forms.Control arg_5A_0 = this.RichTextBox1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 0);
			arg_5A_0.Location = location;
			this.RichTextBox1.Name = "RichTextBox1";
			this.RichTextBox1.ReadOnly = true;
			global::System.Windows.Forms.Control arg_93_0 = this.RichTextBox1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(315, 372);
			arg_93_0.Size = size;
			this.RichTextBox1.TabIndex = 2;
			this.RichTextBox1.Text = componentResourceManager.GetString("RichTextBox1.Text");
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			size = new global::System.Drawing.Size(315, 372);
			this.ClientSize = size;
			this.Controls.Add(this.RichTextBox1);
			this.FormBorderStyle = global::System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "Destek";
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Support";
			this.ResumeLayout(false);
		}

		// Token: 0x04000280 RID: 640
		private global::System.ComponentModel.IContainer components;
	}
}
