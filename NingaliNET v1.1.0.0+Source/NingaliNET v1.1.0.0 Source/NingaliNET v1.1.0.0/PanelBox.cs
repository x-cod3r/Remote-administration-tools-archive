using System;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace NINGALINET
{
	// Token: 0x0200004F RID: 79
	internal class PanelBox : ThemeContainerControl
	{
		// Token: 0x060009EF RID: 2543 RVA: 0x0000534B File Offset: 0x0000354B
		public PanelBox()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.AllowTransparent();
		}

		// Token: 0x060009F0 RID: 2544 RVA: 0x00055258 File Offset: 0x00053458
		public override void PaintHook()
		{
			this.Font = new Font("Tahoma", 10f);
			this.ForeColor = Color.FromArgb(40, 40, 40);
			this.G.SmoothingMode = SmoothingMode.AntiAlias;
			Graphics arg_67_0 = this.G;
			Brush arg_67_1 = new SolidBrush(Color.FromArgb(235, 235, 235));
			Rectangle rect = new Rectangle(2, 0, this.Width, this.Height);
			arg_67_0.FillRectangle(arg_67_1, rect);
			Graphics arg_A5_0 = this.G;
			Brush arg_A5_1 = new SolidBrush(Color.FromArgb(249, 249, 249));
			checked
			{
				rect = new Rectangle(1, 0, this.Width - 3, this.Height - 4);
				arg_A5_0.FillRectangle(arg_A5_1, rect);
				this.G.DrawRectangle(new Pen(Color.FromArgb(214, 214, 214)), 0, 0, this.Width - 2, this.Height - 3);
			}
		}
	}
}
