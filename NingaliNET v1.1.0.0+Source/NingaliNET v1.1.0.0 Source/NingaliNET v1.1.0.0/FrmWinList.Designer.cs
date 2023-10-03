namespace NINGALINET
{
	// Token: 0x02000029 RID: 41
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmWinList : global::System.Windows.Forms.Form
	{
		// Token: 0x060007B3 RID: 1971 RVA: 0x0003D7F4 File Offset: 0x0003B9F4
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

		// Token: 0x060007B4 RID: 1972 RVA: 0x0003D838 File Offset: 0x0003BA38
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			this.ContextMenuStrip2 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.StartToolStripMenuItem1 = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.NewTaskRunToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.SwitchToToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.MinimazeToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.MaximazeToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.EndTaskToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.StatusStrip1 = new global::System.Windows.Forms.StatusStrip();
			this.SL = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.L2 = new global::NINGALINET.LV();
			this.ColumnHeader1 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader2 = new global::System.Windows.Forms.ColumnHeader();
			this.pr = new global::NINGALINET.CHProgressbar();
			this.ContextMenuStrip2.SuspendLayout();
			this.StatusStrip1.SuspendLayout();
			this.SuspendLayout();
			this.ContextMenuStrip2.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.StartToolStripMenuItem1,
				this.AToolStripMenuItem,
				this.NewTaskRunToolStripMenuItem,
				this.SwitchToToolStripMenuItem,
				this.MinimazeToolStripMenuItem,
				this.MaximazeToolStripMenuItem,
				this.EndTaskToolStripMenuItem
			});
			this.ContextMenuStrip2.Name = "ContextMenuStrip2";
			global::System.Windows.Forms.Control arg_146_0 = this.ContextMenuStrip2;
			global::System.Drawing.Size size = new global::System.Drawing.Size(159, 142);
			arg_146_0.Size = size;
			this.StartToolStripMenuItem1.Name = "StartToolStripMenuItem1";
			global::System.Windows.Forms.ToolStripItem arg_170_0 = this.StartToolStripMenuItem1;
			size = new global::System.Drawing.Size(158, 22);
			arg_170_0.Size = size;
			this.StartToolStripMenuItem1.Text = "Refresh";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1A9_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(155, 6);
			arg_1A9_0.Size = size;
			this.NewTaskRunToolStripMenuItem.Name = "NewTaskRunToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1D3_0 = this.NewTaskRunToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_1D3_0.Size = size;
			this.NewTaskRunToolStripMenuItem.Text = "New Task Run...";
			this.SwitchToToolStripMenuItem.Name = "SwitchToToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_20D_0 = this.SwitchToToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_20D_0.Size = size;
			this.SwitchToToolStripMenuItem.Text = "Switch To";
			this.MinimazeToolStripMenuItem.Name = "MinimazeToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_247_0 = this.MinimazeToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_247_0.Size = size;
			this.MinimazeToolStripMenuItem.Text = "Minimaze";
			this.MaximazeToolStripMenuItem.Name = "MaximazeToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_281_0 = this.MaximazeToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_281_0.Size = size;
			this.MaximazeToolStripMenuItem.Text = "Maximaze";
			this.EndTaskToolStripMenuItem.Name = "EndTaskToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_2BB_0 = this.EndTaskToolStripMenuItem;
			size = new global::System.Drawing.Size(158, 22);
			arg_2BB_0.Size = size;
			this.EndTaskToolStripMenuItem.Text = "End Task";
			this.StatusStrip1.BackColor = global::System.Drawing.Color.Black;
			this.StatusStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.SL
			});
			global::System.Windows.Forms.Control arg_315_0 = this.StatusStrip1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 340);
			arg_315_0.Location = location;
			this.StatusStrip1.Name = "StatusStrip1";
			global::System.Windows.Forms.Control arg_33F_0 = this.StatusStrip1;
			size = new global::System.Drawing.Size(584, 22);
			arg_33F_0.Size = size;
			this.StatusStrip1.SizingGrip = false;
			this.StatusStrip1.TabIndex = 29;
			this.StatusStrip1.Text = "StatusStrip1";
			this.SL.Name = "SL";
			global::System.Windows.Forms.ToolStripItem arg_38F_0 = this.SL;
			size = new global::System.Drawing.Size(13, 17);
			arg_38F_0.Size = size;
			this.SL.Text = "..";
			this.L2.BackColor = global::System.Drawing.Color.Black;
			this.L2.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.L2.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader1,
				this.ColumnHeader2
			});
			this.L2.ContextMenuStrip = this.ContextMenuStrip2;
			this.L2.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.L2.Font = new global::System.Drawing.Font("Arial", 8f);
			this.L2.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.L2.FullRowSelect = true;
			global::System.Windows.Forms.Control arg_44D_0 = this.L2;
			location = new global::System.Drawing.Point(0, 0);
			arg_44D_0.Location = location;
			this.L2.Name = "L2";
			this.L2.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_486_0 = this.L2;
			size = new global::System.Drawing.Size(584, 325);
			arg_486_0.Size = size;
			this.L2.TabIndex = 31;
			this.L2.UseCompatibleStateImageBehavior = false;
			this.L2.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader1.Text = "Task";
			this.ColumnHeader1.Width = 287;
			this.ColumnHeader2.Text = "Status";
			this.ColumnHeader2.Width = 363;
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_567_0 = this.pr;
			location = new global::System.Drawing.Point(0, 325);
			arg_567_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_5AA_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_5AA_0.Size = size;
			this.pr.TabIndex = 30;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.L2);
			this.Controls.Add(this.pr);
			this.Controls.Add(this.StatusStrip1);
			this.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.Name = "FrmWinList";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "FrmWinList";
			this.ContextMenuStrip2.ResumeLayout(false);
			this.StatusStrip1.ResumeLayout(false);
			this.StatusStrip1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x04000394 RID: 916
		private global::System.ComponentModel.IContainer components;
	}
}
