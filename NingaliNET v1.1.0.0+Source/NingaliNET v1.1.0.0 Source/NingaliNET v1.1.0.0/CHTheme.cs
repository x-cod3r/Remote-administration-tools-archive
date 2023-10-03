using System;
using System.Diagnostics;
using System.Drawing;

namespace NINGALINET
{
	// Token: 0x02000060 RID: 96
	internal class CHTheme : ThemeContainer154
	{
		// Token: 0x06000B47 RID: 2887 RVA: 0x00006381 File Offset: 0x00004581
		[DebuggerNonUserCode]
		public CHTheme()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x06000B48 RID: 2888 RVA: 0x0000638E File Offset: 0x0000458E
		protected override void ColorHook()
		{
			this.Border = this.GetColor("Border");
			this.TextBrush = this.GetBrush("Text");
		}

		// Token: 0x06000B49 RID: 2889 RVA: 0x00058CC8 File Offset: 0x00056EC8
		protected override void PaintHook()
		{
			this.G.Clear(this.Border);
			Graphics arg_3F_0 = this.G;
			Brush arg_3F_1 = new SolidBrush(this.BackColor);
			Rectangle rectangle = checked(new Rectangle(6, 36, this.Width - 13, this.Height - 43));
			arg_3F_0.FillRectangle(arg_3F_1, rectangle);
			Graphics arg_72_0 = this.G;
			string arg_72_1 = this.FindForm().Text;
			Font arg_72_2 = this.Font;
			Brush arg_72_3 = this.TextBrush;
			Point p = new Point(30, 9);
			arg_72_0.DrawString(arg_72_1, arg_72_2, arg_72_3, p);
			Graphics arg_98_0 = this.G;
			Icon arg_98_1 = this.FindForm().Icon;
			rectangle = new Rectangle(10, 10, 16, 16);
			arg_98_0.DrawIcon(arg_98_1, rectangle);
			this.DrawCorners(Color.Fuchsia);
		}

		// Token: 0x0400054A RID: 1354
		private Color Border;

		// Token: 0x0400054B RID: 1355
		private Brush TextBrush;
	}
}
