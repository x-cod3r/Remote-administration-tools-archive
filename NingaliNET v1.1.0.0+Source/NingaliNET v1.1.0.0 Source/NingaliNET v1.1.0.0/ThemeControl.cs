using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x0200004B RID: 75
	internal abstract class ThemeControl : Control
	{
		// Token: 0x060009BB RID: 2491 RVA: 0x00005074 File Offset: 0x00003274
		public ThemeControl()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.SetStyle(ControlStyles.UserPaint | ControlStyles.Opaque | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer, true);
			this.B = new Bitmap(1, 1);
			this.G = Graphics.FromImage(this.B);
		}

		// Token: 0x060009BC RID: 2492 RVA: 0x000050AB File Offset: 0x000032AB
		public void AllowTransparent()
		{
			this.SetStyle(ControlStyles.Opaque, false);
			this.SetStyle(ControlStyles.SupportsTransparentBackColor, true);
		}

		// Token: 0x1700035C RID: 860
		// (get) Token: 0x060009BD RID: 2493 RVA: 0x00054190 File Offset: 0x00052390
		// (set) Token: 0x060009BE RID: 2494 RVA: 0x00004F59 File Offset: 0x00003159
		public override string Text
		{
			get
			{
				return base.Text;
			}
			set
			{
				base.Text = value;
				this.Invalidate();
			}
		}

		// Token: 0x060009BF RID: 2495 RVA: 0x000050C1 File Offset: 0x000032C1
		protected override void OnMouseLeave(EventArgs e)
		{
			this.ChangeMouseState(ThemeControl.State.MouseNone);
			base.OnMouseLeave(e);
		}

		// Token: 0x060009C0 RID: 2496 RVA: 0x000050D1 File Offset: 0x000032D1
		protected override void OnMouseEnter(EventArgs e)
		{
			this.ChangeMouseState(ThemeControl.State.MouseOver);
			base.OnMouseEnter(e);
		}

		// Token: 0x060009C1 RID: 2497 RVA: 0x000050E1 File Offset: 0x000032E1
		protected override void OnMouseUp(MouseEventArgs e)
		{
			this.ChangeMouseState(ThemeControl.State.MouseOver);
			base.OnMouseUp(e);
		}

		// Token: 0x060009C2 RID: 2498 RVA: 0x000050F1 File Offset: 0x000032F1
		protected override void OnMouseDown(MouseEventArgs e)
		{
			if (e.Button == MouseButtons.Left)
			{
				this.ChangeMouseState(ThemeControl.State.MouseDown);
			}
			base.OnMouseDown(e);
		}

		// Token: 0x060009C3 RID: 2499 RVA: 0x00005110 File Offset: 0x00003310
		private void ChangeMouseState(ThemeControl.State e)
		{
			this.MouseState = e;
			this.Invalidate();
		}

		// Token: 0x060009C4 RID: 2500
		public abstract void PaintHook();

		// Token: 0x060009C5 RID: 2501 RVA: 0x0000511F File Offset: 0x0000331F
		protected sealed override void OnPaint(PaintEventArgs e)
		{
			if (this.Width != 0 && this.Height != 0)
			{
				this.PaintHook();
				e.Graphics.DrawImage(this.B, 0, 0);
			}
		}

		// Token: 0x060009C6 RID: 2502 RVA: 0x00054980 File Offset: 0x00052B80
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

		// Token: 0x1700035D RID: 861
		// (get) Token: 0x060009C7 RID: 2503 RVA: 0x00005152 File Offset: 0x00003352
		// (set) Token: 0x060009C8 RID: 2504 RVA: 0x0000515A File Offset: 0x0000335A
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

		// Token: 0x1700035E RID: 862
		// (get) Token: 0x060009C9 RID: 2505 RVA: 0x000549DC File Offset: 0x00052BDC
		// (set) Token: 0x060009CA RID: 2506 RVA: 0x00005169 File Offset: 0x00003369
		public Image Image
		{
			get
			{
				return this._Image;
			}
			set
			{
				this._Image = value;
				this.Invalidate();
			}
		}

		// Token: 0x1700035F RID: 863
		// (get) Token: 0x060009CB RID: 2507 RVA: 0x000549F4 File Offset: 0x00052BF4
		public int ImageWidth
		{
			get
			{
				int result;
				if (this._Image == null)
				{
					result = 0;
				}
				else
				{
					result = this._Image.Width;
				}
				return result;
			}
		}

		// Token: 0x17000360 RID: 864
		// (get) Token: 0x060009CC RID: 2508 RVA: 0x00054A20 File Offset: 0x00052C20
		public int ImageTop
		{
			get
			{
				int result;
				if (this._Image == null)
				{
					result = 0;
				}
				else
				{
					result = checked(this.Height / 2 - this._Image.Height / 2);
				}
				return result;
			}
		}

		// Token: 0x060009CD RID: 2509 RVA: 0x00054A54 File Offset: 0x00052C54
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

		// Token: 0x060009CE RID: 2510 RVA: 0x00054AFC File Offset: 0x00052CFC
		protected void DrawBorders(Pen p1, Pen p2, Rectangle rect)
		{
			checked
			{
				this.G.DrawRectangle(p1, rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
				this.G.DrawRectangle(p2, rect.X + 1, rect.Y + 1, rect.Width - 3, rect.Height - 3);
			}
		}

		// Token: 0x060009CF RID: 2511 RVA: 0x00005178 File Offset: 0x00003378
		protected void DrawText(HorizontalAlignment a, Color c, int x)
		{
			this.DrawText(a, c, x, 0);
		}

		// Token: 0x060009D0 RID: 2512 RVA: 0x00054B68 File Offset: 0x00052D68
		protected void DrawText(HorizontalAlignment a, Color c, int x, int y)
		{
			checked
			{
				if (!string.IsNullOrEmpty(this.Text))
				{
					this._Size = this.G.MeasureString(this.Text, this.Font).ToSize();
					this._Brush = new SolidBrush(c);
					switch (a)
					{
					case HorizontalAlignment.Left:
						this.G.DrawString(this.Text, this.Font, this._Brush, (float)x, (float)(this.Height / 2 - this._Size.Height / 2 + y));
						break;
					case HorizontalAlignment.Right:
						this.G.DrawString(this.Text, this.Font, this._Brush, (float)(this.Width - this._Size.Width - x), (float)(this.Height / 2 - this._Size.Height / 2 + y));
						break;
					case HorizontalAlignment.Center:
						this.G.DrawString(this.Text, this.Font, this._Brush, (float)(this.Width / 2 - this._Size.Width / 2 + x), (float)(this.Height / 2 - this._Size.Height / 2 + y));
						break;
					}
				}
			}
		}

		// Token: 0x060009D1 RID: 2513 RVA: 0x00005184 File Offset: 0x00003384
		protected void DrawIcon(HorizontalAlignment a, int x)
		{
			this.DrawIcon(a, x, 0);
		}

		// Token: 0x060009D2 RID: 2514 RVA: 0x00054CAC File Offset: 0x00052EAC
		protected void DrawIcon(HorizontalAlignment a, int x, int y)
		{
			checked
			{
				if (this._Image != null)
				{
					switch (a)
					{
					case HorizontalAlignment.Left:
						this.G.DrawImage(this._Image, x, this.Height / 2 - this._Image.Height / 2 + y);
						break;
					case HorizontalAlignment.Right:
						this.G.DrawImage(this._Image, this.Width - this._Image.Width - x, this.Height / 2 - this._Image.Height / 2 + y);
						break;
					case HorizontalAlignment.Center:
						this.G.DrawImage(this._Image, this.Width / 2 - this._Image.Width / 2, this.Height / 2 - this._Image.Height / 2);
						break;
					}
				}
			}
		}

		// Token: 0x060009D3 RID: 2515 RVA: 0x0000518F File Offset: 0x0000338F
		protected void DrawGradient(Color c1, Color c2, int x, int y, int width, int height, float angle)
		{
			this._Rectangle = new Rectangle(x, y, width, height);
			this._Gradient = new LinearGradientBrush(this._Rectangle, c1, c2, angle);
			this.G.FillRectangle(this._Gradient, this._Rectangle);
		}

		// Token: 0x040004C4 RID: 1220
		protected Graphics G;

		// Token: 0x040004C5 RID: 1221
		protected Bitmap B;

		// Token: 0x040004C6 RID: 1222
		protected ThemeControl.State MouseState;

		// Token: 0x040004C7 RID: 1223
		private bool _NoRounding;

		// Token: 0x040004C8 RID: 1224
		private Image _Image;

		// Token: 0x040004C9 RID: 1225
		private Size _Size;

		// Token: 0x040004CA RID: 1226
		private Rectangle _Rectangle;

		// Token: 0x040004CB RID: 1227
		private LinearGradientBrush _Gradient;

		// Token: 0x040004CC RID: 1228
		private SolidBrush _Brush;

		// Token: 0x0200004C RID: 76
		protected enum State : byte
		{
			// Token: 0x040004CE RID: 1230
			MouseNone,
			// Token: 0x040004CF RID: 1231
			MouseOver,
			// Token: 0x040004D0 RID: 1232
			MouseDown
		}
	}
}
