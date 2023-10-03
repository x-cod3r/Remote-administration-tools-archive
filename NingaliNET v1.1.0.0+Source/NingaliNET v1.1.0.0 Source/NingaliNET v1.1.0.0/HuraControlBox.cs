using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x02000066 RID: 102
	public class HuraControlBox : Control
	{
		// Token: 0x06000B72 RID: 2930 RVA: 0x000064B4 File Offset: 0x000046B4
		[DebuggerNonUserCode]
		static HuraControlBox()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			HuraControlBox.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000B73 RID: 2931 RVA: 0x00059A58 File Offset: 0x00057C58
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = HuraControlBox.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (HuraControlBox.__ENCList.Count == HuraControlBox.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = HuraControlBox.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = HuraControlBox.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									HuraControlBox.__ENCList[num] = HuraControlBox.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						HuraControlBox.__ENCList.RemoveRange(num, HuraControlBox.__ENCList.Count - num);
						HuraControlBox.__ENCList.Capacity = HuraControlBox.__ENCList.Count;
					}
					HuraControlBox.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x14000001 RID: 1
		// (add) Token: 0x06000B74 RID: 2932 RVA: 0x000064C5 File Offset: 0x000046C5
		// (remove) Token: 0x06000B75 RID: 2933 RVA: 0x000064DE File Offset: 0x000046DE
		public event HuraControlBox.ColorSchemeChangedEventHandler ColorSchemeChanged
		{
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			add
			{
				this.ColorSchemeChangedEvent = (HuraControlBox.ColorSchemeChangedEventHandler)Delegate.Combine(this.ColorSchemeChangedEvent, value);
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			remove
			{
				this.ColorSchemeChangedEvent = (HuraControlBox.ColorSchemeChangedEventHandler)Delegate.Remove(this.ColorSchemeChangedEvent, value);
			}
		}

		// Token: 0x170003BD RID: 957
		// (get) Token: 0x06000B76 RID: 2934 RVA: 0x00059B40 File Offset: 0x00057D40
		// (set) Token: 0x06000B77 RID: 2935 RVA: 0x00059B58 File Offset: 0x00057D58
		public HuraControlBox.ColorSchemes ColorScheme
		{
			get
			{
				return this._ColorScheme;
			}
			set
			{
				this._ColorScheme = value;
				HuraControlBox.ColorSchemeChangedEventHandler colorSchemeChangedEvent = this.ColorSchemeChangedEvent;
				if (colorSchemeChangedEvent != null)
				{
					colorSchemeChangedEvent();
				}
			}
		}

		// Token: 0x06000B78 RID: 2936 RVA: 0x00059B84 File Offset: 0x00057D84
		protected void OnColorSchemeChanged()
		{
			this.Invalidate();
			HuraControlBox.ColorSchemes colorScheme = this.ColorScheme;
			if (colorScheme == HuraControlBox.ColorSchemes.Dark)
			{
				this.BackColor = Color.FromArgb(40, 40, 40);
				this.ForeColor = Color.White;
				this.AccentColor = Color.FromArgb(60, 60, 60);
			}
		}

		// Token: 0x170003BE RID: 958
		// (get) Token: 0x06000B79 RID: 2937 RVA: 0x00059BD4 File Offset: 0x00057DD4
		// (set) Token: 0x06000B7A RID: 2938 RVA: 0x000064F7 File Offset: 0x000046F7
		public Color AccentColor
		{
			get
			{
				return this._AccentColor;
			}
			set
			{
				this._AccentColor = value;
				this.Invalidate();
			}
		}

		// Token: 0x06000B7B RID: 2939 RVA: 0x00059BEC File Offset: 0x00057DEC
		public HuraControlBox()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.ColorSchemeChanged += new HuraControlBox.ColorSchemeChangedEventHandler(this.OnColorSchemeChanged);
			HuraControlBox.__ENCAddToList(this);
			this.ButtonState = HuraControlBox.ButtonHover.None;
			this.DoubleBuffered = true;
			this.SetStyle(ControlStyles.AllPaintingInWmPaint, true);
			this.SetStyle(ControlStyles.UserPaint, true);
			this.SetStyle(ControlStyles.ResizeRedraw, true);
			this.SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
			this.ForeColor = Color.FromArgb(50, 50, 50);
			this.BackColor = Color.FromArgb(50, 50, 50);
			this.AccentColor = Color.DodgerBlue;
			this.ColorScheme = HuraControlBox.ColorSchemes.Dark;
			this.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
		}

		// Token: 0x06000B7C RID: 2940 RVA: 0x00059C90 File Offset: 0x00057E90
		protected override void OnResize(EventArgs e)
		{
			base.OnResize(e);
			Size size = new Size(100, 25);
			this.Size = size;
		}

		// Token: 0x06000B7D RID: 2941 RVA: 0x00059CB8 File Offset: 0x00057EB8
		protected override void OnMouseMove(MouseEventArgs e)
		{
			base.OnMouseMove(e);
			int x = e.Location.X;
			int y = e.Location.Y;
			if (y > 0 && y < checked(this.Height - 2))
			{
				if (x > 0 && x < 34)
				{
					this.ButtonState = HuraControlBox.ButtonHover.Minimize;
				}
				else if (x > 33 && x < 65)
				{
					this.ButtonState = HuraControlBox.ButtonHover.Maximize;
				}
				else if (x > 64 && x < this.Width)
				{
					this.ButtonState = HuraControlBox.ButtonHover.Close;
				}
				else
				{
					this.ButtonState = HuraControlBox.ButtonHover.None;
				}
			}
			else
			{
				this.ButtonState = HuraControlBox.ButtonHover.None;
			}
			this.Invalidate();
		}

		// Token: 0x06000B7E RID: 2942 RVA: 0x00059D64 File Offset: 0x00057F64
		protected override void OnPaint(PaintEventArgs e)
		{
			Bitmap bitmap = new Bitmap(this.Width, this.Height);
			Graphics graphics = Graphics.FromImage(bitmap);
			base.OnPaint(e);
			graphics.Clear(this.BackColor);
			switch (this.ButtonState)
			{
			case HuraControlBox.ButtonHover.Minimize:
			{
				Graphics arg_69_0 = graphics;
				Brush arg_69_1 = new SolidBrush(this._AccentColor);
				Rectangle rect = new Rectangle(3, 0, 30, this.Height);
				arg_69_0.FillRectangle(arg_69_1, rect);
				break;
			}
			case HuraControlBox.ButtonHover.Maximize:
			{
				Graphics arg_8F_0 = graphics;
				Brush arg_8F_1 = new SolidBrush(this._AccentColor);
				Rectangle rect = new Rectangle(34, 0, 30, this.Height);
				arg_8F_0.FillRectangle(arg_8F_1, rect);
				break;
			}
			case HuraControlBox.ButtonHover.Close:
			{
				Graphics arg_B5_0 = graphics;
				Brush arg_B5_1 = new SolidBrush(this._AccentColor);
				Rectangle rect = new Rectangle(65, 0, 35, this.Height);
				arg_B5_0.FillRectangle(arg_B5_1, rect);
				break;
			}
			case HuraControlBox.ButtonHover.None:
				graphics.Clear(this.BackColor);
				break;
			}
			Font font = new Font("Marlett", 9.75f);
			Graphics arg_123_0 = graphics;
			string arg_123_1 = "r";
			Font arg_123_2 = font;
			Brush arg_123_3 = new SolidBrush(Color.FromArgb(210, 210, 210));
			Point point = new Point(checked(this.Width - 16), 7);
			arg_123_0.DrawString(arg_123_1, arg_123_2, arg_123_3, point, new StringFormat
			{
				Alignment = StringAlignment.Center
			});
			switch (this.Parent.FindForm().WindowState)
			{
			case FormWindowState.Normal:
			{
				Graphics arg_193_0 = graphics;
				string arg_193_1 = "1";
				Font arg_193_2 = font;
				Brush arg_193_3 = new SolidBrush(Color.FromArgb(210, 210, 210));
				point = new Point(51, 7);
				arg_193_0.DrawString(arg_193_1, arg_193_2, arg_193_3, point, new StringFormat
				{
					Alignment = StringAlignment.Center
				});
				break;
			}
			case FormWindowState.Maximized:
			{
				Graphics arg_1DD_0 = graphics;
				string arg_1DD_1 = "2";
				Font arg_1DD_2 = font;
				Brush arg_1DD_3 = new SolidBrush(Color.FromArgb(210, 210, 210));
				point = new Point(51, 7);
				arg_1DD_0.DrawString(arg_1DD_1, arg_1DD_2, arg_1DD_3, point, new StringFormat
				{
					Alignment = StringAlignment.Center
				});
				break;
			}
			}
			Graphics arg_225_0 = graphics;
			string arg_225_1 = "0";
			Font arg_225_2 = font;
			Brush arg_225_3 = new SolidBrush(Color.FromArgb(210, 210, 210));
			point = new Point(20, 7);
			arg_225_0.DrawString(arg_225_1, arg_225_2, arg_225_3, point, new StringFormat
			{
				Alignment = StringAlignment.Center
			});
			Graphics arg_23C_0 = e.Graphics;
			Image arg_23C_1 = bitmap;
			point = new Point(0, 0);
			arg_23C_0.DrawImage(arg_23C_1, point);
			graphics.Dispose();
			bitmap.Dispose();
		}

		// Token: 0x06000B7F RID: 2943 RVA: 0x00059FC0 File Offset: 0x000581C0
		protected override void OnMouseUp(MouseEventArgs e)
		{
			base.OnMouseDown(e);
			switch (this.ButtonState)
			{
			case HuraControlBox.ButtonHover.Minimize:
				this.Parent.FindForm().WindowState = FormWindowState.Minimized;
				break;
			case HuraControlBox.ButtonHover.Maximize:
				if (this.Parent.FindForm().WindowState == FormWindowState.Normal)
				{
					this.Parent.FindForm().WindowState = FormWindowState.Maximized;
				}
				else
				{
					this.Parent.FindForm().WindowState = FormWindowState.Normal;
				}
				break;
			case HuraControlBox.ButtonHover.Close:
				this.Parent.FindForm().Close();
				break;
			}
		}

		// Token: 0x06000B80 RID: 2944 RVA: 0x00006506 File Offset: 0x00004706
		protected override void OnMouseLeave(EventArgs e)
		{
			base.OnMouseLeave(e);
			this.ButtonState = HuraControlBox.ButtonHover.None;
			this.Invalidate();
		}

		// Token: 0x0400055C RID: 1372
		private static List<WeakReference> __ENCList;

		// Token: 0x0400055D RID: 1373
		private HuraControlBox.ColorSchemeChangedEventHandler ColorSchemeChangedEvent;

		// Token: 0x0400055E RID: 1374
		private HuraControlBox.ColorSchemes _ColorScheme;

		// Token: 0x0400055F RID: 1375
		private Color _AccentColor;

		// Token: 0x04000560 RID: 1376
		private HuraControlBox.ButtonHover ButtonState;

		// Token: 0x02000067 RID: 103
		public enum ColorSchemes
		{
			// Token: 0x04000562 RID: 1378
			Dark
		}

		// Token: 0x02000068 RID: 104
		// (Invoke) Token: 0x06000B84 RID: 2948
		public delegate void ColorSchemeChangedEventHandler();

		// Token: 0x02000069 RID: 105
		public enum ButtonHover
		{
			// Token: 0x04000564 RID: 1380
			Minimize,
			// Token: 0x04000565 RID: 1381
			Maximize,
			// Token: 0x04000566 RID: 1382
			Close,
			// Token: 0x04000567 RID: 1383
			None
		}
	}
}
