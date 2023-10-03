namespace NINGALINET
{
	// Token: 0x02000019 RID: 25
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmInstalled : global::System.Windows.Forms.Form
	{
		// Token: 0x060005C2 RID: 1474 RVA: 0x00031B80 File Offset: 0x0002FD80
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

		// Token: 0x060005C3 RID: 1475 RVA: 0x00031BC4 File Offset: 0x0002FDC4
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::NINGALINET.FrmInstalled));
			this.ContextMenuStrip1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.DToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.UnistallAProgramToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.StatusStrip1 = new global::System.Windows.Forms.StatusStrip();
			this.SL = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.pr = new global::NINGALINET.CHProgressbar();
			this.L1 = new global::NINGALINET.LV();
			this.ColumnHeader1 = new global::System.Windows.Forms.ColumnHeader();
			this.ContextMenuStrip1.SuspendLayout();
			this.StatusStrip1.SuspendLayout();
			this.SuspendLayout();
			this.ContextMenuStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.RefreshToolStripMenuItem,
				this.DToolStripMenuItem,
				this.UnistallAProgramToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_109_0 = this.ContextMenuStrip1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(172, 76);
			arg_109_0.Size = size;
			this.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_133_0 = this.RefreshToolStripMenuItem;
			size = new global::System.Drawing.Size(171, 22);
			arg_133_0.Size = size;
			this.RefreshToolStripMenuItem.Text = "Refresh";
			this.DToolStripMenuItem.Name = "DToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_16C_0 = this.DToolStripMenuItem;
			size = new global::System.Drawing.Size(168, 6);
			arg_16C_0.Size = size;
			this.UnistallAProgramToolStripMenuItem.Image = (global::System.Drawing.Image)componentResourceManager.GetObject("UnistallAProgramToolStripMenuItem.Image");
			this.UnistallAProgramToolStripMenuItem.Name = "UnistallAProgramToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1B1_0 = this.UnistallAProgramToolStripMenuItem;
			size = new global::System.Drawing.Size(171, 22);
			arg_1B1_0.Size = size;
			this.UnistallAProgramToolStripMenuItem.Text = "Unistall a Program";
			this.StatusStrip1.BackColor = global::System.Drawing.Color.Black;
			this.StatusStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.SL
			});
			global::System.Windows.Forms.Control arg_20B_0 = this.StatusStrip1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 340);
			arg_20B_0.Location = location;
			this.StatusStrip1.Name = "StatusStrip1";
			global::System.Windows.Forms.Control arg_235_0 = this.StatusStrip1;
			size = new global::System.Drawing.Size(584, 22);
			arg_235_0.Size = size;
			this.StatusStrip1.TabIndex = 1;
			this.StatusStrip1.Text = "StatusStrip1";
			this.SL.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.SL.Name = "SL";
			global::System.Windows.Forms.ToolStripItem arg_288_0 = this.SL;
			size = new global::System.Drawing.Size(13, 17);
			arg_288_0.Size = size;
			this.SL.Text = "..";
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_314_0 = this.pr;
			location = new global::System.Drawing.Point(0, 325);
			arg_314_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_357_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_357_0.Size = size;
			this.pr.TabIndex = 2;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			this.L1.BackColor = global::System.Drawing.Color.Black;
			this.L1.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.L1.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader1
			});
			this.L1.ContextMenuStrip = this.ContextMenuStrip1;
			this.L1.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.L1.Font = new global::System.Drawing.Font("Arial", 8f);
			this.L1.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.L1.FullRowSelect = true;
			global::System.Windows.Forms.Control arg_433_0 = this.L1;
			location = new global::System.Drawing.Point(0, 0);
			arg_433_0.Location = location;
			this.L1.Name = "L1";
			this.L1.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_46C_0 = this.L1;
			size = new global::System.Drawing.Size(584, 325);
			arg_46C_0.Size = size;
			this.L1.TabIndex = 3;
			this.L1.UseCompatibleStateImageBehavior = false;
			this.L1.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader1.Text = "Name";
			this.ColumnHeader1.Width = 584;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.L1);
			this.Controls.Add(this.pr);
			this.Controls.Add(this.StatusStrip1);
			this.Name = "FrmInstalled";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Form2";
			this.ContextMenuStrip1.ResumeLayout(false);
			this.StatusStrip1.ResumeLayout(false);
			this.StatusStrip1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x040002A2 RID: 674
		private global::System.ComponentModel.IContainer components;
	}
}
