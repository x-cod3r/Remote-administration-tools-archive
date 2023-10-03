using System;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x02000054 RID: 84
	internal class ButtonBlue : ThemeControl
	{
		// Token: 0x06000A05 RID: 2565 RVA: 0x000053C1 File Offset: 0x000035C1
		[DebuggerNonUserCode]
		public ButtonBlue()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x06000A06 RID: 2566 RVA: 0x00055C80 File Offset: 0x00053E80
		public override void PaintHook()
		{
			this.Font = new Font("Arial", 10f);
			this.G.Clear(this.BackColor);
			this.G.SmoothingMode = SmoothingMode.HighQuality;
			checked
			{
				switch (this.MouseState)
				{
				case ThemeControl.State.MouseNone:
				{
					Pen pen = new Pen(Color.FromArgb(34, 112, 171), 1f);
					LinearGradientBrush brush = new LinearGradientBrush(this.ClientRectangle, Color.FromArgb(51, 159, 231), Color.FromArgb(33, 128, 206), LinearGradientMode.Vertical);
					this.G.FillPath(brush, Draw.RoundRect(this.ClientRectangle, 4));
					Graphics arg_D7_0 = this.G;
					Pen arg_D7_1 = pen;
					Rectangle rectangle = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_D7_0.DrawPath(arg_D7_1, Draw.RoundRect(rectangle, 3));
					this.G.DrawLine(new Pen(Color.FromArgb(131, 197, 241)), 2, 1, this.Width - 3, 1);
					this.DrawText(HorizontalAlignment.Center, Color.FromArgb(240, 240, 240), 0);
					break;
				}
				case ThemeControl.State.MouseOver:
				{
					Pen pen2 = new Pen(Color.FromArgb(34, 112, 171), 1f);
					LinearGradientBrush brush2 = new LinearGradientBrush(this.ClientRectangle, Color.FromArgb(54, 167, 243), Color.FromArgb(35, 165, 217), LinearGradientMode.Vertical);
					this.G.FillPath(brush2, Draw.RoundRect(this.ClientRectangle, 4));
					Graphics arg_1B7_0 = this.G;
					Pen arg_1B7_1 = pen2;
					Rectangle rectangle = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_1B7_0.DrawPath(arg_1B7_1, Draw.RoundRect(rectangle, 3));
					this.G.DrawLine(new Pen(Color.FromArgb(131, 197, 241)), 2, 1, this.Width - 3, 1);
					this.DrawText(HorizontalAlignment.Center, Color.FromArgb(240, 240, 240), -1);
					break;
				}
				case ThemeControl.State.MouseDown:
				{
					Pen pen3 = new Pen(Color.FromArgb(34, 112, 171), 1f);
					LinearGradientBrush brush3 = new LinearGradientBrush(this.ClientRectangle, Color.FromArgb(37, 124, 196), Color.FromArgb(53, 153, 219), LinearGradientMode.Vertical);
					this.G.FillPath(brush3, Draw.RoundRect(this.ClientRectangle, 4));
					Graphics arg_294_0 = this.G;
					Pen arg_294_1 = pen3;
					Rectangle rectangle = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_294_0.DrawPath(arg_294_1, Draw.RoundRect(rectangle, 3));
					this.DrawText(HorizontalAlignment.Center, Color.FromArgb(250, 250, 250), 1);
					break;
				}
				}
				this.Cursor = Cursors.Hand;
			}
		}
	}
}
