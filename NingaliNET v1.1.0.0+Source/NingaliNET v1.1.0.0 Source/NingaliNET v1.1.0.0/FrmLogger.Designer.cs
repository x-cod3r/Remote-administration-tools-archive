namespace NINGALINET
{
	// Token: 0x0200001B RID: 27
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmLogger : global::System.Windows.Forms.Form
	{
		// Token: 0x060005EE RID: 1518 RVA: 0x00032E48 File Offset: 0x00031048
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

		// Token: 0x060005EF RID: 1519 RVA: 0x00032E8C File Offset: 0x0003108C
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmLogger));
			this.ContextMenuStrip1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.SaveAsToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.SelectAllToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.CopyToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.ToolStrip1 = new global::System.Windows.Forms.ToolStrip();
			this.ToolStripTextBox1 = new global::System.Windows.Forms.ToolStripTextBox();
			this.ToolStripButton1 = new global::System.Windows.Forms.ToolStripButton();
			this.ContextMenuStrip2 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.ToolStripMenuItem1 = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem1 = new global::System.Windows.Forms.ToolStripSeparator();
			this.DeleteToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.TextBox1 = new global::System.Windows.Forms.TextBox();
			this.T1 = new global::System.Windows.Forms.RichTextBox();
			this.ImageList1 = new global::System.Windows.Forms.ImageList(this.components);
			this.Lv1 = new global::NINGALINET.LV();
			this.ColumnHeader1 = new global::System.Windows.Forms.ColumnHeader();
			this.pr = new global::NINGALINET.CHProgressbar();
			this.sl = new global::System.Windows.Forms.Label();
			this.ContextMenuStrip1.SuspendLayout();
			this.ToolStrip1.SuspendLayout();
			this.ContextMenuStrip2.SuspendLayout();
			this.SuspendLayout();
			this.ContextMenuStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.RefreshToolStripMenuItem,
				this.AToolStripMenuItem,
				this.SaveAsToolStripMenuItem,
				this.SelectAllToolStripMenuItem,
				this.CopyToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_197_0 = this.ContextMenuStrip1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(123, 98);
			arg_197_0.Size = size;
			this.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1BE_0 = this.RefreshToolStripMenuItem;
			size = new global::System.Drawing.Size(122, 22);
			arg_1BE_0.Size = size;
			this.RefreshToolStripMenuItem.Text = "Refresh";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1F4_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(119, 6);
			arg_1F4_0.Size = size;
			this.SaveAsToolStripMenuItem.Name = "SaveAsToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_21B_0 = this.SaveAsToolStripMenuItem;
			size = new global::System.Drawing.Size(122, 22);
			arg_21B_0.Size = size;
			this.SaveAsToolStripMenuItem.Text = "Save As";
			this.SelectAllToolStripMenuItem.Name = "SelectAllToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_252_0 = this.SelectAllToolStripMenuItem;
			size = new global::System.Drawing.Size(122, 22);
			arg_252_0.Size = size;
			this.SelectAllToolStripMenuItem.Text = "Select All";
			this.CopyToolStripMenuItem.Name = "CopyToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_289_0 = this.CopyToolStripMenuItem;
			size = new global::System.Drawing.Size(122, 22);
			arg_289_0.Size = size;
			this.CopyToolStripMenuItem.Text = "Copy";
			this.ToolStrip1.BackColor = global::System.Drawing.Color.Black;
			this.ToolStrip1.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.ToolStrip1.GripStyle = global::System.Windows.Forms.ToolStripGripStyle.Hidden;
			this.ToolStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.ToolStripTextBox1,
				this.ToolStripButton1
			});
			global::System.Windows.Forms.Control arg_304_0 = this.ToolStrip1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 337);
			arg_304_0.Location = location;
			this.ToolStrip1.Name = "ToolStrip1";
			this.ToolStrip1.RenderMode = global::System.Windows.Forms.ToolStripRenderMode.System;
			this.ToolStrip1.RightToLeft = global::System.Windows.Forms.RightToLeft.Yes;
			global::System.Windows.Forms.Control arg_346_0 = this.ToolStrip1;
			size = new global::System.Drawing.Size(584, 25);
			arg_346_0.Size = size;
			this.ToolStrip1.TabIndex = 4;
			this.ToolStrip1.Text = "ToolStrip1";
			this.ToolStripTextBox1.BackColor = global::System.Drawing.Color.FromArgb(40, 40, 40);
			this.ToolStripTextBox1.BorderStyle = global::System.Windows.Forms.BorderStyle.FixedSingle;
			this.ToolStripTextBox1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.ToolStripTextBox1.Name = "ToolStripTextBox1";
			global::System.Windows.Forms.ToolStripControlHost arg_3BB_0 = this.ToolStripTextBox1;
			size = new global::System.Drawing.Size(100, 25);
			arg_3BB_0.Size = size;
			this.ToolStripTextBox1.TextBoxTextAlign = global::System.Windows.Forms.HorizontalAlignment.Right;
			this.ToolStripButton1.DisplayStyle = global::System.Windows.Forms.ToolStripItemDisplayStyle.Image;
			this.ToolStripButton1.Image = (global::System.Drawing.Image)componentResourceManager.GetObject("ToolStripButton1.Image");
			this.ToolStripButton1.ImageTransparentColor = global::System.Drawing.Color.Magenta;
			this.ToolStripButton1.Name = "ToolStripButton1";
			global::System.Windows.Forms.ToolStripItem arg_425_0 = this.ToolStripButton1;
			size = new global::System.Drawing.Size(23, 22);
			arg_425_0.Size = size;
			this.ToolStripButton1.Text = "Find";
			this.ContextMenuStrip2.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.ToolStripMenuItem1,
				this.AToolStripMenuItem1,
				this.DeleteToolStripMenuItem
			});
			this.ContextMenuStrip2.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_48F_0 = this.ContextMenuStrip2;
			size = new global::System.Drawing.Size(118, 54);
			arg_48F_0.Size = size;
			this.ToolStripMenuItem1.Name = "ToolStripMenuItem1";
			global::System.Windows.Forms.ToolStripItem arg_4B6_0 = this.ToolStripMenuItem1;
			size = new global::System.Drawing.Size(117, 22);
			arg_4B6_0.Size = size;
			this.ToolStripMenuItem1.Text = "Refresh";
			this.AToolStripMenuItem1.Name = "AToolStripMenuItem1";
			global::System.Windows.Forms.ToolStripItem arg_4EC_0 = this.AToolStripMenuItem1;
			size = new global::System.Drawing.Size(114, 6);
			arg_4EC_0.Size = size;
			this.DeleteToolStripMenuItem.Name = "DeleteToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_513_0 = this.DeleteToolStripMenuItem;
			size = new global::System.Drawing.Size(117, 22);
			arg_513_0.Size = size;
			this.DeleteToolStripMenuItem.Text = "Remove";
			this.TextBox1.Dock = global::System.Windows.Forms.DockStyle.Top;
			global::System.Windows.Forms.Control arg_548_0 = this.TextBox1;
			location = new global::System.Drawing.Point(159, 0);
			arg_548_0.Location = location;
			this.TextBox1.Name = "TextBox1";
			global::System.Windows.Forms.Control arg_572_0 = this.TextBox1;
			size = new global::System.Drawing.Size(425, 20);
			arg_572_0.Size = size;
			this.TextBox1.TabIndex = 12;
			this.TextBox1.Visible = false;
			this.T1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.T1.ContextMenuStrip = this.ContextMenuStrip1;
			this.T1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.T1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_5DE_0 = this.T1;
			location = new global::System.Drawing.Point(159, 20);
			arg_5DE_0.Location = location;
			this.T1.Name = "T1";
			global::System.Windows.Forms.Control arg_60B_0 = this.T1;
			size = new global::System.Drawing.Size(425, 302);
			arg_60B_0.Size = size;
			this.T1.TabIndex = 13;
			this.T1.Text = global::NINGALINET.My.Resources.Resources.notf;
			this.ImageList1.ImageStream = (global::System.Windows.Forms.ImageListStreamer)componentResourceManager.GetObject("ImageList1.ImageStream");
			this.ImageList1.TransparentColor = global::System.Drawing.Color.Transparent;
			this.ImageList1.Images.SetKeyName(0, "148.png");
			this.Lv1.BackColor = global::System.Drawing.Color.Black;
			this.Lv1.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader1
			});
			this.Lv1.ContextMenuStrip = this.ContextMenuStrip2;
			this.Lv1.Dock = global::System.Windows.Forms.DockStyle.Left;
			this.Lv1.Font = new global::System.Drawing.Font("Arial", 8.25f);
			this.Lv1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Lv1.FullRowSelect = true;
			this.Lv1.LargeImageList = this.ImageList1;
			global::System.Windows.Forms.Control arg_716_0 = this.Lv1;
			location = new global::System.Drawing.Point(0, 0);
			arg_716_0.Location = location;
			this.Lv1.Name = "Lv1";
			this.Lv1.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_74F_0 = this.Lv1;
			size = new global::System.Drawing.Size(159, 322);
			arg_74F_0.Size = size;
			this.Lv1.SmallImageList = this.ImageList1;
			this.Lv1.TabIndex = 9;
			this.Lv1.UseCompatibleStateImageBehavior = false;
			this.Lv1.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader1.Text = "Date Logger";
			this.ColumnHeader1.Width = 120;
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_81E_0 = this.pr;
			location = new global::System.Drawing.Point(0, 322);
			arg_81E_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_861_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_861_0.Size = size;
			this.pr.TabIndex = 7;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			this.sl.Anchor = (global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left);
			this.sl.AutoSize = true;
			this.sl.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			global::System.Windows.Forms.Control arg_8D6_0 = this.sl;
			location = new global::System.Drawing.Point(4, 343);
			arg_8D6_0.Location = location;
			this.sl.Name = "sl";
			global::System.Windows.Forms.Control arg_8FD_0 = this.sl;
			size = new global::System.Drawing.Size(13, 13);
			arg_8FD_0.Size = size;
			this.sl.TabIndex = 14;
			this.sl.Text = "..";
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.sl);
			this.Controls.Add(this.T1);
			this.Controls.Add(this.TextBox1);
			this.Controls.Add(this.Lv1);
			this.Controls.Add(this.pr);
			this.Controls.Add(this.ToolStrip1);
			this.Name = "FrmLogger";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "kl";
			this.ContextMenuStrip1.ResumeLayout(false);
			this.ToolStrip1.ResumeLayout(false);
			this.ToolStrip1.PerformLayout();
			this.ContextMenuStrip2.ResumeLayout(false);
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x040002BA RID: 698
		private global::System.ComponentModel.IContainer components;
	}
}
