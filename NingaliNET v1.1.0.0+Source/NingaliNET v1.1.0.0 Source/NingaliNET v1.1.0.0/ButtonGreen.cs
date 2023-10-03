using System;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x02000053 RID: 83
	internal class ButtonGreen : ThemeControl
	{
		// Token: 0x06000A03 RID: 2563 RVA: 0x000053C1 File Offset: 0x000035C1
		[DebuggerNonUserCode]
		public ButtonGreen()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x06000A04 RID: 2564 RVA: 0x0005598C File Offset: 0x00053B8C
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
					Pen pen = new Pen(Color.FromArgb(120, 159, 22), 1f);
					LinearGradientBrush brush = new LinearGradientBrush(this.ClientRectangle, Color.FromArgb(157, 209, 57), Color.FromArgb(130, 181, 18), LinearGradientMode.Vertical);
					this.G.FillPath(brush, Draw.RoundRect(this.ClientRectangle, 4));
					Graphics arg_D7_0 = this.G;
					Pen arg_D7_1 = pen;
					Rectangle rectangle = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_D7_0.DrawPath(arg_D7_1, Draw.RoundRect(rectangle, 3));
					this.G.DrawLine(new Pen(Color.FromArgb(190, 232, 109)), 2, 1, this.Width - 3, 1);
					this.DrawText(HorizontalAlignment.Center, Color.FromArgb(240, 240, 240), 0);
					break;
				}
				case ThemeControl.State.MouseOver:
				{
					Pen pen2 = new Pen(Color.FromArgb(120, 159, 22), 1f);
					LinearGradientBrush brush2 = new LinearGradientBrush(this.ClientRectangle, Color.FromArgb(165, 220, 59), Color.FromArgb(137, 191, 18), LinearGradientMode.Vertical);
					this.G.FillPath(brush2, Draw.RoundRect(this.ClientRectangle, 4));
					Graphics arg_1B4_0 = this.G;
					Pen arg_1B4_1 = pen2;
					Rectangle rectangle = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_1B4_0.DrawPath(arg_1B4_1, Draw.RoundRect(rectangle, 3));
					this.G.DrawLine(new Pen(Color.FromArgb(190, 232, 109)), 2, 1, this.Width - 3, 1);
					this.DrawText(HorizontalAlignment.Center, Color.FromArgb(240, 240, 240), -1);
					break;
				}
				case ThemeControl.State.MouseDown:
				{
					Pen pen3 = new Pen(Color.FromArgb(120, 159, 22), 1f);
					LinearGradientBrush brush3 = new LinearGradientBrush(this.ClientRectangle, Color.FromArgb(125, 171, 25), Color.FromArgb(142, 192, 40), LinearGradientMode.Vertical);
					this.G.FillPath(brush3, Draw.RoundRect(this.ClientRectangle, 4));
					Graphics arg_28E_0 = this.G;
					Pen arg_28E_1 = pen3;
					Rectangle rectangle = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
					arg_28E_0.DrawPath(arg_28E_1, Draw.RoundRect(rectangle, 3));
					this.G.DrawLine(new Pen(Color.FromArgb(142, 172, 30)), 2, 1, this.Width - 3, 1);
					this.DrawText(HorizontalAlignment.Center, Color.FromArgb(250, 250, 250), 1);
					break;
				}
				}
				this.Cursor = Cursors.Hand;
			}
		}
	}
}
