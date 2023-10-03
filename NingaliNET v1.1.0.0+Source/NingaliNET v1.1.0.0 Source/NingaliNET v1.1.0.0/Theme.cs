using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x02000048 RID: 72
	internal abstract class Theme : ContainerControl
	{
		// Token: 0x0600099D RID: 2461 RVA: 0x00004F31 File Offset: 0x00003131
		public Theme()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this._Resizable = true;
			this._MoveHeight = 24;
			this.SetStyle(ControlStyles.UserPaint | ControlStyles.Opaque | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer, true);
		}

		// Token: 0x0600099E RID: 2462 RVA: 0x00054124 File Offset: 0x00052324
		protected override void OnHandleCreated(EventArgs e)
		{
			this.Dock = DockStyle.Fill;
			this.ParentIsForm = (this.Parent is Form);
			if (this.ParentIsForm)
			{
				if (!(this._TransparencyKey == Color.Empty))
				{
					this.ParentForm.TransparencyKey = this._TransparencyKey;
				}
				this.ParentForm.FormBorderStyle = FormBorderStyle.None;
			}
			base.OnHandleCreated(e);
		}

		// Token: 0x17000356 RID: 854
		// (get) Token: 0x0600099F RID: 2463 RVA: 0x00054190 File Offset: 0x00052390
		// (set) Token: 0x060009A0 RID: 2464 RVA: 0x00004F59 File Offset: 0x00003159
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

		// Token: 0x17000357 RID: 855
		// (get) Token: 0x060009A1 RID: 2465 RVA: 0x00004F68 File Offset: 0x00003168
		// (set) Token: 0x060009A2 RID: 2466 RVA: 0x00004F70 File Offset: 0x00003170
		public bool Resizable
		{
			get
			{
				return this._Resizable;
			}
			set
			{
				this._Resizable = value;
			}
		}

		// Token: 0x17000358 RID: 856
		// (get) Token: 0x060009A3 RID: 2467 RVA: 0x000541A8 File Offset: 0x000523A8
		// (set) Token: 0x060009A4 RID: 2468 RVA: 0x00004F79 File Offset: 0x00003179
		public int MoveHeight
		{
			get
			{
				return this._MoveHeight;
			}
			set
			{
				this._MoveHeight = value;
				this.Header = checked(new Rectangle(7, 7, this.Width - 14, this._MoveHeight - 7));
			}
		}

		// Token: 0x060009A5 RID: 2469 RVA: 0x000541C0 File Offset: 0x000523C0
		protected override void OnMouseDown(MouseEventArgs e)
		{
			if (e.Button == MouseButtons.Left && (!this.ParentIsForm || this.ParentForm.WindowState != FormWindowState.Maximized))
			{
				if (this.Header.Contains(e.Location))
				{
					this.Flag = new IntPtr(2);
				}
				else
				{
					if (this.Current.Position == 0 | !this._Resizable)
					{
						return;
					}
					this.Flag = new IntPtr((int)this.Current.Position);
				}
				this.Capture = false;
				Message message = Message.Create(this.Parent.Handle, 161, this.Flag, IntPtr.Zero);
				this.DefWndProc(ref message);
				base.OnMouseDown(e);
			}
		}

		// Token: 0x060009A6 RID: 2470 RVA: 0x00054288 File Offset: 0x00052488
		private Theme.Pointer GetPointer()
		{
			this.PTC = this.PointToClient(Control.MousePosition);
			this.F1 = (this.PTC.X < 7);
			checked
			{
				this.F2 = (this.PTC.X > this.Width - 7);
				this.F3 = (this.PTC.Y < 7);
				this.F4 = (this.PTC.Y > this.Height - 7);
				Theme.Pointer result;
				if (this.F1 & this.F3)
				{
					Theme.Pointer pointer = new Theme.Pointer(Cursors.SizeNWSE, 13);
					result = pointer;
				}
				else if (this.F1 & this.F4)
				{
					Theme.Pointer pointer = new Theme.Pointer(Cursors.SizeNESW, 16);
					result = pointer;
				}
				else if (this.F2 & this.F3)
				{
					Theme.Pointer pointer = new Theme.Pointer(Cursors.SizeNESW, 14);
					result = pointer;
				}
				else if (this.F2 & this.F4)
				{
					Theme.Pointer pointer = new Theme.Pointer(Cursors.SizeNWSE, 17);
					result = pointer;
				}
				else if (this.F1)
				{
					Theme.Pointer pointer = new Theme.Pointer(Cursors.SizeWE, 10);
					result = pointer;
				}
				else if (this.F2)
				{
					Theme.Pointer pointer = new Theme.Pointer(Cursors.SizeWE, 11);
					result = pointer;
				}
				else if (this.F3)
				{
					Theme.Pointer pointer = new Theme.Pointer(Cursors.SizeNS, 12);
					result = pointer;
				}
				else if (this.F4)
				{
					Theme.Pointer pointer = new Theme.Pointer(Cursors.SizeNS, 15);
					result = pointer;
				}
				else
				{
					Theme.Pointer pointer = new Theme.Pointer(Cursors.Default, 0);
					result = pointer;
				}
				return result;
			}
		}

		// Token: 0x060009A7 RID: 2471 RVA: 0x0005440C File Offset: 0x0005260C
		private void SetCurrent()
		{
			this.Pending = this.GetPointer();
			if (this.Current.Position != this.Pending.Position)
			{
				this.Current = this.GetPointer();
				this.Cursor = this.Current.Cursor;
			}
		}

		// Token: 0x060009A8 RID: 2472 RVA: 0x00004FA0 File Offset: 0x000031A0
		protected override void OnMouseMove(MouseEventArgs e)
		{
			if (this._Resizable)
			{
				this.SetCurrent();
			}
			base.OnMouseMove(e);
		}

		// Token: 0x060009A9 RID: 2473 RVA: 0x0005445C File Offset: 0x0005265C
		protected override void OnSizeChanged(EventArgs e)
		{
			if (this.Width != 0 && this.Height != 0)
			{
				this.Header = checked(new Rectangle(7, 7, this.Width - 14, this._MoveHeight - 7));
				this.Invalidate();
				base.OnSizeChanged(e);
			}
		}

		// Token: 0x060009AA RID: 2474
		public abstract void PaintHook();

		// Token: 0x060009AB RID: 2475 RVA: 0x00004FB7 File Offset: 0x000031B7
		protected sealed override void OnPaint(PaintEventArgs e)
		{
			if (this.Width != 0 && this.Height != 0)
			{
				this.G = e.Graphics;
				this.PaintHook();
			}
		}

		// Token: 0x17000359 RID: 857
		// (get) Token: 0x060009AC RID: 2476 RVA: 0x000544AC File Offset: 0x000526AC
		// (set) Token: 0x060009AD RID: 2477 RVA: 0x00004FE3 File Offset: 0x000031E3
		public Color TransparencyKey
		{
			get
			{
				return this._TransparencyKey;
			}
			set
			{
				this._TransparencyKey = value;
				this.Invalidate();
			}
		}

		// Token: 0x1700035A RID: 858
		// (get) Token: 0x060009AE RID: 2478 RVA: 0x000544C4 File Offset: 0x000526C4
		// (set) Token: 0x060009AF RID: 2479 RVA: 0x00004FF2 File Offset: 0x000031F2
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

		// Token: 0x1700035B RID: 859
		// (get) Token: 0x060009B0 RID: 2480 RVA: 0x000544DC File Offset: 0x000526DC
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

		// Token: 0x060009B1 RID: 2481 RVA: 0x00054508 File Offset: 0x00052708
		protected void DrawCorners(Color c, Rectangle rect)
		{
			this._Brush = new SolidBrush(c);
			this.G.FillRectangle(this._Brush, rect.X, rect.Y, 1, 1);
			checked
			{
				this.G.FillRectangle(this._Brush, rect.X + (rect.Width - 1), rect.Y, 1, 1);
				this.G.FillRectangle(this._Brush, rect.X, rect.Y + (rect.Height - 1), 1, 1);
				this.G.FillRectangle(this._Brush, rect.X + (rect.Width - 1), rect.Y + (rect.Height - 1), 1, 1);
			}
		}

		// Token: 0x060009B2 RID: 2482 RVA: 0x000545D0 File Offset: 0x000527D0
		protected void DrawBorders(Pen p1, Pen p2, Rectangle rect)
		{
			checked
			{
				this.G.DrawRectangle(p1, rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
				this.G.DrawRectangle(p2, rect.X + 1, rect.Y + 1, rect.Width - 3, rect.Height - 3);
			}
		}

		// Token: 0x060009B3 RID: 2483 RVA: 0x00005001 File Offset: 0x00003201
		protected void DrawText(HorizontalAlignment a, Color c, int x)
		{
			this.DrawText(a, c, x, 0);
		}

		// Token: 0x060009B4 RID: 2484 RVA: 0x0005463C File Offset: 0x0005283C
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
						this.G.DrawString(this.Text, this.Font, this._Brush, (float)x, (float)(this._MoveHeight / 2 - this._Size.Height / 2 + y));
						break;
					case HorizontalAlignment.Right:
						this.G.DrawString(this.Text, this.Font, this._Brush, (float)(this.Width - this._Size.Width - x), (float)(this._MoveHeight / 2 - this._Size.Height / 2 + y));
						break;
					case HorizontalAlignment.Center:
						this.G.DrawString(this.Text, this.Font, this._Brush, (float)(this.Width / 2 - this._Size.Width / 2 + x), (float)(this._MoveHeight / 2 - this._Size.Height / 2 + y));
						break;
					}
				}
			}
		}

		// Token: 0x060009B5 RID: 2485 RVA: 0x0000500D File Offset: 0x0000320D
		protected void DrawIcon(HorizontalAlignment a, int x)
		{
			this.DrawIcon(a, x, 0);
		}

		// Token: 0x060009B6 RID: 2486 RVA: 0x00054780 File Offset: 0x00052980
		protected void DrawIcon(HorizontalAlignment a, int x, int y)
		{
			checked
			{
				if (this._Image != null)
				{
					switch (a)
					{
					case HorizontalAlignment.Left:
						this.G.DrawImage(this._Image, x, this._MoveHeight / 2 - this._Image.Height / 2 + y);
						break;
					case HorizontalAlignment.Right:
						this.G.DrawImage(this._Image, this.Width - this._Image.Width - x, this._MoveHeight / 2 - this._Image.Height / 2 + y);
						break;
					case HorizontalAlignment.Center:
						this.G.DrawImage(this._Image, this.Width / 2 - this._Image.Width / 2, this._MoveHeight / 2 - this._Image.Height / 2);
						break;
					}
				}
			}
		}

		// Token: 0x060009B7 RID: 2487 RVA: 0x00005018 File Offset: 0x00003218
		protected void DrawGradient(Color c1, Color c2, int x, int y, int width, int height, float angle)
		{
			this._Rectangle = new Rectangle(x, y, width, height);
			this._Gradient = new LinearGradientBrush(this._Rectangle, c1, c2, angle);
			this.G.FillRectangle(this._Gradient, this._Rectangle);
		}

		// Token: 0x040004AF RID: 1199
		protected Graphics G;

		// Token: 0x040004B0 RID: 1200
		private bool ParentIsForm;

		// Token: 0x040004B1 RID: 1201
		private bool _Resizable;

		// Token: 0x040004B2 RID: 1202
		private int _MoveHeight;

		// Token: 0x040004B3 RID: 1203
		private IntPtr Flag;

		// Token: 0x040004B4 RID: 1204
		private bool F1;

		// Token: 0x040004B5 RID: 1205
		private bool F2;

		// Token: 0x040004B6 RID: 1206
		private bool F3;

		// Token: 0x040004B7 RID: 1207
		private bool F4;

		// Token: 0x040004B8 RID: 1208
		private Point PTC;

		// Token: 0x040004B9 RID: 1209
		private Theme.Pointer Current;

		// Token: 0x040004BA RID: 1210
		private Theme.Pointer Pending;

		// Token: 0x040004BB RID: 1211
		protected Rectangle Header;

		// Token: 0x040004BC RID: 1212
		private Color _TransparencyKey;

		// Token: 0x040004BD RID: 1213
		private Image _Image;

		// Token: 0x040004BE RID: 1214
		private Size _Size;

		// Token: 0x040004BF RID: 1215
		private Rectangle _Rectangle;

		// Token: 0x040004C0 RID: 1216
		private LinearGradientBrush _Gradient;

		// Token: 0x040004C1 RID: 1217
		private SolidBrush _Brush;

		// Token: 0x02000049 RID: 73
		private struct Pointer
		{
			// Token: 0x060009B8 RID: 2488 RVA: 0x00005058 File Offset: 0x00003258
			public Pointer(Cursor c, byte p)
			{
				Class2.zP7eVJHzSiX6G();
				this = default(Theme.Pointer);
				this.Cursor = c;
				this.Position = p;
			}

			// Token: 0x040004C2 RID: 1218
			public readonly Cursor Cursor;

			// Token: 0x040004C3 RID: 1219
			public readonly byte Position;
		}
	}
}
