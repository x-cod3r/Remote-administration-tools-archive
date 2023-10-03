namespace NINGALINET
{
	// Token: 0x0200001C RID: 28
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmMic : global::System.Windows.Forms.Form
	{
		// Token: 0x06000626 RID: 1574 RVA: 0x000342E0 File Offset: 0x000324E0
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

		// Token: 0x06000627 RID: 1575 RVA: 0x00034324 File Offset: 0x00032524
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			this.Label1 = new global::System.Windows.Forms.Label();
			this.ContextMenuStrip2 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.PlayToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.StopToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.RemoveToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.ContextMenuStrip1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.NumericUpDown1 = new global::System.Windows.Forms.NumericUpDown();
			this.StatusStrip1 = new global::System.Windows.Forms.StatusStrip();
			this.sl = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.Button1 = new global::System.Windows.Forms.Button();
			this.Panel1 = new global::System.Windows.Forms.Panel();
			this.ColumnHeader1 = new global::System.Windows.Forms.ColumnHeader();
			this.Lv1 = new global::NINGALINET.LV();
			this.ColumnHeader2 = new global::System.Windows.Forms.ColumnHeader();
			this.ContextMenuStrip2.SuspendLayout();
			((global::System.ComponentModel.ISupportInitialize)this.NumericUpDown1).BeginInit();
			this.StatusStrip1.SuspendLayout();
			this.Panel1.SuspendLayout();
			this.SuspendLayout();
			this.Label1.AutoSize = true;
			this.Label1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_11C_0 = this.Label1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(84, 12);
			arg_11C_0.Location = location;
			this.Label1.Name = "Label1";
			global::System.Windows.Forms.Control arg_143_0 = this.Label1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(27, 14);
			arg_143_0.Size = size;
			this.Label1.TabIndex = 2;
			this.Label1.Text = "Sec";
			this.ContextMenuStrip2.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.PlayToolStripMenuItem,
				this.StopToolStripMenuItem,
				this.AToolStripMenuItem,
				this.RemoveToolStripMenuItem
			});
			this.ContextMenuStrip2.Name = "ContextMenuStrip2";
			global::System.Windows.Forms.Control arg_1C2_0 = this.ContextMenuStrip2;
			size = new global::System.Drawing.Size(113, 76);
			arg_1C2_0.Size = size;
			this.PlayToolStripMenuItem.Name = "PlayToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1E9_0 = this.PlayToolStripMenuItem;
			size = new global::System.Drawing.Size(112, 22);
			arg_1E9_0.Size = size;
			this.PlayToolStripMenuItem.Text = "Play";
			this.StopToolStripMenuItem.Name = "StopToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_220_0 = this.StopToolStripMenuItem;
			size = new global::System.Drawing.Size(112, 22);
			arg_220_0.Size = size;
			this.StopToolStripMenuItem.Text = "Stop";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_256_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(109, 6);
			arg_256_0.Size = size;
			this.RemoveToolStripMenuItem.Name = "RemoveToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_27D_0 = this.RemoveToolStripMenuItem;
			size = new global::System.Drawing.Size(112, 22);
			arg_27D_0.Size = size;
			this.RemoveToolStripMenuItem.Text = "Remove";
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_2B3_0 = this.ContextMenuStrip1;
			size = new global::System.Drawing.Size(61, 4);
			arg_2B3_0.Size = size;
			this.NumericUpDown1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.NumericUpDown1.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.NumericUpDown1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_2FC_0 = this.NumericUpDown1;
			location = new global::System.Drawing.Point(121, 10);
			arg_2FC_0.Location = location;
			global::System.Windows.Forms.NumericUpDown arg_331_0 = this.NumericUpDown1;
			decimal num = new decimal(new int[]
			{
				10000,
				0,
				0,
				0
			});
			arg_331_0.Maximum = num;
			this.NumericUpDown1.Name = "NumericUpDown1";
			global::System.Windows.Forms.Control arg_358_0 = this.NumericUpDown1;
			size = new global::System.Drawing.Size(71, 20);
			arg_358_0.Size = size;
			this.NumericUpDown1.TabIndex = 4;
			global::System.Windows.Forms.NumericUpDown arg_396_0 = this.NumericUpDown1;
			num = new decimal(new int[]
			{
				10,
				0,
				0,
				0
			});
			arg_396_0.Value = num;
			this.StatusStrip1.BackColor = global::System.Drawing.Color.Black;
			this.StatusStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.sl
			});
			global::System.Windows.Forms.Control arg_3E0_0 = this.StatusStrip1;
			location = new global::System.Drawing.Point(0, 256);
			arg_3E0_0.Location = location;
			this.StatusStrip1.Name = "StatusStrip1";
			this.StatusStrip1.RenderMode = global::System.Windows.Forms.ToolStripRenderMode.Professional;
			global::System.Windows.Forms.Control arg_416_0 = this.StatusStrip1;
			size = new global::System.Drawing.Size(462, 24);
			arg_416_0.Size = size;
			this.StatusStrip1.TabIndex = 8;
			this.StatusStrip1.Text = "StatusStrip1";
			this.StatusStrip1.Visible = false;
			this.sl.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.sl.Name = "sl";
			global::System.Windows.Forms.ToolStripItem arg_475_0 = this.sl;
			size = new global::System.Drawing.Size(13, 19);
			arg_475_0.Size = size;
			this.sl.Text = "..";
			this.Button1.BackColor = global::System.Drawing.Color.FromArgb(20, 20, 20);
			this.Button1.FlatStyle = global::System.Windows.Forms.FlatStyle.Popup;
			this.Button1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_4CC_0 = this.Button1;
			location = new global::System.Drawing.Point(3, 6);
			arg_4CC_0.Location = location;
			this.Button1.Name = "Button1";
			global::System.Windows.Forms.Control arg_4F3_0 = this.Button1;
			size = new global::System.Drawing.Size(75, 25);
			arg_4F3_0.Size = size;
			this.Button1.TabIndex = 9;
			this.Button1.Text = "Start";
			this.Button1.UseVisualStyleBackColor = false;
			this.Panel1.Controls.Add(this.Button1);
			this.Panel1.Controls.Add(this.Label1);
			this.Panel1.Controls.Add(this.NumericUpDown1);
			this.Panel1.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			global::System.Windows.Forms.Control arg_583_0 = this.Panel1;
			location = new global::System.Drawing.Point(0, 326);
			arg_583_0.Location = location;
			this.Panel1.Name = "Panel1";
			global::System.Windows.Forms.Control arg_5AD_0 = this.Panel1;
			size = new global::System.Drawing.Size(584, 36);
			arg_5AD_0.Size = size;
			this.Panel1.TabIndex = 10;
			this.ColumnHeader1.Text = "Name";
			this.ColumnHeader1.Width = 63;
			this.Lv1.BackColor = global::System.Drawing.Color.Black;
			this.Lv1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.Lv1.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader1,
				this.ColumnHeader2
			});
			this.Lv1.ContextMenuStrip = this.ContextMenuStrip2;
			this.Lv1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.Lv1.Font = new global::System.Drawing.Font("Arial", 8f);
			this.Lv1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Lv1.FullRowSelect = true;
			this.Lv1.HeaderStyle = global::System.Windows.Forms.ColumnHeaderStyle.Nonclickable;
			global::System.Windows.Forms.Control arg_695_0 = this.Lv1;
			location = new global::System.Drawing.Point(0, 0);
			arg_695_0.Location = location;
			this.Lv1.Name = "Lv1";
			this.Lv1.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_6CE_0 = this.Lv1;
			size = new global::System.Drawing.Size(584, 326);
			arg_6CE_0.Size = size;
			this.Lv1.TabIndex = 11;
			this.Lv1.UseCompatibleStateImageBehavior = false;
			this.Lv1.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader2.Text = "DateTime";
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(7f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.Lv1);
			this.Controls.Add(this.Panel1);
			this.Controls.Add(this.StatusStrip1);
			this.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Bold, global::System.Drawing.GraphicsUnit.Point, 0);
			this.Name = "FrmMic";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "FMic";
			this.ContextMenuStrip2.ResumeLayout(false);
			((global::System.ComponentModel.ISupportInitialize)this.NumericUpDown1).EndInit();
			this.StatusStrip1.ResumeLayout(false);
			this.StatusStrip1.PerformLayout();
			this.Panel1.ResumeLayout(false);
			this.Panel1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x040002D4 RID: 724
		private global::System.ComponentModel.IContainer components;
	}
}
