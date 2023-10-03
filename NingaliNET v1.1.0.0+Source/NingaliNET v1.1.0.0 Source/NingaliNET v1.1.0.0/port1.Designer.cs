namespace NINGALINET
{
	// Token: 0x0200001E RID: 30
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class port1 : global::System.Windows.Forms.Form
	{
		// Token: 0x0600065D RID: 1629 RVA: 0x0003575C File Offset: 0x0003395C
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

		// Token: 0x0600065E RID: 1630 RVA: 0x000357A0 File Offset: 0x000339A0
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.TextBox1 = new global::System.Windows.Forms.TextBox();
			this.Button1 = new global::System.Windows.Forms.Button();
			this.Label1 = new global::System.Windows.Forms.Label();
			this.Button2 = new global::System.Windows.Forms.Button();
			this.CheckBox1 = new global::System.Windows.Forms.CheckBox();
			this.SuspendLayout();
			this.TextBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.TextBox1.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.TextBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_81_0 = this.TextBox1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(85, 12);
			arg_81_0.Location = location;
			this.TextBox1.Name = "TextBox1";
			global::System.Windows.Forms.Control arg_A8_0 = this.TextBox1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(118, 20);
			arg_A8_0.Size = size;
			this.TextBox1.TabIndex = 0;
			this.TextBox1.Text = "1604";
			this.TextBox1.TextAlign = global::System.Windows.Forms.HorizontalAlignment.Center;
			this.Button1.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_109_0 = this.Button1;
			location = new global::System.Drawing.Point(121, 61);
			arg_109_0.Location = location;
			this.Button1.Name = "Button1";
			global::System.Windows.Forms.Control arg_130_0 = this.Button1;
			size = new global::System.Drawing.Size(85, 22);
			arg_130_0.Size = size;
			this.Button1.TabIndex = 1;
			this.Button1.Text = "Start";
			this.Button1.UseVisualStyleBackColor = false;
			this.Label1.AutoSize = true;
			global::System.Windows.Forms.Control arg_17B_0 = this.Label1;
			location = new global::System.Drawing.Point(16, 16);
			arg_17B_0.Location = location;
			this.Label1.Name = "Label1";
			global::System.Windows.Forms.Control arg_1A2_0 = this.Label1;
			size = new global::System.Drawing.Size(63, 13);
			arg_1A2_0.Size = size;
			this.Label1.TabIndex = 2;
			this.Label1.Text = "Listen Port :";
			this.Button2.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button2.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			global::System.Windows.Forms.Control arg_1F7_0 = this.Button2;
			location = new global::System.Drawing.Point(30, 61);
			arg_1F7_0.Location = location;
			this.Button2.Name = "Button2";
			global::System.Windows.Forms.Control arg_21E_0 = this.Button2;
			size = new global::System.Drawing.Size(85, 22);
			arg_21E_0.Size = size;
			this.Button2.TabIndex = 3;
			this.Button2.Text = "Cancel";
			this.Button2.UseVisualStyleBackColor = false;
			this.CheckBox1.AutoSize = true;
			global::System.Windows.Forms.Control arg_269_0 = this.CheckBox1;
			location = new global::System.Drawing.Point(19, 38);
			arg_269_0.Location = location;
			this.CheckBox1.Name = "CheckBox1";
			global::System.Windows.Forms.Control arg_293_0 = this.CheckBox1;
			size = new global::System.Drawing.Size(190, 17);
			arg_293_0.Size = size;
			this.CheckBox1.TabIndex = 4;
			this.CheckBox1.Text = "Try to forward automaticaly (UPnP)";
			this.CheckBox1.UseVisualStyleBackColor = true;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(224, 93);
			this.ClientSize = size;
			this.Controls.Add(this.CheckBox1);
			this.Controls.Add(this.Button2);
			this.Controls.Add(this.Label1);
			this.Controls.Add(this.Button1);
			this.Controls.Add(this.TextBox1);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.FormBorderStyle = global::System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.KeyPreview = true;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "port1";
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "Add Listen Port";
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x040002F2 RID: 754
		private global::System.ComponentModel.IContainer components;
	}
}
