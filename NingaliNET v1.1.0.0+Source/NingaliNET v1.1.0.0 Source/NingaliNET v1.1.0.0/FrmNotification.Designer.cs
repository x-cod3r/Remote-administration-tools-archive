namespace NINGALINET
{
	// Token: 0x0200001D RID: 29
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmNotification : global::System.Windows.Forms.Form
	{
		// Token: 0x06000651 RID: 1617 RVA: 0x000351FC File Offset: 0x000333FC
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

		// Token: 0x06000652 RID: 1618 RVA: 0x00035240 File Offset: 0x00033440
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmNotification));
			this.Button10 = new global::System.Windows.Forms.Button();
			this.Pp1 = new global::NINGALINET.Pp1();
			((global::System.ComponentModel.ISupportInitialize)this.Pp1).BeginInit();
			this.SuspendLayout();
			this.Button10.BackColor = global::System.Drawing.Color.FromArgb(10, 10, 10);
			this.Button10.Cursor = global::System.Windows.Forms.Cursors.Hand;
			this.Button10.FlatAppearance.BorderColor = global::System.Drawing.Color.FromArgb(10, 10, 10);
			this.Button10.FlatAppearance.BorderSize = 0;
			this.Button10.FlatAppearance.MouseDownBackColor = global::System.Drawing.Color.FromArgb(192, 0, 0);
			this.Button10.FlatAppearance.MouseOverBackColor = global::System.Drawing.Color.FromArgb(192, 0, 0);
			this.Button10.FlatStyle = global::System.Windows.Forms.FlatStyle.Flat;
			this.Button10.Image = (global::System.Drawing.Image)componentResourceManager.GetObject("Button10.Image");
			global::System.Windows.Forms.Control arg_F8_0 = this.Button10;
			global::System.Drawing.Point location = new global::System.Drawing.Point(1, 1);
			arg_F8_0.Location = location;
			this.Button10.Name = "Button10";
			global::System.Windows.Forms.Control arg_11F_0 = this.Button10;
			global::System.Drawing.Size size = new global::System.Drawing.Size(60, 76);
			arg_11F_0.Size = size;
			this.Button10.TabIndex = 50;
			this.Button10.TextAlign = global::System.Drawing.ContentAlignment.MiddleRight;
			this.Button10.UseVisualStyleBackColor = false;
			this.Pp1.BackColor = global::System.Drawing.Color.FromArgb(10, 10, 10);
			global::System.Windows.Forms.Control arg_171_0 = this.Pp1;
			location = new global::System.Drawing.Point(61, 1);
			arg_171_0.Location = location;
			this.Pp1.Name = "Pp1";
			global::System.Windows.Forms.Control arg_19B_0 = this.Pp1;
			size = new global::System.Drawing.Size(211, 76);
			arg_19B_0.Size = size;
			this.Pp1.TabIndex = 51;
			this.Pp1.TabStop = false;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.RoyalBlue;
			size = new global::System.Drawing.Size(272, 77);
			this.ClientSize = size;
			this.Controls.Add(this.Pp1);
			this.Controls.Add(this.Button10);
			this.FormBorderStyle = global::System.Windows.Forms.FormBorderStyle.None;
			this.Name = "FrmNotification";
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.Text = "FrmNotification";
			this.TopMost = true;
			this.TransparencyKey = global::System.Drawing.Color.Fuchsia;
			((global::System.ComponentModel.ISupportInitialize)this.Pp1).EndInit();
			this.ResumeLayout(false);
		}

		// Token: 0x040002EB RID: 747
		private global::System.ComponentModel.IContainer components;
	}
}
