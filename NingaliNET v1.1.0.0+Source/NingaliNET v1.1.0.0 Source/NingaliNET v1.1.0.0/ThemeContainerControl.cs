using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x0200004D RID: 77
	internal abstract class ThemeContainerControl : ContainerControl
	{
		// Token: 0x060009D4 RID: 2516 RVA: 0x000051CF File Offset: 0x000033CF
		public ThemeContainerControl()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.SetStyle(ControlStyles.UserPaint | ControlStyles.Opaque | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer, true);
			this.B = new Bitmap(1, 1);
			this.G = Graphics.FromImage(this.B);
		}

		// Token: 0x060009D5 RID: 2517 RVA: 0x000050AB File Offset: 0x000032AB
		public void AllowTransparent()
		{
			this.SetStyle(ControlStyles.Opaque, false);
			this.SetStyle(ControlStyles.SupportsTransparentBackColor, true);
		}

		// Token: 0x060009D6 RID: 2518
		public abstract void PaintHook();

		// Token: 0x060009D7 RID: 2519 RVA: 0x00005206 File Offset: 0x00003406
		protected sealed override void OnPaint(PaintEventArgs e)
		{
			if (this.Width != 0 && this.Height != 0)
			{
				this.PaintHook();
				e.Graphics.DrawImage(this.B, 0, 0);
			}
		}

		// Token: 0x060009D8 RID: 2520 RVA: 0x00054D88 File Offset: 0x00052F88
		protected override void OnSizeChanged(EventArgs e)
		{
			bool arg_18_0;
			if (this.Width != 0)
			{
				if (this.Height != 0)
				{
					arg_18_0 = true;
					goto IL_18;
				}
			}
			arg_18_0 = false;
			IL_18:
			if (arg_18_0)
			{
				this.B = new Bitmap(this.Width, this.Height);
				this.G = Graphics.FromImage(this.B);
				this.Invalidate();
			}
			base.OnSizeChanged(e);
		}

		// Token: 0x17000361 RID: 865
		// (get) Token: 0x060009D9 RID: 2521 RVA: 0x00005239 File Offset: 0x00003439
		// (set) Token: 0x060009DA RID: 2522 RVA: 0x00005241 File Offset: 0x00003441
		public bool NoRounding
		{
			get
			{
				return this._NoRounding;
			}
			set
			{
				this._NoRounding = value;
				this.Invalidate();
			}
		}

		// Token: 0x060009DB RID: 2523 RVA: 0x00054DE4 File Offset: 0x00052FE4
		protected void DrawCorners(Color c, Rectangle rect)
		{
			checked
			{
				if (!this._NoRounding)
				{
					this.B.SetPixel(rect.X, rect.Y, c);
					this.B.SetPixel(rect.X + (rect.Width - 1), rect.Y, c);
					this.B.SetPixel(rect.X, rect.Y + (rect.Height - 1), c);
					this.B.SetPixel(rect.X + (rect.Width - 1), rect.Y + (rect.Height - 1), c);
				}
			}
		}

		// Token: 0x060009DC RID: 2524 RVA: 0x00054E8C File Offset: 0x0005308C
		protected void DrawBorders(Pen p1, Pen p2, Rectangle rect)
		{
			checked
			{
				this.G.DrawRectangle(p1, rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
				this.G.DrawRectangle(p2, rect.X + 1, rect.Y + 1, rect.Width - 3, rect.Height - 3);
			}
		}

		// Token: 0x060009DD RID: 2525 RVA: 0x00005250 File Offset: 0x00003450
		protected void DrawGradient(Color c1, Color c2, int x, int y, int width, int height, float angle)
		{
			this._Rectangle = new Rectangle(x, y, width, height);
			this._Gradient = new LinearGradientBrush(this._Rectangle, c1, c2, angle);
			this.G.FillRectangle(this._Gradient, this._Rectangle);
		}

		// Token: 0x040004D1 RID: 1233
		protected Graphics G;

		// Token: 0x040004D2 RID: 1234
		protected Bitmap B;

		// Token: 0x040004D3 RID: 1235
		private bool _NoRounding;

		// Token: 0x040004D4 RID: 1236
		private Rectangle _Rectangle;

		// Token: 0x040004D5 RID: 1237
		private LinearGradientBrush _Gradient;
	}
}
