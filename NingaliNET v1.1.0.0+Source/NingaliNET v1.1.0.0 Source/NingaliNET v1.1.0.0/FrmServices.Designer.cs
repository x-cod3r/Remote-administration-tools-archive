namespace NINGALINET
{
	// Token: 0x02000023 RID: 35
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmServices : global::System.Windows.Forms.Form
	{
		// Token: 0x060006FE RID: 1790 RVA: 0x00039424 File Offset: 0x00037624
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

		// Token: 0x060006FF RID: 1791 RVA: 0x00039468 File Offset: 0x00037668
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			this.ContextMenuStrip1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.ToolStripMenuItem1 = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.StartToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.PauseToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.StopToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.L3 = new global::NINGALINET.LV();
			this.ColumnHeader6 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader7 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader8 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader9 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader10 = new global::System.Windows.Forms.ColumnHeader();
			this.pr = new global::NINGALINET.CHProgressbar();
			this.StatusStrip1 = new global::System.Windows.Forms.StatusStrip();
			this.SL = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.ContextMenuStrip1.SuspendLayout();
			this.StatusStrip1.SuspendLayout();
			this.SuspendLayout();
			this.ContextMenuStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.ToolStripMenuItem1,
				this.AToolStripMenuItem,
				this.StartToolStripMenuItem,
				this.PauseToolStripMenuItem,
				this.StopToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_139_0 = this.ContextMenuStrip1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(114, 98);
			arg_139_0.Size = size;
			this.ToolStripMenuItem1.Name = "ToolStripMenuItem1";
			global::System.Windows.Forms.ToolStripItem arg_160_0 = this.ToolStripMenuItem1;
			size = new global::System.Drawing.Size(113, 22);
			arg_160_0.Size = size;
			this.ToolStripMenuItem1.Text = "Refresh";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_196_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(110, 6);
			arg_196_0.Size = size;
			this.StartToolStripMenuItem.Name = "StartToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1BD_0 = this.StartToolStripMenuItem;
			size = new global::System.Drawing.Size(113, 22);
			arg_1BD_0.Size = size;
			this.StartToolStripMenuItem.Text = "Start";
			this.PauseToolStripMenuItem.Name = "PauseToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_1F4_0 = this.PauseToolStripMenuItem;
			size = new global::System.Drawing.Size(113, 22);
			arg_1F4_0.Size = size;
			this.PauseToolStripMenuItem.Text = "Pause";
			this.StopToolStripMenuItem.Name = "StopToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_22B_0 = this.StopToolStripMenuItem;
			size = new global::System.Drawing.Size(113, 22);
			arg_22B_0.Size = size;
			this.StopToolStripMenuItem.Text = "Stop";
			this.L3.BackColor = global::System.Drawing.Color.Black;
			this.L3.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.L3.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader6,
				this.ColumnHeader7,
				this.ColumnHeader8,
				this.ColumnHeader9,
				this.ColumnHeader10
			});
			this.L3.ContextMenuStrip = this.ContextMenuStrip1;
			this.L3.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.L3.Font = new global::System.Drawing.Font("Arial", 8f);
			this.L3.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.L3.FullRowSelect = true;
			global::System.Windows.Forms.Control arg_304_0 = this.L3;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 0);
			arg_304_0.Location = location;
			this.L3.Name = "L3";
			this.L3.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_33D_0 = this.L3;
			size = new global::System.Drawing.Size(584, 325);
			arg_33D_0.Size = size;
			this.L3.TabIndex = 32;
			this.L3.UseCompatibleStateImageBehavior = false;
			this.L3.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader6.Text = "Name";
			this.ColumnHeader7.Text = "Display Name";
			this.ColumnHeader8.Text = "Type";
			this.ColumnHeader9.Text = "Status";
			this.ColumnHeader10.Text = "Can Stop?";
			this.ColumnHeader10.Width = 83;
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_43B_0 = this.pr;
			location = new global::System.Drawing.Point(0, 325);
			arg_43B_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_47E_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_47E_0.Size = size;
			this.pr.TabIndex = 31;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 0;
			this.StatusStrip1.BackColor = global::System.Drawing.Color.Black;
			this.StatusStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.SL
			});
			global::System.Windows.Forms.Control arg_4FD_0 = this.StatusStrip1;
			location = new global::System.Drawing.Point(0, 340);
			arg_4FD_0.Location = location;
			this.StatusStrip1.Name = "StatusStrip1";
			global::System.Windows.Forms.Control arg_527_0 = this.StatusStrip1;
			size = new global::System.Drawing.Size(584, 22);
			arg_527_0.Size = size;
			this.StatusStrip1.SizingGrip = false;
			this.StatusStrip1.TabIndex = 30;
			this.StatusStrip1.Text = "StatusStrip1";
			this.SL.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.SL.Name = "SL";
			global::System.Windows.Forms.ToolStripItem arg_587_0 = this.SL;
			size = new global::System.Drawing.Size(13, 17);
			arg_587_0.Size = size;
			this.SL.Text = "..";
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.L3);
			this.Controls.Add(this.pr);
			this.Controls.Add(this.StatusStrip1);
			this.Name = "FrmServices";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "FrmServices";
			this.ContextMenuStrip1.ResumeLayout(false);
			this.StatusStrip1.ResumeLayout(false);
			this.StatusStrip1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x0400033B RID: 827
		private global::System.ComponentModel.IContainer components;
	}
}
