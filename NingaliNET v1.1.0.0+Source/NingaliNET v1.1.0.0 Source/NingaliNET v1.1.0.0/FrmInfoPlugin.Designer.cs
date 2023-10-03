namespace NINGALINET
{
	// Token: 0x02000017 RID: 23
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmInfoPlugin : global::System.Windows.Forms.Form
	{
		// Token: 0x06000583 RID: 1411 RVA: 0x00030458 File Offset: 0x0002E658
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

		// Token: 0x06000584 RID: 1412 RVA: 0x0003049C File Offset: 0x0002E69C
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmInfoPlugin));
			this.pr = new global::NINGALINET.CHProgressbar();
			this.StatusStrip1 = new global::System.Windows.Forms.StatusStrip();
			this.SL = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.Lv1 = new global::NINGALINET.LV();
			this.ColumnHeader1 = new global::System.Windows.Forms.ColumnHeader();
			this.ContextMenuStrip1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.UploadUpdatePluginFromDiskToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.RemoveSelectedToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.RemoveAllToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.ImageList1 = new global::System.Windows.Forms.ImageList(this.components);
			this.StatusStrip1.SuspendLayout();
			this.ContextMenuStrip1.SuspendLayout();
			this.SuspendLayout();
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_13E_0 = this.pr;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 325);
			arg_13E_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_181_0 = this.pr;
			global::System.Drawing.Size size = new global::System.Drawing.Size(584, 15);
			arg_181_0.Size = size;
			this.pr.TabIndex = 33;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			this.StatusStrip1.BackColor = global::System.Drawing.Color.Black;
			this.StatusStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.SL
			});
			global::System.Windows.Forms.Control arg_200_0 = this.StatusStrip1;
			location = new global::System.Drawing.Point(0, 340);
			arg_200_0.Location = location;
			this.StatusStrip1.Name = "StatusStrip1";
			global::System.Windows.Forms.Control arg_22A_0 = this.StatusStrip1;
			size = new global::System.Drawing.Size(584, 22);
			arg_22A_0.Size = size;
			this.StatusStrip1.SizingGrip = false;
			this.StatusStrip1.TabIndex = 32;
			this.StatusStrip1.Text = "StatusStrip1";
			this.SL.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.SL.Name = "SL";
			global::System.Windows.Forms.ToolStripItem arg_28A_0 = this.SL;
			size = new global::System.Drawing.Size(13, 17);
			arg_28A_0.Size = size;
			this.SL.Text = "..";
			this.Lv1.BackColor = global::System.Drawing.Color.Black;
			this.Lv1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.Lv1.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader1
			});
			this.Lv1.ContextMenuStrip = this.ContextMenuStrip1;
			this.Lv1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.Lv1.Font = new global::System.Drawing.Font("Arial", 8.25f);
			this.Lv1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Lv1.FullRowSelect = true;
			this.Lv1.LargeImageList = this.ImageList1;
			global::System.Windows.Forms.Control arg_353_0 = this.Lv1;
			location = new global::System.Drawing.Point(0, 0);
			arg_353_0.Location = location;
			this.Lv1.Name = "Lv1";
			this.Lv1.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_38C_0 = this.Lv1;
			size = new global::System.Drawing.Size(584, 325);
			arg_38C_0.Size = size;
			this.Lv1.SmallImageList = this.ImageList1;
			this.Lv1.TabIndex = 34;
			this.Lv1.UseCompatibleStateImageBehavior = false;
			this.Lv1.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader1.Text = "Name";
			this.ContextMenuStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.RefreshToolStripMenuItem,
				this.AToolStripMenuItem,
				this.UploadUpdatePluginFromDiskToolStripMenuItem,
				this.RemoveSelectedToolStripMenuItem,
				this.RemoveAllToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_441_0 = this.ContextMenuStrip1;
			size = new global::System.Drawing.Size(177, 120);
			arg_441_0.Size = size;
			this.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_46B_0 = this.RefreshToolStripMenuItem;
			size = new global::System.Drawing.Size(176, 22);
			arg_46B_0.Size = size;
			this.RefreshToolStripMenuItem.Text = "Refresh";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_4A4_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(173, 6);
			arg_4A4_0.Size = size;
			this.UploadUpdatePluginFromDiskToolStripMenuItem.Name = "UploadUpdatePluginFromDiskToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_4CE_0 = this.UploadUpdatePluginFromDiskToolStripMenuItem;
			size = new global::System.Drawing.Size(176, 22);
			arg_4CE_0.Size = size;
			this.UploadUpdatePluginFromDiskToolStripMenuItem.Text = "Send From Disk";
			this.RemoveSelectedToolStripMenuItem.Name = "RemoveSelectedToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_508_0 = this.RemoveSelectedToolStripMenuItem;
			size = new global::System.Drawing.Size(176, 22);
			arg_508_0.Size = size;
			this.RemoveSelectedToolStripMenuItem.Text = "Remove Selected";
			this.RemoveAllToolStripMenuItem.Name = "RemoveAllToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_542_0 = this.RemoveAllToolStripMenuItem;
			size = new global::System.Drawing.Size(176, 22);
			arg_542_0.Size = size;
			this.RemoveAllToolStripMenuItem.Text = "Remove All Plugins";
			this.ImageList1.ImageStream = (global::System.Windows.Forms.ImageListStreamer)componentResourceManager.GetObject("ImageList1.ImageStream");
			this.ImageList1.TransparentColor = global::System.Drawing.Color.Transparent;
			this.ImageList1.Images.SetKeyName(0, "application_app_edit_pixel_perfect-16.png");
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
			this.Name = "FrmInfoPlugin";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "FrmInfoPlugin";
			this.StatusStrip1.ResumeLayout(false);
			this.StatusStrip1.PerformLayout();
			this.ContextMenuStrip1.ResumeLayout(false);
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x04000283 RID: 643
		private global::System.ComponentModel.IContainer components;
	}
}
