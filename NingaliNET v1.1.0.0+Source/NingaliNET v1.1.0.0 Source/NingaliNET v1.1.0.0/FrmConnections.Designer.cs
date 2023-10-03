namespace NINGALINET
{
	// Token: 0x02000010 RID: 16
	[global::Microsoft.VisualBasic.CompilerServices.DesignerGenerated]
	public partial class FrmConnections : global::System.Windows.Forms.Form
	{
		// Token: 0x06000364 RID: 868 RVA: 0x00021A6C File Offset: 0x0001FC6C
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

		// Token: 0x06000365 RID: 869 RVA: 0x00021AB0 File Offset: 0x0001FCB0
		[global::System.Diagnostics.DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new global::System.ComponentModel.Container();
			this.StatusStrip1 = new global::System.Windows.Forms.StatusStrip();
			this.sl = new global::System.Windows.Forms.ToolStripStatusLabel();
			this.ContextMenuStrip1 = new global::System.Windows.Forms.ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.AToolStripMenuItem = new global::System.Windows.Forms.ToolStripSeparator();
			this.KillConnectionToolStripMenuItem = new global::System.Windows.Forms.ToolStripMenuItem();
			this.Timer1 = new global::System.Windows.Forms.Timer(this.components);
			this.pr = new global::NINGALINET.CHProgressbar();
			this.LTCP = new global::NINGALINET.LV();
			this.ColumnHeader1 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader2 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader3 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader4 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader5 = new global::System.Windows.Forms.ColumnHeader();
			this.ColumnHeader6 = new global::System.Windows.Forms.ColumnHeader();
			this.StatusStrip1.SuspendLayout();
			this.ContextMenuStrip1.SuspendLayout();
			this.SuspendLayout();
			this.StatusStrip1.BackColor = global::System.Drawing.Color.Black;
			this.StatusStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.sl
			});
			global::System.Windows.Forms.Control arg_11D_0 = this.StatusStrip1;
			global::System.Drawing.Point location = new global::System.Drawing.Point(0, 340);
			arg_11D_0.Location = location;
			this.StatusStrip1.Name = "StatusStrip1";
			global::System.Windows.Forms.Control arg_147_0 = this.StatusStrip1;
			global::System.Drawing.Size size = new global::System.Drawing.Size(584, 22);
			arg_147_0.Size = size;
			this.StatusStrip1.TabIndex = 1;
			this.StatusStrip1.Text = "StatusStrip1";
			this.sl.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.sl.Name = "sl";
			global::System.Windows.Forms.ToolStripItem arg_19A_0 = this.sl;
			size = new global::System.Drawing.Size(13, 17);
			arg_19A_0.Size = size;
			this.sl.Text = "..";
			this.ContextMenuStrip1.Items.AddRange(new global::System.Windows.Forms.ToolStripItem[]
			{
				this.RefreshToolStripMenuItem,
				this.AToolStripMenuItem,
				this.KillConnectionToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			global::System.Windows.Forms.Control arg_207_0 = this.ContextMenuStrip1;
			size = new global::System.Drawing.Size(156, 76);
			arg_207_0.Size = size;
			this.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_231_0 = this.RefreshToolStripMenuItem;
			size = new global::System.Drawing.Size(155, 22);
			arg_231_0.Size = size;
			this.RefreshToolStripMenuItem.Text = "Refresh";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_26A_0 = this.AToolStripMenuItem;
			size = new global::System.Drawing.Size(152, 6);
			arg_26A_0.Size = size;
			this.KillConnectionToolStripMenuItem.Name = "KillConnectionToolStripMenuItem";
			global::System.Windows.Forms.ToolStripItem arg_294_0 = this.KillConnectionToolStripMenuItem;
			size = new global::System.Drawing.Size(155, 22);
			arg_294_0.Size = size;
			this.KillConnectionToolStripMenuItem.Text = "Kill Connection";
			this.pr.BackColor = global::System.Drawing.Color.Transparent;
			this.pr.Colors = new global::NINGALINET.Bloom[0];
			this.pr.Customization = global::NINGALINET.My.Resources.Resources.notf;
			this.pr.Dock = global::System.Windows.Forms.DockStyle.Bottom;
			this.pr.Font = new global::System.Drawing.Font("Verdana", 8f);
			this.pr.Image = null;
			global::System.Windows.Forms.Control arg_320_0 = this.pr;
			location = new global::System.Drawing.Point(0, 325);
			arg_320_0.Location = location;
			this.pr.Maximum = 100;
			this.pr.Name = "pr";
			this.pr.NoRounding = false;
			global::System.Windows.Forms.Control arg_363_0 = this.pr;
			size = new global::System.Drawing.Size(584, 15);
			arg_363_0.Size = size;
			this.pr.TabIndex = 2;
			this.pr.Text = "ChProgressbar1";
			this.pr.Transparent = true;
			this.pr.Value = 1;
			this.LTCP.BackColor = global::System.Drawing.Color.Black;
			this.LTCP.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.LTCP.Columns.AddRange(new global::System.Windows.Forms.ColumnHeader[]
			{
				this.ColumnHeader1,
				this.ColumnHeader2,
				this.ColumnHeader3,
				this.ColumnHeader4,
				this.ColumnHeader5,
				this.ColumnHeader6
			});
			this.LTCP.ContextMenuStrip = this.ContextMenuStrip1;
			this.LTCP.Dock = global::System.Windows.Forms.DockStyle.Fill;
			this.LTCP.Font = new global::System.Drawing.Font("Arial", 8f);
			this.LTCP.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.LTCP.FullRowSelect = true;
			global::System.Windows.Forms.Control arg_469_0 = this.LTCP;
			location = new global::System.Drawing.Point(0, 0);
			arg_469_0.Location = location;
			this.LTCP.Name = "LTCP";
			this.LTCP.OwnerDraw = true;
			global::System.Windows.Forms.Control arg_4A2_0 = this.LTCP;
			size = new global::System.Drawing.Size(584, 325);
			arg_4A2_0.Size = size;
			this.LTCP.TabIndex = 3;
			this.LTCP.UseCompatibleStateImageBehavior = false;
			this.LTCP.View = global::System.Windows.Forms.View.Details;
			this.ColumnHeader1.Text = "Local IP";
			this.ColumnHeader2.Text = "Local Port";
			this.ColumnHeader3.Text = "Remote IP";
			this.ColumnHeader4.Text = "Remote Port";
			this.ColumnHeader5.Text = "State";
			this.ColumnHeader6.Text = "Process";
			this.ColumnHeader6.Width = 187;
			global::System.Drawing.SizeF autoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.Black;
			size = new global::System.Drawing.Size(584, 362);
			this.ClientSize = size;
			this.Controls.Add(this.LTCP);
			this.Controls.Add(this.pr);
			this.Controls.Add(this.StatusStrip1);
			this.Name = "FrmConnections";
			this.ShowIcon = false;
			this.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Form3";
			this.StatusStrip1.ResumeLayout(false);
			this.StatusStrip1.PerformLayout();
			this.ContextMenuStrip1.ResumeLayout(false);
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x04000196 RID: 406
		private global::System.ComponentModel.IContainer components;
	}
}
