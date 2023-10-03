using System;
using System.Drawing;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x02000061 RID: 97
	internal class CHButton : ThemeControl154
	{
		// Token: 0x06000B4A RID: 2890 RVA: 0x00058D80 File Offset: 0x00056F80
		public CHButton()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.SetColor("Button", Color.DarkGreen);
			this.SetColor("Button", Color.DarkGreen);
			this.SetColor("Text", Color.Lime);
			this.SetColor("Border", Color.LightGreen);
		}

		// Token: 0x06000B4B RID: 2891 RVA: 0x00058DD8 File Offset: 0x00056FD8
		protected override void ColorHook()
		{
			this.ButtonColor = this.GetColor("Button");
			this.ButtonColor = this.GetColor("Button");
			this.TextColor = this.GetBrush("Text");
			this.Border = this.GetPen("Border");
		}

		// Token: 0x06000B4C RID: 2892 RVA: 0x00058E2C File Offset: 0x0005702C
		protected override void PaintHook()
		{
			this.G.Clear(this.ButtonColor);
			checked
			{
				switch (this.State)
				{
				case MouseState.None:
				{
					Graphics arg_55_0 = this.G;
					Pen arg_55_1 = this.Border;
					Rectangle rect = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_55_0.DrawRectangle(arg_55_1, rect);
					this.DrawText(this.TextColor, HorizontalAlignment.Center, 0, 0);
					break;
				}
				case MouseState.Over:
				{
					Graphics arg_9F_0 = this.G;
					Brush arg_9F_1 = new SolidBrush(Color.FromArgb(30, Color.LightGray));
					Rectangle rect = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_9F_0.FillRectangle(arg_9F_1, rect);
					Graphics arg_CA_0 = this.G;
					Pen arg_CA_1 = this.Border;
					rect = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_CA_0.DrawRectangle(arg_CA_1, rect);
					this.DrawText(this.TextColor, HorizontalAlignment.Center, 0, 0);
					break;
				}
				case MouseState.Down:
				{
					Graphics arg_111_0 = this.G;
					Brush arg_111_1 = new SolidBrush(Color.FromArgb(40, Color.Lime));
					Rectangle rect = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_111_0.FillRectangle(arg_111_1, rect);
					Graphics arg_13C_0 = this.G;
					Pen arg_13C_1 = this.Border;
					rect = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_13C_0.DrawRectangle(arg_13C_1, rect);
					this.DrawText(this.TextColor, HorizontalAlignment.Center, 0, 0);
					break;
				}
				}
			}
		}

		// Token: 0x0400054C RID: 1356
		private Color ButtonColor;

		// Token: 0x0400054D RID: 1357
		private Brush TextColor;

		// Token: 0x0400054E RID: 1358
		private Pen Border;
	}
}
