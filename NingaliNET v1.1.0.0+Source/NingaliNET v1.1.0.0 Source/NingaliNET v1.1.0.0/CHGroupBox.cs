using System;
using System.Drawing;

namespace NINGALINET
{
	// Token: 0x02000062 RID: 98
	internal class CHGroupBox : ThemeContainer154
	{
		// Token: 0x06000B4D RID: 2893 RVA: 0x00058F8C File Offset: 0x0005718C
		public CHGroupBox()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.ControlMode = true;
			this.SetColor("Border", Color.DarkGreen);
			this.SetColor("Header", Color.Black);
			this.SetColor("Text", Color.Lime);
			this.BackColor = Color.Black;
		}

		// Token: 0x06000B4E RID: 2894 RVA: 0x000063B2 File Offset: 0x000045B2
		protected override void ColorHook()
		{
			this.border = this.GetPen("Border");
			this.HeaderColor = this.GetBrush("Header");
			this.TextColor = this.GetBrush("Text");
		}

		// Token: 0x06000B4F RID: 2895 RVA: 0x00058FE8 File Offset: 0x000571E8
		protected override void PaintHook()
		{
			this.G.Clear(this.BackColor);
			Graphics arg_31_0 = this.G;
			Brush arg_31_1 = this.HeaderColor;
			checked
			{
				Rectangle rect = new Rectangle(0, 0, this.Width - 1, 25);
				arg_31_0.FillRectangle(arg_31_1, rect);
				Graphics arg_56_0 = this.G;
				Pen arg_56_1 = this.border;
				rect = new Rectangle(0, 0, this.Width - 1, 25);
				arg_56_0.DrawRectangle(arg_56_1, rect);
				Graphics arg_81_0 = this.G;
				Pen arg_81_1 = this.border;
				rect = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
				arg_81_0.DrawRectangle(arg_81_1, rect);
				Graphics arg_AD_0 = this.G;
				string arg_AD_1 = this.Text;
				Font arg_AD_2 = this.Font;
				Brush arg_AD_3 = this.TextColor;
				Point p = new Point(7, 5);
				arg_AD_0.DrawString(arg_AD_1, arg_AD_2, arg_AD_3, p);
			}
		}

		// Token: 0x0400054F RID: 1359
		private Pen border;

		// Token: 0x04000550 RID: 1360
		private Brush HeaderColor;

		// Token: 0x04000551 RID: 1361
		private Brush TextColor;
	}
}
