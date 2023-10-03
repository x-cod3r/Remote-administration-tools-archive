using System;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace NINGALINET
{
	// Token: 0x02000051 RID: 81
	internal class GroupPanelBox : ThemeContainerControl
	{
		// Token: 0x060009FA RID: 2554 RVA: 0x0000534B File Offset: 0x0000354B
		public GroupPanelBox()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.AllowTransparent();
		}

		// Token: 0x060009FB RID: 2555 RVA: 0x000556B4 File Offset: 0x000538B4
		public override void PaintHook()
		{
			this.Font = new Font("arial", 8f);
			this.ForeColor = Color.FromArgb(245, 245, 245);
			this.G.SmoothingMode = SmoothingMode.AntiAlias;
			this.G.Clear(Color.FromArgb(0, 0, 0));
			Graphics arg_76_0 = this.G;
			Brush arg_76_1 = new SolidBrush(Color.FromArgb(10, 10, 10));
			Rectangle rect = new Rectangle(0, 0, this.Width, 30);
			arg_76_0.FillRectangle(arg_76_1, rect);
			checked
			{
				this.G.DrawLine(new Pen(Color.FromArgb(15, 15, 15)), 1, 1, this.Width - 2, 1);
				this.G.DrawRectangle(new Pen(Color.FromArgb(0, 0, 0)), 0, 0, this.Width - 1, this.Height - 1);
				this.G.DrawRectangle(new Pen(Color.FromArgb(0, 0, 0)), 0, 0, this.Width - 1, 30);
				this.G.DrawString(this.Text, this.Font, new SolidBrush(this.ForeColor), 7f, 6f);
			}
		}
	}
}
