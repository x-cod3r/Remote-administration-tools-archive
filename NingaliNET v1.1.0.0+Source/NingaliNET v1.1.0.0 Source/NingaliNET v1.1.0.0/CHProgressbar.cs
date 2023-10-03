using System;
using System.Drawing;

namespace NINGALINET
{
	// Token: 0x02000052 RID: 82
	internal class CHProgressbar : ThemeControl154
	{
		// Token: 0x17000367 RID: 871
		// (get) Token: 0x060009FC RID: 2556 RVA: 0x000557DC File Offset: 0x000539DC
		// (set) Token: 0x060009FD RID: 2557 RVA: 0x000557F4 File Offset: 0x000539F4
		public int Maximum
		{
			get
			{
				return this._Maximum;
			}
			set
			{
				if (value < this._Value)
				{
					this._Value = value;
				}
				this._Maximum = value;
				this.Invalidate();
			}
		}

		// Token: 0x17000368 RID: 872
		// (get) Token: 0x060009FE RID: 2558 RVA: 0x00055824 File Offset: 0x00053A24
		// (set) Token: 0x060009FF RID: 2559 RVA: 0x0005584C File Offset: 0x00053A4C
		public int Value
		{
			get
			{
				int value = this._Value;
				int result;
				if (value == 0)
				{
					result = 0;
				}
				else
				{
					result = this._Value;
				}
				return result;
			}
			set
			{
				int num = value;
				if (num > this._Maximum)
				{
					value = this._Maximum;
				}
				this._Value = value;
				this.Invalidate();
			}
		}

		// Token: 0x06000A00 RID: 2560 RVA: 0x0005587C File Offset: 0x00053A7C
		public CHProgressbar()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.Transparent = true;
			this.BackColor = Color.Transparent;
			this._Value = 0;
			this.Maximum = 100;
		}

		// Token: 0x06000A01 RID: 2561 RVA: 0x000558B8 File Offset: 0x00053AB8
		protected override void PaintHook()
		{
			this.G.Clear(Color.Transparent);
			int value = this._Value;
			checked
			{
				if (value > 2)
				{
					Graphics arg_5E_0 = this.G;
					Brush arg_5E_1 = new SolidBrush(Color.WhiteSmoke);
					Rectangle rect = new Rectangle(4, 4, (int)Math.Round(unchecked((double)this._Value / (double)this._Maximum * (double)this.Width)) - 8, this.Height - 8);
					arg_5E_0.FillRectangle(arg_5E_1, rect);
				}
				else if (value > 0)
				{
					Graphics arg_AC_0 = this.G;
					Brush arg_AC_1 = new SolidBrush(Color.WhiteSmoke);
					Rectangle rect = new Rectangle(4, 4, (int)Math.Round(unchecked((double)this._Value / (double)this._Maximum * (double)this.Width)) - 2, this.Height - 8);
					arg_AC_0.FillRectangle(arg_AC_1, rect);
				}
				this.DrawBorders(new Pen(new SolidBrush(Color.Black)));
			}
		}

		// Token: 0x06000A02 RID: 2562 RVA: 0x00002F54 File Offset: 0x00001154
		protected override void ColorHook()
		{
		}

		// Token: 0x040004DE RID: 1246
		private int _Maximum;

		// Token: 0x040004DF RID: 1247
		private int _Value;
	}
}
