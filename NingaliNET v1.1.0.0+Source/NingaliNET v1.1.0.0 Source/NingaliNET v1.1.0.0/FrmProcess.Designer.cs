namespace NINGALINET
{
	// Token: 0x0200001F RID: 31
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmProcess : global::System.Windows.Forms.Form
	{
		// Token: 0x06000673 RID: 1651 RVA: 0x00035FCC File Offset: 0x000341CC
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

		// Token: 0x06000674 RID: 1652 RVA: 0x00036010 File Offset: 0x00034210
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmProcess));
			this.M1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.NewToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.KillToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.KillDeleteToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem1 = new global::System.Windows.Forms.ToolStripSeparator();
			this.SuspendToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.ResumeToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.ImageList1 = new global::System.Windows.Forms.ImageList(this.components);
			this.StatusStrip1 = new global::System.Windows.Forms.StatusStrip();
			this.SL = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.pr = new global::NINGALINET.CHProgressbar();
			this.L1 = new global::NINGALINET.LV();
			this.ColumnHeader3 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader4 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader5 = new global::System.Windows.Forms.ColumnHeader();
			this.M1.SuspendLayout();
			this.StatusStrip1.SuspendLayout();
			this.SuspendLayout();
			this.M1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.RefreshToolStripMenuItem,
				this.AToolStripMenuItem,
				this.NewToolStripMenuItem,
				this.KillToolStripMenuItem,
				this.KillDeleteToolStripMenuItem,
				this.AToolStripMenuItem1,
				this.SuspendToolStripMenuItem,
				this.ResumeToolStripMenuItem
			});
			this.M1.Name = "M1";
			global::System.Windows.Forms.Control arg_197_0 = this.M1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(153, 170);
			arg_197_0.Size = size;
			this.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1C1_0 = this.RefreshToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_1C1_0.Size = size;
			this.RefreshToolStripMenuItem.Text = "Refresh";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1FA_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(149, 6);
			arg_1FA_0.Size = size;
			this.NewToolStripMenuItem.Name = "NewToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_224_0 = this.NewToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_224_0.Size = size;
			this.NewToolStripMenuItem.Text = "New";
			this.KillToolStripMenuItem.Name = "KillToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_25E_0 = this.KillToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_25E_0.Size = size;
			this.KillToolStripMenuItem.Text = "Kill ";
			this.KillDeleteToolStripMenuItem.Name = "KillDeleteToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_298_0 = this.KillDeleteToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_298_0.Size = size;
			this.KillDeleteToolStripMenuItem.Text = "Kill + Delete";
			this.AToolStripMenuItem1.Name = "AToolStripMenuItem1";
			global::System.Windows.Forms.ToolStripItem arg_2D1_0 = this.AToolStripMenuItem1;
			size = new global::System.Drawing.Size(149, 6);
			arg_2D1_0.Size = size;
			this.SuspendToolStripMenuItem.Name = "SuspendToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_2FB_0 = this.SuspendToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_2FB_0.Size = size;
			this.SuspendToolStripMenuItem.Text = "Suspend";
			this.ResumeToolStripMenuItem.Name = "ResumeToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_335_0 = this.ResumeToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_335_0.Size = size;
			this.ResumeToolStripMenuItem.Text = "Resume ";
			this.ImageList1.ImageStream = (global::System.Windows.Forms.ImageListStreamer)componentResourceManager.GetObject("ImageList1.ImageStream");
			this.ImageList1.TransparentColor = global::System.Drawing.Color.Transparent;
			this.ImageList1.Images.SetKeyName(0, "95.png");
			this.ImageList1.Images.SetKeyName(1, "114.png");
			this.ImageList1.Images.SetKeyName(2, "2.png");
			this.StatusStrip1.BackColor = global::System.Drawing.Color.Black;
			this.StatusStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.SL
			});
			global::System.Windows.Forms.Control arg_3FC_0 = this.StatusStrip1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 340);
			arg_3FC_0.Location = location;
			this.StatusStrip1.Name = "StatusStrip1";
			global::System.Windows.Forms.Control arg_426_0 = this.StatusStrip1;
			size = new global::System.Drawing.Size(584, 22);
			arg_426_0.Size = size;
			this.StatusStrip1.SizingGrip = false;
			this.StatusStrip1.TabIndex = 24;
			this.StatusStrip1.Text = "StatusStrip1";
			this.SL.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.SL.Name = "SL";
			global::System.Windows.Forms.ToolStripItem arg_486_0 = this.SL;
			size = new global::System.Drawing.Size(13, 17);
			arg_486_0.Size = size;
			this.SL.Text = "..";
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_512_0 = this.pr;
			location = new global::System.Drawing.Point(0, 325);
			arg_512_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_555_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_555_0.Size = size;
			this.pr.TabIndex = 25;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			this.L1.BackColor = global::System.Drawing.Color.Black;
			this.L1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.L1.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader3,
				this.ColumnHeader4,
				this.ColumnHeader5
			});
			this.L1.ContextMenuStrip = this.M1;
			this.L1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.L1.Font = new global::System.Drawing.Font("Arial", 8f);
			this.L1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.L1.FullRowSelect = true;
			global::System.Windows.Forms.Control arg_646_0 = this.L1;
			location = new global::System.Drawing.Point(0, 0);
			arg_646_0.Location = location;
			this.L1.Name = "L1";
			this.L1.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_67F_0 = this.L1;
			size = new global::System.Drawing.Size(584, 325);
			arg_67F_0.Size = size;
			this.L1.TabIndex = 26;
			this.L1.UseCompatibleStateImageBehavior = false;
			this.L1.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader3.Text = "Name";
			this.ColumnHeader4.Text = "PID";
			this.ColumnHeader5.Text = "Locations";
			this.ColumnHeader5.Width = 530;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.L1);
			this.Controls.Add(this.pr);
			this.Controls.Add(this.StatusStrip1);
			this.Name = "FrmProcess";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Proc";
			this.M1.ResumeLayout(false);
			this.StatusStrip1.ResumeLayout(false);
			this.StatusStrip1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x040002FA RID: 762
		private global::System.ComponentModel.IContainer components;
	}
}
