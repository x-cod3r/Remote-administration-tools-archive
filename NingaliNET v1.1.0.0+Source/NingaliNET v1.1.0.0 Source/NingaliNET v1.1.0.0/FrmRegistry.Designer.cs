namespace NINGALINET
{
	// Token: 0x02000021 RID: 33
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmRegistry : global::System.Windows.Forms.Form
	{
		// Token: 0x060006BC RID: 1724 RVA: 0x00037A80 File Offset: 0x00035C80
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

		// Token: 0x060006BD RID: 1725 RVA: 0x00037AC4 File Offset: 0x00035CC4
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmRegistry));
			global::System.Windows.Forms.TreeNode treeNode = new global::System.Windows.Forms.TreeNode("HKEY_CLASSES_ROOT");
			global::System.Windows.Forms.TreeNode treeNode2 = new global::System.Windows.Forms.TreeNode("HKEY_CURRENT_USER");
			global::System.Windows.Forms.TreeNode treeNode3 = new global::System.Windows.Forms.TreeNode("HKEY_LOCAL_MACHINE");
			global::System.Windows.Forms.TreeNode treeNode4 = new global::System.Windows.Forms.TreeNode("HKEY_USERS");
			this.crg = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem1 = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem1 = new global::System.Windows.Forms.ToolStripSeparator();
			this.EditToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.NewValueToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.DeleteToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.l1 = new global::System.Windows.Forms.ImageList(this.components);
			this.RGk = new global::System.Windows.Forms.TreeView();
			this.crgk = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.CreateKeyToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.DeleteKeyToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.RGLIST = new global::NINGALINET.LV();
			this.ColumnHeader4 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader5 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader6 = new global::System.Windows.Forms.ColumnHeader();
			this.pr = new global::NINGALINET.CHProgressbar();
			this.crg.SuspendLayout();
			this.crgk.SuspendLayout();
			this.SuspendLayout();
			this.crg.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.RefreshToolStripMenuItem1,
				this.AToolStripMenuItem1,
				this.EditToolStripMenuItem,
				this.NewValueToolStripMenuItem,
				this.DeleteToolStripMenuItem
			});
			this.crg.Name = "crg";
			global::System.Windows.Forms.Control arg_1BF_0 = this.crg;
			global::System.Drawing.Size size = new global::System.Drawing.Size(153, 120);
			arg_1BF_0.Size = size;
			this.RefreshToolStripMenuItem1.Name = "RefreshToolStripMenuItem1";
			global::System.Windows.Forms.ToolStripItem arg_1EA_0 = this.RefreshToolStripMenuItem1;
			size = new global::System.Drawing.Size(152, 22);
			arg_1EA_0.Size = size;
			this.RefreshToolStripMenuItem1.Text = "Refresh";
			this.AToolStripMenuItem1.Name = "AToolStripMenuItem1";
			global::System.Windows.Forms.ToolStripItem arg_224_0 = this.AToolStripMenuItem1;
			size = new global::System.Drawing.Size(149, 6);
			arg_224_0.Size = size;
			this.EditToolStripMenuItem.Name = "EditToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_24F_0 = this.EditToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_24F_0.Size = size;
			this.EditToolStripMenuItem.Text = "Edit";
			this.NewValueToolStripMenuItem.Name = "NewValueToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_28A_0 = this.NewValueToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_28A_0.Size = size;
			this.NewValueToolStripMenuItem.Text = "NewValue";
			this.DeleteToolStripMenuItem.Name = "DeleteToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_2C5_0 = this.DeleteToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 22);
			arg_2C5_0.Size = size;
			this.DeleteToolStripMenuItem.Text = "Delete";
			this.l1.ImageStream = (global::System.Windows.Forms.ImageListStreamer)componentResourceManager.GetObject("l1.ImageStream");
			this.l1.TransparentColor = global::System.Drawing.Color.Transparent;
			this.l1.Images.SetKeyName(0, "folder_open.png");
			this.l1.Images.SetKeyName(1, "176.png");
			this.l1.Images.SetKeyName(2, "Icon_5.ico");
			this.RGk.Anchor = (global::System.Windows.Forms.AnchorStyles.Top | global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.RGk.BackColor = global::System.Drawing.Color.Black;
			this.RGk.ContextMenuStrip = this.crgk;
			this.RGk.Font = new global::System.Drawing.Font("Arial", 8f);
			this.RGk.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.RGk.ImageIndex = 0;
			this.RGk.ImageList = this.l1;
			global::System.Windows.Forms.Control arg_3CD_0 = this.RGk;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 0);
			arg_3CD_0.Location = location;
			this.RGk.Name = "RGk";
			treeNode.ImageIndex = -2;
			treeNode.Name = "HKEY_CLASSES_ROOT";
			treeNode.Text = "HKEY_CLASSES_ROOT";
			treeNode2.ImageIndex = -2;
			treeNode2.Name = "HKEY_CURRENT_USER";
			treeNode2.Text = "HKEY_CURRENT_USER";
			treeNode3.ImageIndex = -2;
			treeNode3.Name = "HKEY_LOCAL_MACHINE";
			treeNode3.Text = "HKEY_LOCAL_MACHINE";
			treeNode4.ImageIndex = -2;
			treeNode4.Name = "HKEY_USERS";
			treeNode4.Text = "HKEY_USERS";
			this.RGk.Nodes.AddRange(new global::System.Windows.Forms.TreeNode[]
			{
				treeNode,
				treeNode2,
				treeNode3,
				treeNode4
			});
			this.RGk.SelectedImageIndex = 0;
			global::System.Windows.Forms.Control arg_4B1_0 = this.RGk;
			size = new global::System.Drawing.Size(199, 348);
			arg_4B1_0.Size = size;
			this.RGk.TabIndex = 12;
			this.crgk.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.RefreshToolStripMenuItem,
				this.AToolStripMenuItem,
				this.CreateKeyToolStripMenuItem,
				this.DeleteKeyToolStripMenuItem
			});
			this.crgk.Name = "crgk";
			global::System.Windows.Forms.Control arg_52B_0 = this.crgk;
			size = new global::System.Drawing.Size(131, 76);
			arg_52B_0.Size = size;
			this.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_556_0 = this.RefreshToolStripMenuItem;
			size = new global::System.Drawing.Size(130, 22);
			arg_556_0.Size = size;
			this.RefreshToolStripMenuItem.Text = "Refresh";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_58D_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(127, 6);
			arg_58D_0.Size = size;
			this.CreateKeyToolStripMenuItem.Name = "CreateKeyToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_5B8_0 = this.CreateKeyToolStripMenuItem;
			size = new global::System.Drawing.Size(130, 22);
			arg_5B8_0.Size = size;
			this.CreateKeyToolStripMenuItem.Text = "Create Key";
			this.DeleteKeyToolStripMenuItem.Name = "DeleteKeyToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_5F3_0 = this.DeleteKeyToolStripMenuItem;
			size = new global::System.Drawing.Size(130, 22);
			arg_5F3_0.Size = size;
			this.DeleteKeyToolStripMenuItem.Text = "Delete Key";
			this.RGLIST.Anchor = (global::System.Windows.Forms.AnchorStyles.Top | global::System.Windows.Forms.AnchorStyles.Bottom | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.RGLIST.BackColor = global::System.Drawing.Color.Black;
			this.RGLIST.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.RGLIST.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader4,
				this.ColumnHeader5,
				this.ColumnHeader6
			});
			this.RGLIST.ContextMenuStrip = this.crg;
			this.RGLIST.Font = new global::System.Drawing.Font("Arial", 8f);
			this.RGLIST.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.RGLIST.FullRowSelect = true;
			global::System.Windows.Forms.Control arg_6C5_0 = this.RGLIST;
			location = new global::System.Drawing.Point(200, 0);
			arg_6C5_0.Location = location;
			this.RGLIST.Name = "RGLIST";
			this.RGLIST.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_6FF_0 = this.RGLIST;
			size = new global::System.Drawing.Size(384, 348);
			arg_6FF_0.Size = size;
			this.RGLIST.SmallImageList = this.l1;
			this.RGLIST.TabIndex = 14;
			this.RGLIST.UseCompatibleStateImageBehavior = false;
			this.RGLIST.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader4.Text = "Name";
			this.ColumnHeader5.Text = "Type";
			this.ColumnHeader6.Text = "Value";
			this.ColumnHeader6.Width = 274;
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_7F2_0 = this.pr;
			location = new global::System.Drawing.Point(0, 347);
			arg_7F2_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_836_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_836_0.Size = size;
			this.pr.TabIndex = 17;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.pr);
			this.Controls.Add(this.RGLIST);
			this.Controls.Add(this.RGk);
			this.Name = "FrmRegistry";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Regedit";
			this.crg.ResumeLayout(false);
			this.crgk.ResumeLayout(false);
			this.ResumeLayout(false);
		}

		// Token: 0x0400031C RID: 796
		private global::System.ComponentModel.IContainer components;
	}
}
