namespace NINGALINET
{
	// Token: 0x02000026 RID: 38
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmStoredPassword : global::System.Windows.Forms.Form
	{
		// Token: 0x06000759 RID: 1881 RVA: 0x0003B3C4 File Offset: 0x000395C4
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

		// Token: 0x0600075A RID: 1882 RVA: 0x0003B408 File Offset: 0x00039608
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmStoredPassword));
			this.L1 = new global::NINGALINET.LV();
			this.ColumnHeader1 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader2 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader3 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader4 = new global::System.Windows.Forms.ColumnHeader();
			this.ContextMenuStrip1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.SaveAsToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.CopyUsernameToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.CopyPasswordToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.CopyUrlToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.ImageList1 = new global::System.Windows.Forms.ImageList(this.components);
			this.pr = new global::NINGALINET.CHProgressbar();
			this.StatusStrip1 = new global::System.Windows.Forms.StatusStrip();
			this.SL = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.ContextMenuStrip1.SuspendLayout();
			this.StatusStrip1.SuspendLayout();
			this.SuspendLayout();
			this.L1.BackColor = global::System.Drawing.Color.Black;
			this.L1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.L1.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader1,
				this.ColumnHeader2,
				this.ColumnHeader3,
				this.ColumnHeader4
			});
			this.L1.ContextMenuStrip = this.ContextMenuStrip1;
			this.L1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.L1.Font = new global::System.Drawing.Font("Arial", 8f);
			this.L1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.L1.FullRowSelect = true;
			this.L1.LargeImageList = this.ImageList1;
			global::System.Windows.Forms.Control arg_1BF_0 = this.L1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 0);
			arg_1BF_0.Location = location;
			this.L1.Name = "L1";
			this.L1.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_1F8_0 = this.L1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(584, 325);
			arg_1F8_0.Size = size;
			this.L1.SmallImageList = this.ImageList1;
			this.L1.TabIndex = 29;
			this.L1.UseCompatibleStateImageBehavior = false;
			this.L1.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader1.Text = "Email/Username";
			this.ColumnHeader2.Text = "Password(s)";
			this.ColumnHeader2.Width = 98;
			this.ColumnHeader3.Text = "Url";
			this.ColumnHeader4.Text = "Application";
			this.ContextMenuStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.RefreshToolStripMenuItem,
				this.AToolStripMenuItem,
				this.SaveAsToolStripMenuItem,
				this.CopyUsernameToolStripMenuItem,
				this.CopyPasswordToolStripMenuItem,
				this.CopyUrlToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_2FE_0 = this.ContextMenuStrip1;
			size = new global::System.Drawing.Size(159, 142);
			arg_2FE_0.Size = size;
			this.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_328_0 = this.RefreshToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_328_0.Size = size;
			this.RefreshToolStripMenuItem.Text = "Refresh";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_361_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(155, 6);
			arg_361_0.Size = size;
			this.SaveAsToolStripMenuItem.Name = "SaveAsToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_38B_0 = this.SaveAsToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_38B_0.Size = size;
			this.SaveAsToolStripMenuItem.Text = "Save As";
			this.CopyUsernameToolStripMenuItem.Name = "CopyUsernameToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_3C5_0 = this.CopyUsernameToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_3C5_0.Size = size;
			this.CopyUsernameToolStripMenuItem.Text = "Copy Username";
			this.CopyPasswordToolStripMenuItem.Name = "CopyPasswordToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_3FF_0 = this.CopyPasswordToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_3FF_0.Size = size;
			this.CopyPasswordToolStripMenuItem.Text = "Copy Password";
			this.CopyUrlToolStripMenuItem.Name = "CopyUrlToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_439_0 = this.CopyUrlToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_439_0.Size = size;
			this.CopyUrlToolStripMenuItem.Text = "Copy Url";
			this.ImageList1.ImageStream = (global::System.Windows.Forms.ImageListStreamer)componentResourceManager.GetObject("ImageList1.ImageStream");
			this.ImageList1.TransparentColor = global::System.Drawing.Color.Transparent;
			this.ImageList1.Images.SetKeyName(0, "1.bmp");
			this.ImageList1.Images.SetKeyName(1, "2.bmp");
			this.ImageList1.Images.SetKeyName(2, "3.bmp");
			this.ImageList1.Images.SetKeyName(3, "4.bmp");
			this.ImageList1.Images.SetKeyName(4, "111.png");
			this.ImageList1.Images.SetKeyName(5, "115.png");
			this.ImageList1.Images.SetKeyName(6, "7.bmp");
			this.ImageList1.Images.SetKeyName(7, "8.bmp");
			this.ImageList1.Images.SetKeyName(8, "107.png");
			this.ImageList1.Images.SetKeyName(9, "116.png");
			this.ImageList1.Images.SetKeyName(10, "11.bmp");
			this.ImageList1.Images.SetKeyName(11, "12.bmp");
			this.ImageList1.Images.SetKeyName(12, "13.bmp");
			this.ImageList1.Images.SetKeyName(13, "Icon_1.ico");
			this.ImageList1.Images.SetKeyName(14, "PasswordRecoveryToolStripMenuItem.Image.png");
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_640_0 = this.pr;
			location = new global::System.Drawing.Point(0, 325);
			arg_640_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_683_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_683_0.Size = size;
			this.pr.TabIndex = 28;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			this.StatusStrip1.BackColor = global::System.Drawing.Color.Black;
			this.StatusStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.SL
			});
			global::System.Windows.Forms.Control arg_705_0 = this.StatusStrip1;
			location = new global::System.Drawing.Point(0, 340);
			arg_705_0.Location = location;
			this.StatusStrip1.Name = "StatusStrip1";
			global::System.Windows.Forms.Control arg_72F_0 = this.StatusStrip1;
			size = new global::System.Drawing.Size(584, 22);
			arg_72F_0.Size = size;
			this.StatusStrip1.SizingGrip = false;
			this.StatusStrip1.TabIndex = 27;
			this.StatusStrip1.Text = "StatusStrip1";
			this.SL.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.SL.Name = "SL";
			global::System.Windows.Forms.ToolStripItem arg_78F_0 = this.SL;
			size = new global::System.Drawing.Size(13, 17);
			arg_78F_0.Size = size;
			this.SL.Text = "..";
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.L1);
			this.Controls.Add(this.pr);
			this.Controls.Add(this.StatusStrip1);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Name = "FrmStoredPassword";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "StoredPassword";
			this.ContextMenuStrip1.ResumeLayout(false);
			this.StatusStrip1.ResumeLayout(false);
			this.StatusStrip1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x04000368 RID: 872
		private global::System.ComponentModel.IContainer components;
	}
}
