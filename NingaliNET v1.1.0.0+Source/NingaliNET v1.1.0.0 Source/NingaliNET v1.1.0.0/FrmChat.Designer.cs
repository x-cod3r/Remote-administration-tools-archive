namespace NINGALINET
{
	// Token: 0x0200000E RID: 14
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmChat : global::System.Windows.Forms.Form
	{
		// Token: 0x0600033F RID: 831 RVA: 0x000209DC File Offset: 0x0001EBDC
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

		// Token: 0x06000340 RID: 832 RVA: 0x00020A20 File Offset: 0x0001EC20
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.T1 = new global::System.Windows.Forms.RichTextBox();
			this.T2 = new global::System.Windows.Forms.TextBox();
			this.SplitContainer1 = new global::System.Windows.Forms.SplitContainer();
			this.SplitContainer1.Panel1.SuspendLayout();
			this.SplitContainer1.Panel2.SuspendLayout();
			this.SplitContainer1.SuspendLayout();
			this.SuspendLayout();
			this.T1.BackColor = global::System.Drawing.Color.Black;
			this.T1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.T1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.T1.Font = new global::System.Drawing.Font("Arial", 8.25f);
			this.T1.ForeColor = global::System.Drawing.Color.RoyalBlue;
			global::System.Windows.Forms.Control arg_D0_0 = this.T1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 0);
			arg_D0_0.Location = location;
			this.T1.Name = "T1";
			this.T1.ReadOnly = true;
			global::System.Windows.Forms.Control arg_109_0 = this.T1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(388, 236);
			arg_109_0.Size = size;
			this.T1.TabIndex = 3;
			this.T1.Text = global::NINGALINET.My.Resources.Resources.notf;
			this.T2.BackColor = global::System.Drawing.Color.Black;
			this.T2.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.T2.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.T2.Font = new global::System.Drawing.Font("Arial", 8.25f);
			this.T2.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_18C_0 = this.T2;
			location = new global::System.Drawing.Point(0, 0);
			arg_18C_0.Location = location;
			this.T2.Multiline = true;
			this.T2.Name = "T2";
			global::System.Windows.Forms.Control arg_1C2_0 = this.T2;
			size = new global::System.Drawing.Size(388, 29);
			arg_1C2_0.Size = size;
			this.T2.TabIndex = 0;
			this.SplitContainer1.BackColor = global::System.Drawing.Color.WhiteSmoke;
			this.SplitContainer1.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.SplitContainer1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			global::System.Windows.Forms.Control arg_20B_0 = this.SplitContainer1;
			location = new global::System.Drawing.Point(0, 0);
			arg_20B_0.Location = location;
			this.SplitContainer1.Name = "SplitContainer1";
			this.SplitContainer1.Orientation = global::System.Windows.Forms.Orientation.Horizontal;
			this.SplitContainer1.Panel1.Controls.Add(this.T1);
			this.SplitContainer1.Panel2.BackColor = global::System.Drawing.Color.DimGray;
			this.SplitContainer1.Panel2.Controls.Add(this.T2);
			global::System.Windows.Forms.Control arg_28F_0 = this.SplitContainer1;
			size = new global::System.Drawing.Size(390, 270);
			arg_28F_0.Size = size;
			this.SplitContainer1.SplitterDistance = 238;
			this.SplitContainer1.SplitterWidth = 1;
			this.SplitContainer1.TabIndex = 4;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			size = new global::System.Drawing.Size(390, 270);
			this.ClientSize = size;
			this.Controls.Add(this.SplitContainer1);
			this.Name = "FrmChat";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "chat";
			this.SplitContainer1.Panel1.ResumeLayout(false);
			this.SplitContainer1.Panel2.ResumeLayout(false);
			this.SplitContainer1.Panel2.PerformLayout();
			this.SplitContainer1.ResumeLayout(false);
			this.ResumeLayout(false);
		}

		// Token: 0x04000185 RID: 389
		private global::System.ComponentModel.IContainer components;
	}
}
