namespace NINGALINET
{
	// Token: 0x02000025 RID: 37
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmStartUp : global::System.Windows.Forms.Form
	{
		// Token: 0x06000737 RID: 1847 RVA: 0x0003A6A8 File Offset: 0x000388A8
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

		// Token: 0x06000738 RID: 1848 RVA: 0x0003A6EC File Offset: 0x000388EC
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmStartUp));
			global::System.Windows.Forms.ListViewGroup listViewGroup = new global::System.Windows.Forms.ListViewGroup("HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Run", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup2 = new global::System.Windows.Forms.ListViewGroup("HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup3 = new global::System.Windows.Forms.ListViewGroup("HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup4 = new global::System.Windows.Forms.ListViewGroup("HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup5 = new global::System.Windows.Forms.ListViewGroup("HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\RunOnce", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup6 = new global::System.Windows.Forms.ListViewGroup("HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup7 = new global::System.Windows.Forms.ListViewGroup("Startup Folder ", global::System.Windows.Forms.HorizontalAlignment.Left);
			this.CM = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.AtualizarToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.ExcluirToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.IM = new global::System.Windows.Forms.ImageList(this.components);
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.pr = new global::NINGALINET.CHProgressbar();
			this.sl = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.ST = new global::System.Windows.Forms.StatusStrip();
			this.ListView1 = new global::NINGALINET.LV();
			this.ColumnHeader3 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader4 = new global::System.Windows.Forms.ColumnHeader();
			this.CM.SuspendLayout();
			this.ST.SuspendLayout();
			this.SuspendLayout();
			this.CM.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.AtualizarToolStripMenuItem,
				this.AToolStripMenuItem,
				this.ExcluirToolStripMenuItem
			});
			this.CM.Name = "CM";
			global::System.Windows.Forms.Control arg_183_0 = this.CM;
			global::System.Drawing.Size size = new global::System.Drawing.Size(153, 76);
			arg_183_0.Size = size;
			this.AtualizarToolStripMenuItem.Name = "AtualizarToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1AE_0 = this.AtualizarToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_1AE_0.Size = size;
			this.AtualizarToolStripMenuItem.Text = "Refresh";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1E8_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(149, 6);
			arg_1E8_0.Size = size;
			this.ExcluirToolStripMenuItem.Name = "ExcluirToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_213_0 = this.ExcluirToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_213_0.Size = size;
			this.ExcluirToolStripMenuItem.Text = "Remove";
			this.IM.ImageStream = (global::System.Windows.Forms.ImageListStreamer)componentResourceManager.GetObject("IM.ImageStream");
			this.IM.TransparentColor = global::System.Drawing.Color.Transparent;
			this.IM.Images.SetKeyName(0, "176.png");
			this.IM.Images.SetKeyName(1, "177.png");
			this.IM.Images.SetKeyName(2, "178.png");
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_30D_0 = this.pr;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 325);
			arg_30D_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_351_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_351_0.Size = size;
			this.pr.TabIndex = 3;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			this.sl.Name = "sl";
			global::System.Windows.Forms.ToolStripItem arg_3AD_0 = this.sl;
			size = new global::System.Drawing.Size(13, 17);
			arg_3AD_0.Size = size;
			this.sl.Text = "..";
			this.ST.BackColor = global::System.Drawing.Color.Black;
			this.ST.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.sl
			});
			global::System.Windows.Forms.Control arg_40B_0 = this.ST;
			location = new global::System.Drawing.Point(0, 340);
			arg_40B_0.Location = location;
			this.ST.Name = "ST";
			global::System.Windows.Forms.Control arg_436_0 = this.ST;
			size = new global::System.Drawing.Size(584, 22);
			arg_436_0.Size = size;
			this.ST.SizingGrip = false;
			this.ST.TabIndex = 1;
			this.ListView1.BackColor = global::System.Drawing.Color.Black;
			this.ListView1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.ListView1.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader3,
				this.ColumnHeader4
			});
			this.ListView1.ContextMenuStrip = this.CM;
			this.ListView1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.ListView1.Font = new global::System.Drawing.Font("Arial", 8f);
			this.ListView1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.ListView1.FullRowSelect = true;
			listViewGroup.Header = "HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Run";
			listViewGroup.Name = "Group1";
			listViewGroup2.Header = "HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce";
			listViewGroup2.Name = "Group2";
			listViewGroup3.Header = "HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run";
			listViewGroup3.Name = "Group3";
			listViewGroup4.Header = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run";
			listViewGroup4.Name = "Group4";
			listViewGroup5.Header = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\RunOnce";
			listViewGroup5.Name = "Group5";
			listViewGroup6.Header = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run";
			listViewGroup6.Name = "Group6";
			listViewGroup7.Header = "Startup Folder ";
			listViewGroup7.Name = "Group7";
			this.ListView1.Groups.AddRange(new global::System.Windows.Forms.ListViewGroup[]
			{
				listViewGroup,
				listViewGroup2,
				listViewGroup3,
				listViewGroup4,
				listViewGroup5,
				listViewGroup6,
				listViewGroup7
			});
			this.ListView1.LargeImageList = this.IM;
			global::System.Windows.Forms.Control arg_5F5_0 = this.ListView1;
			location = new global::System.Drawing.Point(0, 0);
			arg_5F5_0.Location = location;
			this.ListView1.Name = "ListView1";
			this.ListView1.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_62F_0 = this.ListView1;
			size = new global::System.Drawing.Size(584, 325);
			arg_62F_0.Size = size;
			this.ListView1.SmallImageList = this.IM;
			this.ListView1.TabIndex = 4;
			this.ListView1.UseCompatibleStateImageBehavior = false;
			this.ListView1.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader3.Text = "Name";
			this.ColumnHeader4.Text = "Descriptions";
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.ListView1);
			this.Controls.Add(this.pr);
			this.Controls.Add(this.ST);
			this.ForeColor = global::System.Drawing.Color.White;
			this.Name = "FrmStartUp";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "StartUp";
			this.CM.ResumeLayout(false);
			this.ST.ResumeLayout(false);
			this.ST.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x04000358 RID: 856
		private global::System.ComponentModel.IContainer components;
	}
}
