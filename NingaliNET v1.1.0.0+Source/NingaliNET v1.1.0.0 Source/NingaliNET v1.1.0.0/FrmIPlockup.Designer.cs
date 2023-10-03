namespace NINGALINET
{
	// Token: 0x0200001A RID: 26
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmIPlockup : global::System.Windows.Forms.Form
	{
		// Token: 0x060005E0 RID: 1504 RVA: 0x00032550 File Offset: 0x00030750
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

		// Token: 0x060005E1 RID: 1505 RVA: 0x00032594 File Offset: 0x00030794
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmIPlockup));
			this.Button1 = new global::System.Windows.Forms.Button();
			this.PictureBox1 = new global::System.Windows.Forms.PictureBox();
			this.ListBox1 = new global::System.Windows.Forms.ListBox();
			((global::System.ComponentModel.ISupportInitialize)this.PictureBox1).BeginInit();
			this.SuspendLayout();
			this.Button1.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button1.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.Button1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			this.Button1.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.Button1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_B1_0 = this.Button1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 349);
			arg_B1_0.Location = location;
			this.Button1.Name = "Button1";
			global::System.Windows.Forms.Control arg_DB_0 = this.Button1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(594, 23);
			arg_DB_0.Size = size;
			this.Button1.TabIndex = 44;
			this.Button1.Text = "Refresh";
			this.Button1.UseVisualStyleBackColor = false;
			this.PictureBox1.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.PictureBox1.Image = global::NINGALINET.My.Resources.Resources.map;
			global::System.Windows.Forms.Control arg_139_0 = this.PictureBox1;
			location = new global::System.Drawing.Point(0, 186);
			arg_139_0.Location = location;
			this.PictureBox1.Name = "PictureBox1";
			global::System.Windows.Forms.Control arg_166_0 = this.PictureBox1;
			size = new global::System.Drawing.Size(594, 163);
			arg_166_0.Size = size;
			this.PictureBox1.SizeMode = global::System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.PictureBox1.TabIndex = 45;
			this.PictureBox1.TabStop = false;
			this.ListBox1.BackColor = global::System.Drawing.Color.Black;
			this.ListBox1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.ListBox1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.ListBox1.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.ListBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.ListBox1.FormattingEnabled = true;
			this.ListBox1.ItemHeight = 14;
			global::System.Windows.Forms.Control arg_20E_0 = this.ListBox1;
			location = new global::System.Drawing.Point(0, 0);
			arg_20E_0.Location = location;
			this.ListBox1.Name = "ListBox1";
			global::System.Windows.Forms.Control arg_23B_0 = this.ListBox1;
			size = new global::System.Drawing.Size(594, 186);
			arg_23B_0.Size = size;
			this.ListBox1.TabIndex = 46;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(594, 372);
			this.ClientSize = size;
			this.Controls.Add(this.ListBox1);
			this.Controls.Add(this.PictureBox1);
			this.Controls.Add(this.Button1);
			this.FormBorderStyle = global::System.Windows.Forms.FormBorderStyle.FixedSingle;
			this.Icon = (global::System.Drawing.Icon)componentResourceManager.GetObject("$this.Icon");
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "FrmIPlockup";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			((global::System.ComponentModel.ISupportInitialize)this.PictureBox1).EndInit();
			this.ResumeLayout(false);
		}

		// Token: 0x040002B0 RID: 688
		private global::System.ComponentModel.IContainer components;
	}
}
