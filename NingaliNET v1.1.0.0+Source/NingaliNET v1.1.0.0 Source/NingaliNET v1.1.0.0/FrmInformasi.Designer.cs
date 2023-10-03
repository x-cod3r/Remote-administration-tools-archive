namespace NINGALINET
{
	// Token: 0x02000018 RID: 24
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmInformasi : global::System.Windows.Forms.Form
	{
		// Token: 0x060005A5 RID: 1445 RVA: 0x00030FBC File Offset: 0x0002F1BC
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

		// Token: 0x060005A6 RID: 1446 RVA: 0x00031000 File Offset: 0x0002F200
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.Windows.Forms.ListViewGroup listViewGroup = new global::System.Windows.Forms.ListViewGroup("Server Settings", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup2 = new global::System.Windows.Forms.ListViewGroup("Server Connection", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup3 = new global::System.Windows.Forms.ListViewGroup("General Information", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup4 = new global::System.Windows.Forms.ListViewGroup("System Information", global::System.Windows.Forms.HorizontalAlignment.Left);
			global::System.Windows.Forms.ListViewGroup listViewGroup5 = new global::System.Windows.Forms.ListViewGroup("BIOS Information", global::System.Windows.Forms.HorizontalAlignment.Left);
			this.ContextMenuStrip1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AsToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.SaveToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.StatusStrip1 = new global::System.Windows.Forms.StatusStrip();
			this.sl = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.Lv1 = new global::NINGALINET.LV();
			this.ColumnHeader1 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader2 = new global::System.Windows.Forms.ColumnHeader();
			this.pr = new global::NINGALINET.CHProgressbar();
			this.ContextMenuStrip1.SuspendLayout();
			this.StatusStrip1.SuspendLayout();
			this.SuspendLayout();
			this.ContextMenuStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.RefreshToolStripMenuItem,
				this.AsToolStripMenuItem,
				this.SaveToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_136_0 = this.ContextMenuStrip1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(153, 76);
			arg_136_0.Size = size;
			this.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_161_0 = this.RefreshToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_161_0.Size = size;
			this.RefreshToolStripMenuItem.Text = "Refresh";
			this.AsToolStripMenuItem.Name = "AsToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_19B_0 = this.AsToolStripMenuItem;
			size = new global::System.Drawing.Size(149, 6);
			arg_19B_0.Size = size;
			this.SaveToolStripMenuItem.Name = "SaveToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1C6_0 = this.SaveToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_1C6_0.Size = size;
			this.SaveToolStripMenuItem.Text = "Save As";
			this.StatusStrip1.BackColor = global::System.Drawing.Color.Black;
			this.StatusStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.sl
			});
			global::System.Windows.Forms.Control arg_224_0 = this.StatusStrip1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 340);
			arg_224_0.Location = location;
			this.StatusStrip1.Name = "StatusStrip1";
			global::System.Windows.Forms.Control arg_24F_0 = this.StatusStrip1;
			size = new global::System.Drawing.Size(584, 22);
			arg_24F_0.Size = size;
			this.StatusStrip1.TabIndex = 5;
			this.StatusStrip1.Text = "StatusStrip1";
			this.sl.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.sl.Name = "sl";
			global::System.Windows.Forms.ToolStripItem arg_2A3_0 = this.sl;
			size = new global::System.Drawing.Size(13, 17);
			arg_2A3_0.Size = size;
			this.sl.Text = "..";
			this.Lv1.BackColor = global::System.Drawing.Color.Black;
			this.Lv1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.Lv1.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader1,
				this.ColumnHeader2
			});
			this.Lv1.ContextMenuStrip = this.ContextMenuStrip1;
			this.Lv1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.Lv1.Font = new global::System.Drawing.Font("Arial", 8f);
			this.Lv1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Lv1.FullRowSelect = true;
			listViewGroup.Header = "Server Settings";
			listViewGroup.Name = "ListViewGroup2";
			listViewGroup2.Header = "Server Connection";
			listViewGroup2.Name = "ListViewGroup4";
			listViewGroup3.Header = "General Information";
			listViewGroup3.Name = "ListViewGroup1";
			listViewGroup4.Header = "System Information";
			listViewGroup4.Name = "ListViewGroup3";
			listViewGroup5.Header = "BIOS Information";
			listViewGroup5.Name = "ListViewGroup5";
			this.Lv1.Groups.AddRange(new global::System.Windows.Forms.ListViewGroup[]
			{
				listViewGroup,
				listViewGroup2,
				listViewGroup3,
				listViewGroup4,
				listViewGroup5
			});
			global::System.Windows.Forms.Control arg_40A_0 = this.Lv1;
			location = new global::System.Drawing.Point(0, 0);
			arg_40A_0.Location = location;
			this.Lv1.Name = "Lv1";
			this.Lv1.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_444_0 = this.Lv1;
			size = new global::System.Drawing.Size(584, 325);
			arg_444_0.Size = size;
			this.Lv1.TabIndex = 9;
			this.Lv1.UseCompatibleStateImageBehavior = false;
			this.Lv1.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader1.Text = "Name";
			this.ColumnHeader1.Width = 143;
			this.ColumnHeader2.Text = "Value";
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_516_0 = this.pr;
			location = new global::System.Drawing.Point(0, 325);
			arg_516_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_55A_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_55A_0.Size = size;
			this.pr.TabIndex = 8;
			this.pr.Text = "ChProgressbar2";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.Lv1);
			this.Controls.Add(this.pr);
			this.Controls.Add(this.StatusStrip1);
			this.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Name = "FrmInformasi";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Form2";
			this.ContextMenuStrip1.ResumeLayout(false);
			this.StatusStrip1.ResumeLayout(false);
			this.StatusStrip1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x04000292 RID: 658
		private global::System.ComponentModel.IContainer components;
	}
}
