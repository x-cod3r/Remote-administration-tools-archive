using System;
using System.Drawing;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x0200004E RID: 78
	internal class TxtBox : ThemeControl
	{
		// Token: 0x17000362 RID: 866
		// (get) Token: 0x060009DE RID: 2526 RVA: 0x00005290 File Offset: 0x00003490
		// (set) Token: 0x060009DF RID: 2527 RVA: 0x00005298 File Offset: 0x00003498
		public bool UseSystemPasswordChar
		{
			get
			{
				return this._passmask;
			}
			set
			{
				this.txtbox.UseSystemPasswordChar = this.UseSystemPasswordChar;
				this._passmask = value;
				this.Invalidate();
			}
		}

		// Token: 0x17000363 RID: 867
		// (get) Token: 0x060009E0 RID: 2528 RVA: 0x00054EF8 File Offset: 0x000530F8
		// (set) Token: 0x060009E1 RID: 2529 RVA: 0x000052B8 File Offset: 0x000034B8
		public int MaxLength
		{
			get
			{
				return this._maxchars;
			}
			set
			{
				this._maxchars = value;
				this.txtbox.MaxLength = this.MaxLength;
				this.Invalidate();
			}
		}

		// Token: 0x17000364 RID: 868
		// (get) Token: 0x060009E2 RID: 2530 RVA: 0x00054F10 File Offset: 0x00053110
		// (set) Token: 0x060009E3 RID: 2531 RVA: 0x000052D8 File Offset: 0x000034D8
		public HorizontalAlignment TextAlignment
		{
			get
			{
				return this._align;
			}
			set
			{
				this._align = value;
				this.Invalidate();
			}
		}

		// Token: 0x060009E4 RID: 2532 RVA: 0x00002F54 File Offset: 0x00001154
		protected override void OnPaintBackground(PaintEventArgs pevent)
		{
		}

		// Token: 0x060009E5 RID: 2533 RVA: 0x000052E7 File Offset: 0x000034E7
		protected override void OnTextChanged(EventArgs e)
		{
			base.OnTextChanged(e);
			this.Invalidate();
		}

		// Token: 0x060009E6 RID: 2534 RVA: 0x00054F28 File Offset: 0x00053128
		protected override void OnBackColorChanged(EventArgs e)
		{
			base.OnBackColorChanged(e);
			this.txtbox.BackColor = this.BackColor;
			this.Invalidate();
		}

		// Token: 0x060009E7 RID: 2535 RVA: 0x00054F54 File Offset: 0x00053154
		protected override void OnForeColorChanged(EventArgs e)
		{
			base.OnForeColorChanged(e);
			this.txtbox.ForeColor = this.ForeColor;
			this.Invalidate();
		}

		// Token: 0x060009E8 RID: 2536 RVA: 0x000052F6 File Offset: 0x000034F6
		protected override void OnFontChanged(EventArgs e)
		{
			base.OnFontChanged(e);
			this.txtbox.Font = this.Font;
		}

		// Token: 0x060009E9 RID: 2537 RVA: 0x00005310 File Offset: 0x00003510
		protected override void OnGotFocus(EventArgs e)
		{
			base.OnGotFocus(e);
			this.txtbox.Focus();
		}

		// Token: 0x060009EA RID: 2538 RVA: 0x00005325 File Offset: 0x00003525
		public void TextChngTxtBox()
		{
			this.Text = this.txtbox.Text;
		}

		// Token: 0x060009EB RID: 2539 RVA: 0x00005338 File Offset: 0x00003538
		public void TextChng()
		{
			this.txtbox.Text = this.Text;
		}

		// Token: 0x060009EC RID: 2540 RVA: 0x00054F80 File Offset: 0x00053180
		protected override void WndProc(ref Message m)
		{
			int msg = m.Msg;
			if (msg == 15)
			{
				this.Invalidate();
				base.WndProc(ref m);
				this.PaintHook();
			}
			else
			{
				base.WndProc(ref m);
			}
		}

		// Token: 0x060009ED RID: 2541 RVA: 0x00054FB8 File Offset: 0x000531B8
		public TxtBox()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.txtbox = new TextBox();
			this._passmask = false;
			this._maxchars = 32767;
			this.Controls.Add(this.txtbox);
			this.txtbox.Multiline = false;
			this.txtbox.BackColor = Color.FromArgb(0, 0, 0);
			this.txtbox.ForeColor = this.ForeColor;
			this.txtbox.Text = string.Empty;
			this.txtbox.TextAlign = HorizontalAlignment.Center;
			this.txtbox.BorderStyle = BorderStyle.None;
			Control arg_A1_0 = this.txtbox;
			Point location = new Point(5, 8);
			arg_A1_0.Location = location;
			this.txtbox.Font = new Font("Arial", 8.25f, FontStyle.Bold);
			Control arg_E0_0 = this.txtbox;
			Size size = checked(new Size(this.Width - 8, this.Height - 11));
			arg_E0_0.Size = size;
			this.txtbox.UseSystemPasswordChar = this.UseSystemPasswordChar;
			this.Text = "";
			this.DoubleBuffered = true;
		}

		// Token: 0x060009EE RID: 2542 RVA: 0x000550D0 File Offset: 0x000532D0
		public override void PaintHook()
		{
			this.BackColor = Color.White;
			this.G.Clear(this.Parent.BackColor);
			Pen pen = new Pen(Color.FromArgb(204, 204, 204), 1f);
			Pen pen2 = new Pen(Color.FromArgb(249, 249, 249), 8f);
			Graphics arg_8A_0 = this.G;
			Brush arg_8A_1 = Brushes.White;
			checked
			{
				Rectangle rectangle = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
				arg_8A_0.FillPath(arg_8A_1, Draw.RoundRect(rectangle, 2));
				Graphics arg_B6_0 = this.G;
				Pen arg_B6_1 = pen2;
				rectangle = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
				arg_B6_0.DrawPath(arg_B6_1, Draw.RoundRect(rectangle, 2));
				Graphics arg_E2_0 = this.G;
				Pen arg_E2_1 = pen;
				rectangle = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
				arg_E2_0.DrawPath(arg_E2_1, Draw.RoundRect(rectangle, 2));
				this.Height = this.txtbox.Height + 16;
				Font font = new Font("Tahoma", 9f, FontStyle.Regular);
				this.txtbox.Width = this.Width - 12;
				this.txtbox.ForeColor = Color.FromArgb(72, 72, 72);
				this.txtbox.Font = font;
				this.txtbox.TextAlign = this.TextAlignment;
				this.txtbox.UseSystemPasswordChar = this.UseSystemPasswordChar;
				this.DrawCorners(this.Parent.BackColor, this.ClientRectangle);
			}
		}

		// Token: 0x040004D6 RID: 1238
		private TextBox txtbox;

		// Token: 0x040004D7 RID: 1239
		private bool _passmask;

		// Token: 0x040004D8 RID: 1240
		private int _maxchars;

		// Token: 0x040004D9 RID: 1241
		private HorizontalAlignment _align;
	}
}
