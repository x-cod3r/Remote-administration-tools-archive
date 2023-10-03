using System;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace NINGALINET
{
	// Token: 0x0200004A RID: 74
	internal sealed class Draw
	{
		// Token: 0x060009B9 RID: 2489 RVA: 0x00002898 File Offset: 0x00000A98
		private Draw()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x060009BA RID: 2490 RVA: 0x0005485C File Offset: 0x00052A5C
		public static GraphicsPath RoundRect(Rectangle Rectangle, int Curve)
		{
			GraphicsPath graphicsPath = new GraphicsPath();
			checked
			{
				int num = Curve * 2;
				GraphicsPath arg_2D_0 = graphicsPath;
				Rectangle rect = new Rectangle(Rectangle.X, Rectangle.Y, num, num);
				arg_2D_0.AddArc(rect, -180f, 90f);
				GraphicsPath arg_5F_0 = graphicsPath;
				rect = new Rectangle(Rectangle.Width - num + Rectangle.X, Rectangle.Y, num, num);
				arg_5F_0.AddArc(rect, -90f, 90f);
				GraphicsPath arg_9B_0 = graphicsPath;
				rect = new Rectangle(Rectangle.Width - num + Rectangle.X, Rectangle.Height - num + Rectangle.Y, num, num);
				arg_9B_0.AddArc(rect, 0f, 90f);
				GraphicsPath arg_CD_0 = graphicsPath;
				rect = new Rectangle(Rectangle.X, Rectangle.Height - num + Rectangle.Y, num, num);
				arg_CD_0.AddArc(rect, 90f, 90f);
				GraphicsPath arg_10D_0 = graphicsPath;
				Point point = new Point(Rectangle.X, Rectangle.Height - num + Rectangle.Y);
				Point arg_10D_1 = point;
				Point pt = new Point(Rectangle.X, Curve + Rectangle.Y);
				arg_10D_0.AddLine(arg_10D_1, pt);
				return graphicsPath;
			}
		}
	}
}
