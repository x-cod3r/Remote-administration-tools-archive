namespace NINGALINET
{
	// Token: 0x02000020 RID: 32
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmRegEdit : global::System.Windows.Forms.Form
	{
		// Token: 0x060006A7 RID: 1703 RVA: 0x000370EC File Offset: 0x000352EC
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

		// Token: 0x060006A8 RID: 1704 RVA: 0x00037130 File Offset: 0x00035330
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.ComboBox1 = new global::System.Windows.Forms.ComboBox();
			this.Button1 = new global::System.Windows.Forms.Button();
			this.TextBox3 = new global::System.Windows.Forms.TextBox();
			this.TextBox1 = new global::System.Windows.Forms.TextBox();
			this.Label3 = new global::System.Windows.Forms.Label();
			this.Label2 = new global::System.Windows.Forms.Label();
			this.Label1 = new global::System.Windows.Forms.Label();
			this.SuspendLayout();
			this.ComboBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.ComboBox1.DropDownStyle = global::System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.ComboBox1.FlatStyle = global::System.Windows.Forms.FlatStyle.Flat;
			this.ComboBox1.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Bold);
			this.ComboBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.ComboBox1.FormattingEnabled = true;
			this.ComboBox1.Items.AddRange(new object[]
			{
				"Binary",
				"DWord",
				"ExpandString",
				"MultiString",
				"QWord",
				"String"
			});
			global::System.Windows.Forms.Control arg_115_0 = this.ComboBox1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(236, 19);
			arg_115_0.Location = location;
			this.ComboBox1.Name = "ComboBox1";
			global::System.Windows.Forms.Control arg_13F_0 = this.ComboBox1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(143, 22);
			arg_13F_0.Size = size;
			this.ComboBox1.TabIndex = 41;
			this.Button1.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			this.Button1.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Bold);
			global::System.Windows.Forms.Control arg_1A0_0 = this.Button1;
			location = new global::System.Drawing.Point(12, 115);
			arg_1A0_0.Location = location;
			this.Button1.Name = "Button1";
			global::System.Windows.Forms.Control arg_1CA_0 = this.Button1;
			size = new global::System.Drawing.Size(368, 25);
			arg_1CA_0.Size = size;
			this.Button1.TabIndex = 40;
			this.Button1.Text = "Save";
			this.Button1.TextImageRelation = global::System.Windows.Forms.TextImageRelation.TextBeforeImage;
			this.Button1.UseVisualStyleBackColor = false;
			this.TextBox3.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.TextBox3.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.TextBox3.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Bold);
			this.TextBox3.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_263_0 = this.TextBox3;
			location = new global::System.Drawing.Point(12, 59);
			arg_263_0.Location = location;
			this.TextBox3.Multiline = true;
			this.TextBox3.Name = "TextBox3";
			global::System.Windows.Forms.Control arg_299_0 = this.TextBox3;
			size = new global::System.Drawing.Size(368, 50);
			arg_299_0.Size = size;
			this.TextBox3.TabIndex = 39;
			this.TextBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.TextBox1.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.TextBox1.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Bold);
			this.TextBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_30A_0 = this.TextBox1;
			location = new global::System.Drawing.Point(12, 20);
			arg_30A_0.Location = location;
			this.TextBox1.Name = "TextBox1";
			global::System.Windows.Forms.Control arg_334_0 = this.TextBox1;
			size = new global::System.Drawing.Size(218, 20);
			arg_334_0.Size = size;
			this.TextBox1.TabIndex = 38;
			this.Label3.AutoSize = true;
			this.Label3.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Bold);
			global::System.Windows.Forms.Control arg_37F_0 = this.Label3;
			location = new global::System.Drawing.Point(10, 44);
			arg_37F_0.Location = location;
			this.Label3.Name = "Label3";
			global::System.Windows.Forms.Control arg_3A6_0 = this.Label3;
			size = new global::System.Drawing.Size(43, 14);
			arg_3A6_0.Size = size;
			this.Label3.TabIndex = 37;
			this.Label3.Text = "Value :";
			this.Label2.AutoSize = true;
			this.Label2.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Bold);
			global::System.Windows.Forms.Control arg_403_0 = this.Label2;
			location = new global::System.Drawing.Point(233, 5);
			arg_403_0.Location = location;
			this.Label2.Name = "Label2";
			global::System.Windows.Forms.Control arg_42A_0 = this.Label2;
			size = new global::System.Drawing.Size(39, 14);
			arg_42A_0.Size = size;
			this.Label2.TabIndex = 36;
			this.Label2.Text = "Type :";
			this.Label1.AutoSize = true;
			this.Label1.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Bold);
			global::System.Windows.Forms.Control arg_484_0 = this.Label1;
			location = new global::System.Drawing.Point(9, 5);
			arg_484_0.Location = location;
			this.Label1.Name = "Label1";
			global::System.Windows.Forms.Control arg_4AB_0 = this.Label1;
			size = new global::System.Drawing.Size(44, 14);
			arg_4AB_0.Size = size;
			this.Label1.TabIndex = 35;
			this.Label1.Text = "Name :";
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(388, 148);
			this.ClientSize = size;
			this.Controls.Add(this.ComboBox1);
			this.Controls.Add(this.Button1);
			this.Controls.Add(this.TextBox3);
			this.Controls.Add(this.TextBox1);
			this.Controls.Add(this.Label3);
			this.Controls.Add(this.Label2);
			this.Controls.Add(this.Label1);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.FormBorderStyle = global::System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "FrmRegEdit";
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Regedit Editor";
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x04000311 RID: 785
		private global::System.ComponentModel.IContainer components;
	}
}
