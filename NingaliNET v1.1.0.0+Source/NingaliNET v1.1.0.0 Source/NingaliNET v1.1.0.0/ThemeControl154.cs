using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000059 RID: 89
	internal abstract class ThemeControl154 : Control
	{
		// Token: 0x06000ABB RID: 2747 RVA: 0x00057CF8 File Offset: 0x00055EF8
		public ThemeControl154()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.Items = new Dictionary<string, Color>();
			this.SetStyle(ControlStyles.UserPaint | ControlStyles.Opaque | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer, true);
			this._ImageSize = Size.Empty;
			this.Font = new Font("Verdana", 8f);
			this.MeasureBitmap = new Bitmap(1, 1);
			this.MeasureGraphics = Graphics.FromImage(this.MeasureBitmap);
			this.DrawRadialPath = new GraphicsPath();
			this.InvalidateCustimization();
		}

		// Token: 0x06000ABC RID: 2748 RVA: 0x00057D78 File Offset: 0x00055F78
		protected sealed override void OnHandleCreated(EventArgs e)
		{
			this.InvalidateCustimization();
			this.ColorHook();
			if (this._LockWidth != 0)
			{
				this.Width = this._LockWidth;
			}
			if (this._LockHeight != 0)
			{
				this.Height = this._LockHeight;
			}
			this.Transparent = this._Transparent;
			if (this._Transparent && this._BackColor)
			{
				this.BackColor = Color.Transparent;
			}
			base.OnHandleCreated(e);
		}

		// Token: 0x06000ABD RID: 2749 RVA: 0x00005BBA File Offset: 0x00003DBA
		protected sealed override void OnParentChanged(EventArgs e)
		{
			if (this.Parent != null)
			{
				this.OnCreation();
				this.DoneCreation = true;
				this.InvalidateTimer();
			}
			base.OnParentChanged(e);
		}

		// Token: 0x06000ABE RID: 2750 RVA: 0x00005BE4 File Offset: 0x00003DE4
		private void DoAnimation(bool i)
		{
			this.OnAnimation();
			if (i)
			{
				this.Invalidate();
			}
		}

		// Token: 0x06000ABF RID: 2751 RVA: 0x00057DFC File Offset: 0x00055FFC
		protected sealed override void OnPaint(PaintEventArgs e)
		{
			if (this.Width != 0 && this.Height != 0)
			{
				if (this._Transparent)
				{
					this.PaintHook();
					e.Graphics.DrawImage(this.B, 0, 0);
				}
				else
				{
					this.G = e.Graphics;
					this.PaintHook();
				}
			}
		}

		// Token: 0x06000AC0 RID: 2752 RVA: 0x00005BF5 File Offset: 0x00003DF5
		protected override void OnHandleDestroyed(EventArgs e)
		{
			ThemeShare.RemoveAnimationCallback(new ThemeShare.AnimationDelegate(this.DoAnimation));
			base.OnHandleDestroyed(e);
		}

		// Token: 0x06000AC1 RID: 2753 RVA: 0x00005C10 File Offset: 0x00003E10
		protected sealed override void OnSizeChanged(EventArgs e)
		{
			if (this._Transparent)
			{
				this.InvalidateBitmap();
			}
			this.Invalidate();
			base.OnSizeChanged(e);
		}

		// Token: 0x06000AC2 RID: 2754 RVA: 0x00005C2D File Offset: 0x00003E2D
		protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
		{
			if (this._LockWidth != 0)
			{
				width = this._LockWidth;
			}
			if (this._LockHeight != 0)
			{
				height = this._LockHeight;
			}
			base.SetBoundsCore(x, y, width, height, specified);
		}

		// Token: 0x06000AC3 RID: 2755 RVA: 0x00005C68 File Offset: 0x00003E68
		protected override void OnMouseEnter(EventArgs e)
		{
			this.InPosition = true;
			this.SetState(MouseState.Over);
			base.OnMouseEnter(e);
		}

		// Token: 0x06000AC4 RID: 2756 RVA: 0x00005C7F File Offset: 0x00003E7F
		protected override void OnMouseUp(MouseEventArgs e)
		{
			if (this.InPosition)
			{
				this.SetState(MouseState.Over);
			}
			base.OnMouseUp(e);
		}

		// Token: 0x06000AC5 RID: 2757 RVA: 0x00005C97 File Offset: 0x00003E97
		protected override void OnMouseDown(MouseEventArgs e)
		{
			if (e.Button == MouseButtons.Left)
			{
				this.SetState(MouseState.Down);
			}
			base.OnMouseDown(e);
		}

		// Token: 0x06000AC6 RID: 2758 RVA: 0x00005CB6 File Offset: 0x00003EB6
		protected override void OnMouseLeave(EventArgs e)
		{
			this.InPosition = false;
			this.SetState(MouseState.None);
			base.OnMouseLeave(e);
		}

		// Token: 0x06000AC7 RID: 2759 RVA: 0x00005CCD File Offset: 0x00003ECD
		protected override void OnEnabledChanged(EventArgs e)
		{
			if (this.Enabled)
			{
				this.SetState(MouseState.None);
			}
			else
			{
				this.SetState(MouseState.Block);
			}
			base.OnEnabledChanged(e);
		}

		// Token: 0x06000AC8 RID: 2760 RVA: 0x00005CEE File Offset: 0x00003EEE
		private void SetState(MouseState current)
		{
			this.State = current;
			this.Invalidate();
		}

		// Token: 0x170003A3 RID: 931
		// (get) Token: 0x06000AC9 RID: 2761 RVA: 0x00056EC0 File Offset: 0x000550C0
		// (set) Token: 0x06000ACA RID: 2762 RVA: 0x00002F54 File Offset: 0x00001154
		[Browsable(false), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden), EditorBrowsable(EditorBrowsableState.Never)]
		public override Color ForeColor
		{
			get
			{
				return Color.Empty;
			}
			set
			{
			}
		}

		// Token: 0x170003A4 RID: 932
		// (get) Token: 0x06000ACB RID: 2763 RVA: 0x00056ED4 File Offset: 0x000550D4
		// (set) Token: 0x06000ACC RID: 2764 RVA: 0x00002F54 File Offset: 0x00001154
		[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden), EditorBrowsable(EditorBrowsableState.Never), Browsable(false)]
		public override Image BackgroundImage
		{
			get
			{
				return null;
			}
			set
			{
			}
		}

		// Token: 0x170003A5 RID: 933
		// (get) Token: 0x06000ACD RID: 2765 RVA: 0x00056EE4 File Offset: 0x000550E4
		// (set) Token: 0x06000ACE RID: 2766 RVA: 0x00002F54 File Offset: 0x00001154
		[EditorBrowsable(EditorBrowsableState.Never), Browsable(false), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
		public override ImageLayout BackgroundImageLayout
		{
			get
			{
				return ImageLayout.None;
			}
			set
			{
			}
		}

		// Token: 0x170003A6 RID: 934
		// (get) Token: 0x06000ACF RID: 2767 RVA: 0x00054190 File Offset: 0x00052390
		// (set) Token: 0x06000AD0 RID: 2768 RVA: 0x00004F59 File Offset: 0x00003159
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

		// Token: 0x170003A7 RID: 935
		// (get) Token: 0x06000AD1 RID: 2769 RVA: 0x00056EA8 File Offset: 0x000550A8
		// (set) Token: 0x06000AD2 RID: 2770 RVA: 0x00005528 File Offset: 0x00003728
		public override Font Font
		{
			get
			{
				return base.Font;
			}
			set
			{
				base.Font = value;
				this.Invalidate();
			}
		}

		// Token: 0x170003A8 RID: 936
		// (get) Token: 0x06000AD3 RID: 2771 RVA: 0x00056D84 File Offset: 0x00054F84
		// (set) Token: 0x06000AD4 RID: 2772 RVA: 0x00057E58 File Offset: 0x00056058
		[Category("Misc")]
		public override Color BackColor
		{
			get
			{
				return base.BackColor;
			}
			set
			{
				if (!this.IsHandleCreated && value == Color.Transparent)
				{
					this._BackColor = true;
				}
				else
				{
					base.BackColor = value;
					if (this.Parent != null)
					{
						this.ColorHook();
					}
				}
			}
		}

		// Token: 0x170003A9 RID: 937
		// (get) Token: 0x06000AD5 RID: 2773 RVA: 0x00005CFD File Offset: 0x00003EFD
		// (set) Token: 0x06000AD6 RID: 2774 RVA: 0x00005D05 File Offset: 0x00003F05
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

		// Token: 0x170003AA RID: 938
		// (get) Token: 0x06000AD7 RID: 2775 RVA: 0x00057EA4 File Offset: 0x000560A4
		// (set) Token: 0x06000AD8 RID: 2776 RVA: 0x00005D14 File Offset: 0x00003F14
		public Image Image
		{
			get
			{
				return this._Image;
			}
			set
			{
				if (value == null)
				{
					this._ImageSize = Size.Empty;
				}
				else
				{
					this._ImageSize = value.Size;
				}
				this._Image = value;
				this.Invalidate();
			}
		}

		// Token: 0x170003AB RID: 939
		// (get) Token: 0x06000AD9 RID: 2777 RVA: 0x00005D42 File Offset: 0x00003F42
		// (set) Token: 0x06000ADA RID: 2778 RVA: 0x00057EBC File Offset: 0x000560BC
		public bool Transparent
		{
			get
			{
				return this._Transparent;
			}
			set
			{
				this._Transparent = value;
				if (this.IsHandleCreated)
				{
					bool arg_30_0;
					if (!value)
					{
						if (this.BackColor.A != 255)
						{
							arg_30_0 = true;
							goto IL_30;
						}
					}
					arg_30_0 = false;
					IL_30:
					if (arg_30_0)
					{
						throw new Exception("Unable to change value to false while a transparent BackColor is in use.");
					}
					this.SetStyle(ControlStyles.Opaque, !value);
					this.SetStyle(ControlStyles.SupportsTransparentBackColor, value);
					if (value)
					{
						this.InvalidateBitmap();
					}
					else
					{
						this.B = null;
					}
					this.Invalidate();
				}
			}
		}

		// Token: 0x170003AC RID: 940
		// (get) Token: 0x06000ADB RID: 2779 RVA: 0x00057F38 File Offset: 0x00056138
		// (set) Token: 0x06000ADC RID: 2780 RVA: 0x00057F9C File Offset: 0x0005619C
		public Bloom[] Colors
		{
			get
			{
				List<Bloom> list = new List<Bloom>();
				Dictionary<string, Color>.Enumerator enumerator = this.Items.GetEnumerator();
				while (enumerator.MoveNext())
				{
					List<Bloom> arg_3C_0 = list;
					KeyValuePair<string, Color> current = enumerator.Current;
					string arg_36_1 = current.Key;
					KeyValuePair<string, Color> current2 = enumerator.Current;
					Bloom item = new Bloom(arg_36_1, current2.Value);
					arg_3C_0.Add(item);
				}
				return list.ToArray();
			}
			set
			{
				checked
				{
					for (int i = 0; i < value.Length; i++)
					{
						Bloom bloom = value[i];
						if (this.Items.ContainsKey(bloom.Name))
						{
							this.Items[bloom.Name] = bloom.Value;
						}
					}
					this.InvalidateCustimization();
					this.ColorHook();
					this.Invalidate();
				}
			}
		}

		// Token: 0x170003AD RID: 941
		// (get) Token: 0x06000ADD RID: 2781 RVA: 0x00058008 File Offset: 0x00056208
		// (set) Token: 0x06000ADE RID: 2782 RVA: 0x00058020 File Offset: 0x00056220
		public string Customization
		{
			get
			{
				return this._Customization;
			}
			set
			{
				checked
				{
					if (Operators.CompareString(value, this._Customization, false) != 0)
					{
						Bloom[] colors = this.Colors;
						try
						{
							byte[] value2 = Convert.FromBase64String(value);
							int arg_27_0 = 0;
							int num = colors.Length - 1;
							int num2 = arg_27_0;
							while (true)
							{
								int arg_4E_0 = num2;
								int num3 = num;
								if (arg_4E_0 > num3)
								{
									break;
								}
								colors[num2].Value = Color.FromArgb(BitConverter.ToInt32(value2, num2 * 4));
								num2++;
							}
						}
						catch (Exception arg_52_0)
						{
							ProjectData.SetProjectError(arg_52_0);
							ProjectData.ClearProjectError();
							return;
						}
						this._Customization = value;
						this.Colors = colors;
						this.ColorHook();
						this.Invalidate();
					}
				}
			}
		}

		// Token: 0x170003AE RID: 942
		// (get) Token: 0x06000ADF RID: 2783 RVA: 0x000580B8 File Offset: 0x000562B8
		protected Size ImageSize
		{
			get
			{
				return this._ImageSize;
			}
		}

		// Token: 0x170003AF RID: 943
		// (get) Token: 0x06000AE0 RID: 2784 RVA: 0x000580D0 File Offset: 0x000562D0
		// (set) Token: 0x06000AE1 RID: 2785 RVA: 0x00005D4A File Offset: 0x00003F4A
		protected int LockWidth
		{
			get
			{
				return this._LockWidth;
			}
			set
			{
				this._LockWidth = value;
				if (this.LockWidth != 0 && this.IsHandleCreated)
				{
					this.Width = this.LockWidth;
				}
			}
		}

		// Token: 0x170003B0 RID: 944
		// (get) Token: 0x06000AE2 RID: 2786 RVA: 0x000580E8 File Offset: 0x000562E8
		// (set) Token: 0x06000AE3 RID: 2787 RVA: 0x00005D76 File Offset: 0x00003F76
		protected int LockHeight
		{
			get
			{
				return this._LockHeight;
			}
			set
			{
				this._LockHeight = value;
				if (this.LockHeight != 0 && this.IsHandleCreated)
				{
					this.Height = this.LockHeight;
				}
			}
		}

		// Token: 0x170003B1 RID: 945
		// (get) Token: 0x06000AE4 RID: 2788 RVA: 0x00005DA2 File Offset: 0x00003FA2
		// (set) Token: 0x06000AE5 RID: 2789 RVA: 0x00005DAA File Offset: 0x00003FAA
		protected bool IsAnimated
		{
			get
			{
				return this._IsAnimated;
			}
			set
			{
				this._IsAnimated = value;
				this.InvalidateTimer();
			}
		}

		// Token: 0x06000AE6 RID: 2790 RVA: 0x00058100 File Offset: 0x00056300
		protected Pen GetPen(string name)
		{
			return new Pen(this.Items[name]);
		}

		// Token: 0x06000AE7 RID: 2791 RVA: 0x00058120 File Offset: 0x00056320
		protected Pen GetPen(string name, float width)
		{
			return new Pen(this.Items[name], width);
		}

		// Token: 0x06000AE8 RID: 2792 RVA: 0x00058144 File Offset: 0x00056344
		protected SolidBrush GetBrush(string name)
		{
			return new SolidBrush(this.Items[name]);
		}

		// Token: 0x06000AE9 RID: 2793 RVA: 0x00058164 File Offset: 0x00056364
		protected Color GetColor(string name)
		{
			return this.Items[name];
		}

		// Token: 0x06000AEA RID: 2794 RVA: 0x00058180 File Offset: 0x00056380
		protected void SetColor(string name, Color value)
		{
			if (this.Items.ContainsKey(name))
			{
				this.Items[name] = value;
			}
			else
			{
				this.Items.Add(name, value);
			}
		}

		// Token: 0x06000AEB RID: 2795 RVA: 0x00005DB9 File Offset: 0x00003FB9
		protected void SetColor(string name, byte r, byte g, byte b)
		{
			this.SetColor(name, Color.FromArgb((int)r, (int)g, (int)b));
		}

		// Token: 0x06000AEC RID: 2796 RVA: 0x00005DCB File Offset: 0x00003FCB
		protected void SetColor(string name, byte a, byte r, byte g, byte b)
		{
			this.SetColor(name, Color.FromArgb((int)a, (int)r, (int)g, (int)b));
		}

		// Token: 0x06000AED RID: 2797 RVA: 0x00005DDF File Offset: 0x00003FDF
		protected void SetColor(string name, byte a, Color value)
		{
			this.SetColor(name, Color.FromArgb((int)a, value));
		}

		// Token: 0x06000AEE RID: 2798 RVA: 0x000581B8 File Offset: 0x000563B8
		private void InvalidateBitmap()
		{
			if (this.Width != 0 && this.Height != 0)
			{
				this.B = new Bitmap(this.Width, this.Height, PixelFormat.Format32bppPArgb);
				this.G = Graphics.FromImage(this.B);
			}
		}

		// Token: 0x06000AEF RID: 2799 RVA: 0x0005820C File Offset: 0x0005640C
		private void InvalidateCustimization()
		{
			checked
			{
				MemoryStream memoryStream = new MemoryStream(this.Items.Count * 4);
				Bloom[] colors = this.Colors;
				for (int i = 0; i < colors.Length; i++)
				{
					Bloom bloom = colors[i];
					memoryStream.Write(BitConverter.GetBytes(bloom.Value.ToArgb()), 0, 4);
				}
				memoryStream.Close();
				this._Customization = Convert.ToBase64String(memoryStream.ToArray());
			}
		}

		// Token: 0x06000AF0 RID: 2800 RVA: 0x00058284 File Offset: 0x00056484
		private void InvalidateTimer()
		{
			if (!this.DesignMode && this.DoneCreation)
			{
				if (this._IsAnimated)
				{
					ThemeShare.AddAnimationCallback(new ThemeShare.AnimationDelegate(this.DoAnimation));
				}
				else
				{
					ThemeShare.RemoveAnimationCallback(new ThemeShare.AnimationDelegate(this.DoAnimation));
				}
			}
		}

		// Token: 0x06000AF1 RID: 2801
		protected abstract void ColorHook();

		// Token: 0x06000AF2 RID: 2802
		protected abstract void PaintHook();

		// Token: 0x06000AF3 RID: 2803 RVA: 0x00002F54 File Offset: 0x00001154
		protected virtual void OnCreation()
		{
		}

		// Token: 0x06000AF4 RID: 2804 RVA: 0x00002F54 File Offset: 0x00001154
		protected virtual void OnAnimation()
		{
		}

		// Token: 0x06000AF5 RID: 2805 RVA: 0x000582D8 File Offset: 0x000564D8
		protected Rectangle Offset(Rectangle r, int amount)
		{
			this.OffsetReturnRectangle = checked(new Rectangle(r.X + amount, r.Y + amount, r.Width - amount * 2, r.Height - amount * 2));
			return this.OffsetReturnRectangle;
		}

		// Token: 0x06000AF6 RID: 2806 RVA: 0x00058320 File Offset: 0x00056520
		protected Size Offset(Size s, int amount)
		{
			this.OffsetReturnSize = checked(new Size(s.Width + amount, s.Height + amount));
			return this.OffsetReturnSize;
		}

		// Token: 0x06000AF7 RID: 2807 RVA: 0x00058354 File Offset: 0x00056554
		protected Point Offset(Point p, int amount)
		{
			this.OffsetReturnPoint = checked(new Point(p.X + amount, p.Y + amount));
			return this.OffsetReturnPoint;
		}

		// Token: 0x06000AF8 RID: 2808 RVA: 0x00058388 File Offset: 0x00056588
		protected Point Center(Rectangle p, Rectangle c)
		{
			this.CenterReturn = checked(new Point(p.Width / 2 - c.Width / 2 + p.X + c.X, p.Height / 2 - c.Height / 2 + p.Y + c.Y));
			return this.CenterReturn;
		}

		// Token: 0x06000AF9 RID: 2809 RVA: 0x000583F0 File Offset: 0x000565F0
		protected Point Center(Rectangle p, Size c)
		{
			this.CenterReturn = checked(new Point(p.Width / 2 - c.Width / 2 + p.X, p.Height / 2 - c.Height / 2 + p.Y));
			return this.CenterReturn;
		}

		// Token: 0x06000AFA RID: 2810 RVA: 0x00058448 File Offset: 0x00056648
		protected Point Center(Rectangle child)
		{
			return this.Center(this.Width, this.Height, child.Width, child.Height);
		}

		// Token: 0x06000AFB RID: 2811 RVA: 0x00058478 File Offset: 0x00056678
		protected Point Center(Size child)
		{
			return this.Center(this.Width, this.Height, child.Width, child.Height);
		}

		// Token: 0x06000AFC RID: 2812 RVA: 0x000584A8 File Offset: 0x000566A8
		protected Point Center(int childWidth, int childHeight)
		{
			return this.Center(this.Width, this.Height, childWidth, childHeight);
		}

		// Token: 0x06000AFD RID: 2813 RVA: 0x000584CC File Offset: 0x000566CC
		protected Point Center(Size p, Size c)
		{
			return this.Center(p.Width, p.Height, c.Width, c.Height);
		}

		// Token: 0x06000AFE RID: 2814 RVA: 0x00058500 File Offset: 0x00056700
		protected Point Center(int pWidth, int pHeight, int cWidth, int cHeight)
		{
			this.CenterReturn = checked(new Point(pWidth / 2 - cWidth / 2, pHeight / 2 - cHeight / 2));
			return this.CenterReturn;
		}

		// Token: 0x06000AFF RID: 2815 RVA: 0x00058530 File Offset: 0x00056730
		protected Size Measure()
		{
			return this.MeasureGraphics.MeasureString(this.Text, this.Font, this.Width).ToSize();
		}

		// Token: 0x06000B00 RID: 2816 RVA: 0x00058564 File Offset: 0x00056764
		protected Size Measure(string text)
		{
			return this.MeasureGraphics.MeasureString(text, this.Font, this.Width).ToSize();
		}

		// Token: 0x06000B01 RID: 2817 RVA: 0x00005DEF File Offset: 0x00003FEF
		protected void DrawPixel(Color c1, int x, int y)
		{
			if (this._Transparent)
			{
				this.B.SetPixel(x, y, c1);
			}
			else
			{
				this.DrawPixelBrush = new SolidBrush(c1);
				this.G.FillRectangle(this.DrawPixelBrush, x, y, 1, 1);
			}
		}

		// Token: 0x06000B02 RID: 2818 RVA: 0x00005E2A File Offset: 0x0000402A
		protected void DrawCorners(Color c1, int offset)
		{
			this.DrawCorners(c1, 0, 0, this.Width, this.Height, offset);
		}

		// Token: 0x06000B03 RID: 2819 RVA: 0x00005E42 File Offset: 0x00004042
		protected void DrawCorners(Color c1, Rectangle r1, int offset)
		{
			this.DrawCorners(c1, r1.X, r1.Y, r1.Width, r1.Height, offset);
		}

		// Token: 0x06000B04 RID: 2820 RVA: 0x00005E68 File Offset: 0x00004068
		protected void DrawCorners(Color c1, int x, int y, int width, int height, int offset)
		{
			checked
			{
				this.DrawCorners(c1, x + offset, y + offset, width - offset * 2, height - offset * 2);
			}
		}

		// Token: 0x06000B05 RID: 2821 RVA: 0x00005E87 File Offset: 0x00004087
		protected void DrawCorners(Color c1)
		{
			this.DrawCorners(c1, 0, 0, this.Width, this.Height);
		}

		// Token: 0x06000B06 RID: 2822 RVA: 0x00005E9E File Offset: 0x0000409E
		protected void DrawCorners(Color c1, Rectangle r1)
		{
			this.DrawCorners(c1, r1.X, r1.Y, r1.Width, r1.Height);
		}

		// Token: 0x06000B07 RID: 2823 RVA: 0x00058594 File Offset: 0x00056794
		protected void DrawCorners(Color c1, int x, int y, int width, int height)
		{
			checked
			{
				if (!this._NoRounding)
				{
					if (this._Transparent)
					{
						this.B.SetPixel(x, y, c1);
						this.B.SetPixel(x + (width - 1), y, c1);
						this.B.SetPixel(x, y + (height - 1), c1);
						this.B.SetPixel(x + (width - 1), y + (height - 1), c1);
					}
					else
					{
						this.DrawCornersBrush = new SolidBrush(c1);
						this.G.FillRectangle(this.DrawCornersBrush, x, y, 1, 1);
						this.G.FillRectangle(this.DrawCornersBrush, x + (width - 1), y, 1, 1);
						this.G.FillRectangle(this.DrawCornersBrush, x, y + (height - 1), 1, 1);
						this.G.FillRectangle(this.DrawCornersBrush, x + (width - 1), y + (height - 1), 1, 1);
					}
				}
			}
		}

		// Token: 0x06000B08 RID: 2824 RVA: 0x00005EC3 File Offset: 0x000040C3
		protected void DrawBorders(Pen p1, int offset)
		{
			this.DrawBorders(p1, 0, 0, this.Width, this.Height, offset);
		}

		// Token: 0x06000B09 RID: 2825 RVA: 0x00005EDB File Offset: 0x000040DB
		protected void DrawBorders(Pen p1, Rectangle r, int offset)
		{
			this.DrawBorders(p1, r.X, r.Y, r.Width, r.Height, offset);
		}

		// Token: 0x06000B0A RID: 2826 RVA: 0x00005F01 File Offset: 0x00004101
		protected void DrawBorders(Pen p1, int x, int y, int width, int height, int offset)
		{
			checked
			{
				this.DrawBorders(p1, x + offset, y + offset, width - offset * 2, height - offset * 2);
			}
		}

		// Token: 0x06000B0B RID: 2827 RVA: 0x00005F20 File Offset: 0x00004120
		protected void DrawBorders(Pen p1)
		{
			this.DrawBorders(p1, 0, 0, this.Width, this.Height);
		}

		// Token: 0x06000B0C RID: 2828 RVA: 0x00005F37 File Offset: 0x00004137
		protected void DrawBorders(Pen p1, Rectangle r)
		{
			this.DrawBorders(p1, r.X, r.Y, r.Width, r.Height);
		}

		// Token: 0x06000B0D RID: 2829 RVA: 0x00005F5C File Offset: 0x0000415C
		protected void DrawBorders(Pen p1, int x, int y, int width, int height)
		{
			checked
			{
				this.G.DrawRectangle(p1, x, y, width - 1, height - 1);
			}
		}

		// Token: 0x06000B0E RID: 2830 RVA: 0x00005F74 File Offset: 0x00004174
		protected void DrawText(Brush b1, HorizontalAlignment a, int x, int y)
		{
			this.DrawText(b1, this.Text, a, x, y);
		}

		// Token: 0x06000B0F RID: 2831 RVA: 0x00058678 File Offset: 0x00056878
		protected void DrawText(Brush b1, string text, HorizontalAlignment a, int x, int y)
		{
			checked
			{
				if (text.Length != 0)
				{
					this.DrawTextSize = this.Measure(text);
					this.DrawTextPoint = this.Center(this.DrawTextSize);
					switch (a)
					{
					case HorizontalAlignment.Left:
						this.G.DrawString(text, this.Font, b1, (float)x, (float)(this.DrawTextPoint.Y + y));
						break;
					case HorizontalAlignment.Right:
						this.G.DrawString(text, this.Font, b1, (float)(this.Width - this.DrawTextSize.Width - x), (float)(this.DrawTextPoint.Y + y));
						break;
					case HorizontalAlignment.Center:
						this.G.DrawString(text, this.Font, b1, (float)(this.DrawTextPoint.X + x), (float)(this.DrawTextPoint.Y + y));
						break;
					}
				}
			}
		}

		// Token: 0x06000B10 RID: 2832 RVA: 0x00005F87 File Offset: 0x00004187
		protected void DrawText(Brush b1, Point p1)
		{
			if (this.Text.Length != 0)
			{
				this.G.DrawString(this.Text, this.Font, b1, p1);
			}
		}

		// Token: 0x06000B11 RID: 2833 RVA: 0x00005FB7 File Offset: 0x000041B7
		protected void DrawText(Brush b1, int x, int y)
		{
			if (this.Text.Length != 0)
			{
				this.G.DrawString(this.Text, this.Font, b1, (float)x, (float)y);
			}
		}

		// Token: 0x06000B12 RID: 2834 RVA: 0x00005FE5 File Offset: 0x000041E5
		protected void DrawImage(HorizontalAlignment a, int x, int y)
		{
			this.DrawImage(this._Image, a, x, y);
		}

		// Token: 0x06000B13 RID: 2835 RVA: 0x00058760 File Offset: 0x00056960
		protected void DrawImage(Image image, HorizontalAlignment a, int x, int y)
		{
			checked
			{
				if (image != null)
				{
					this.DrawImagePoint = this.Center(image.Size);
					switch (a)
					{
					case HorizontalAlignment.Left:
						this.G.DrawImage(image, x, this.DrawImagePoint.Y + y, image.Width, image.Height);
						break;
					case HorizontalAlignment.Right:
						this.G.DrawImage(image, this.Width - image.Width - x, this.DrawImagePoint.Y + y, image.Width, image.Height);
						break;
					case HorizontalAlignment.Center:
						this.G.DrawImage(image, this.DrawImagePoint.X + x, this.DrawImagePoint.Y + y, image.Width, image.Height);
						break;
					}
				}
			}
		}

		// Token: 0x06000B14 RID: 2836 RVA: 0x00005FF6 File Offset: 0x000041F6
		protected void DrawImage(Point p1)
		{
			this.DrawImage(this._Image, p1.X, p1.Y);
		}

		// Token: 0x06000B15 RID: 2837 RVA: 0x00006012 File Offset: 0x00004212
		protected void DrawImage(int x, int y)
		{
			this.DrawImage(this._Image, x, y);
		}

		// Token: 0x06000B16 RID: 2838 RVA: 0x00006022 File Offset: 0x00004222
		protected void DrawImage(Image image, Point p1)
		{
			this.DrawImage(image, p1.X, p1.Y);
		}

		// Token: 0x06000B17 RID: 2839 RVA: 0x00006039 File Offset: 0x00004239
		protected void DrawImage(Image image, int x, int y)
		{
			if (image != null)
			{
				this.G.DrawImage(image, x, y, image.Width, image.Height);
			}
		}

		// Token: 0x06000B18 RID: 2840 RVA: 0x0000605B File Offset: 0x0000425B
		protected void DrawGradient(ColorBlend blend, int x, int y, int width, int height)
		{
			this.DrawGradientRectangle = new Rectangle(x, y, width, height);
			this.DrawGradient(blend, this.DrawGradientRectangle);
		}

		// Token: 0x06000B19 RID: 2841 RVA: 0x0000607B File Offset: 0x0000427B
		protected void DrawGradient(ColorBlend blend, int x, int y, int width, int height, float angle)
		{
			this.DrawGradientRectangle = new Rectangle(x, y, width, height);
			this.DrawGradient(blend, this.DrawGradientRectangle, angle);
		}

		// Token: 0x06000B1A RID: 2842 RVA: 0x0000609D File Offset: 0x0000429D
		protected void DrawGradient(ColorBlend blend, Rectangle r)
		{
			this.DrawGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, 90f);
			this.DrawGradientBrush.InterpolationColors = blend;
			this.G.FillRectangle(this.DrawGradientBrush, r);
		}

		// Token: 0x06000B1B RID: 2843 RVA: 0x000060D8 File Offset: 0x000042D8
		protected void DrawGradient(ColorBlend blend, Rectangle r, float angle)
		{
			this.DrawGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, angle);
			this.DrawGradientBrush.InterpolationColors = blend;
			this.G.FillRectangle(this.DrawGradientBrush, r);
		}

		// Token: 0x06000B1C RID: 2844 RVA: 0x0000610F File Offset: 0x0000430F
		protected void DrawGradient(Color c1, Color c2, int x, int y, int width, int height)
		{
			this.DrawGradientRectangle = new Rectangle(x, y, width, height);
			this.DrawGradient(c1, c2, this.DrawGradientRectangle);
		}

		// Token: 0x06000B1D RID: 2845 RVA: 0x00006131 File Offset: 0x00004331
		protected void DrawGradient(Color c1, Color c2, int x, int y, int width, int height, float angle)
		{
			this.DrawGradientRectangle = new Rectangle(x, y, width, height);
			this.DrawGradient(c1, c2, this.DrawGradientRectangle, angle);
		}

		// Token: 0x06000B1E RID: 2846 RVA: 0x00006155 File Offset: 0x00004355
		protected void DrawGradient(Color c1, Color c2, Rectangle r)
		{
			this.DrawGradientBrush = new LinearGradientBrush(r, c1, c2, 90f);
			this.G.FillRectangle(this.DrawGradientBrush, r);
		}

		// Token: 0x06000B1F RID: 2847 RVA: 0x0000617C File Offset: 0x0000437C
		protected void DrawGradient(Color c1, Color c2, Rectangle r, float angle)
		{
			this.DrawGradientBrush = new LinearGradientBrush(r, c1, c2, angle);
			this.G.FillRectangle(this.DrawGradientBrush, r);
		}

		// Token: 0x06000B20 RID: 2848 RVA: 0x000061A0 File Offset: 0x000043A0
		public void DrawRadial(ColorBlend blend, int x, int y, int width, int height)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(blend, this.DrawRadialRectangle, width / 2, height / 2);
		}

		// Token: 0x06000B21 RID: 2849 RVA: 0x000061C8 File Offset: 0x000043C8
		public void DrawRadial(ColorBlend blend, int x, int y, int width, int height, Point center)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(blend, this.DrawRadialRectangle, center.X, center.Y);
		}

		// Token: 0x06000B22 RID: 2850 RVA: 0x000061F6 File Offset: 0x000043F6
		public void DrawRadial(ColorBlend blend, int x, int y, int width, int height, int cx, int cy)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(blend, this.DrawRadialRectangle, cx, cy);
		}

		// Token: 0x06000B23 RID: 2851 RVA: 0x0000621A File Offset: 0x0000441A
		public void DrawRadial(ColorBlend blend, Rectangle r)
		{
			this.DrawRadial(blend, r, r.Width / 2, r.Height / 2);
		}

		// Token: 0x06000B24 RID: 2852 RVA: 0x00006236 File Offset: 0x00004436
		public void DrawRadial(ColorBlend blend, Rectangle r, Point center)
		{
			this.DrawRadial(blend, r, center.X, center.Y);
		}

		// Token: 0x06000B25 RID: 2853 RVA: 0x00058834 File Offset: 0x00056A34
		public void DrawRadial(ColorBlend blend, Rectangle r, int cx, int cy)
		{
			this.DrawRadialPath.Reset();
			checked
			{
				this.DrawRadialPath.AddEllipse(r.X, r.Y, r.Width - 1, r.Height - 1);
				this.DrawRadialBrush1 = new PathGradientBrush(this.DrawRadialPath);
				PathGradientBrush arg_6D_0 = this.DrawRadialBrush1;
				Point p = new Point(r.X + cx, r.Y + cy);
				arg_6D_0.CenterPoint = p;
				this.DrawRadialBrush1.InterpolationColors = blend;
				if (this.G.SmoothingMode == SmoothingMode.AntiAlias)
				{
					this.G.FillEllipse(this.DrawRadialBrush1, r.X + 1, r.Y + 1, r.Width - 3, r.Height - 3);
				}
				else
				{
					this.G.FillEllipse(this.DrawRadialBrush1, r);
				}
			}
		}

		// Token: 0x06000B26 RID: 2854 RVA: 0x0000624E File Offset: 0x0000444E
		protected void DrawRadial(Color c1, Color c2, int x, int y, int width, int height)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(c1, c2, this.DrawRadialRectangle);
		}

		// Token: 0x06000B27 RID: 2855 RVA: 0x00006270 File Offset: 0x00004470
		protected void DrawRadial(Color c1, Color c2, int x, int y, int width, int height, float angle)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(c1, c2, this.DrawRadialRectangle, angle);
		}

		// Token: 0x06000B28 RID: 2856 RVA: 0x00006294 File Offset: 0x00004494
		protected void DrawRadial(Color c1, Color c2, Rectangle r)
		{
			this.DrawRadialBrush2 = new LinearGradientBrush(r, c1, c2, 90f);
			this.G.FillEllipse(this.DrawRadialBrush2, r);
		}

		// Token: 0x06000B29 RID: 2857 RVA: 0x000062BB File Offset: 0x000044BB
		protected void DrawRadial(Color c1, Color c2, Rectangle r, float angle)
		{
			this.DrawRadialBrush2 = new LinearGradientBrush(r, c1, c2, angle);
			this.G.FillEllipse(this.DrawRadialBrush2, r);
		}

		// Token: 0x06000B2A RID: 2858 RVA: 0x00058918 File Offset: 0x00056B18
		public GraphicsPath CreateRound(int x, int y, int width, int height, int slope)
		{
			this.CreateRoundRectangle = new Rectangle(x, y, width, height);
			return this.CreateRound(this.CreateRoundRectangle, slope);
		}

		// Token: 0x06000B2B RID: 2859 RVA: 0x00058948 File Offset: 0x00056B48
		public GraphicsPath CreateRound(Rectangle r, int slope)
		{
			this.CreateRoundPath = new GraphicsPath(FillMode.Winding);
			this.CreateRoundPath.AddArc(r.X, r.Y, slope, slope, 180f, 90f);
			checked
			{
				this.CreateRoundPath.AddArc(r.Right - slope, r.Y, slope, slope, 270f, 90f);
				this.CreateRoundPath.AddArc(r.Right - slope, r.Bottom - slope, slope, slope, 0f, 90f);
				this.CreateRoundPath.AddArc(r.X, r.Bottom - slope, slope, slope, 90f, 90f);
				this.CreateRoundPath.CloseFigure();
				return this.CreateRoundPath;
			}
		}

		// Token: 0x0400051A RID: 1306
		protected Graphics G;

		// Token: 0x0400051B RID: 1307
		protected Bitmap B;

		// Token: 0x0400051C RID: 1308
		private bool DoneCreation;

		// Token: 0x0400051D RID: 1309
		private bool InPosition;

		// Token: 0x0400051E RID: 1310
		protected MouseState State;

		// Token: 0x0400051F RID: 1311
		private bool _BackColor;

		// Token: 0x04000520 RID: 1312
		private bool _NoRounding;

		// Token: 0x04000521 RID: 1313
		private Image _Image;

		// Token: 0x04000522 RID: 1314
		private bool _Transparent;

		// Token: 0x04000523 RID: 1315
		private Dictionary<string, Color> Items;

		// Token: 0x04000524 RID: 1316
		private string _Customization;

		// Token: 0x04000525 RID: 1317
		private Size _ImageSize;

		// Token: 0x04000526 RID: 1318
		private int _LockWidth;

		// Token: 0x04000527 RID: 1319
		private int _LockHeight;

		// Token: 0x04000528 RID: 1320
		private bool _IsAnimated;

		// Token: 0x04000529 RID: 1321
		private Rectangle OffsetReturnRectangle;

		// Token: 0x0400052A RID: 1322
		private Size OffsetReturnSize;

		// Token: 0x0400052B RID: 1323
		private Point OffsetReturnPoint;

		// Token: 0x0400052C RID: 1324
		private Point CenterReturn;

		// Token: 0x0400052D RID: 1325
		private Bitmap MeasureBitmap;

		// Token: 0x0400052E RID: 1326
		private Graphics MeasureGraphics;

		// Token: 0x0400052F RID: 1327
		private SolidBrush DrawPixelBrush;

		// Token: 0x04000530 RID: 1328
		private SolidBrush DrawCornersBrush;

		// Token: 0x04000531 RID: 1329
		private Point DrawTextPoint;

		// Token: 0x04000532 RID: 1330
		private Size DrawTextSize;

		// Token: 0x04000533 RID: 1331
		private Point DrawImagePoint;

		// Token: 0x04000534 RID: 1332
		private LinearGradientBrush DrawGradientBrush;

		// Token: 0x04000535 RID: 1333
		private Rectangle DrawGradientRectangle;

		// Token: 0x04000536 RID: 1334
		private GraphicsPath DrawRadialPath;

		// Token: 0x04000537 RID: 1335
		private PathGradientBrush DrawRadialBrush1;

		// Token: 0x04000538 RID: 1336
		private LinearGradientBrush DrawRadialBrush2;

		// Token: 0x04000539 RID: 1337
		private Rectangle DrawRadialRectangle;

		// Token: 0x0400053A RID: 1338
		private GraphicsPath CreateRoundPath;

		// Token: 0x0400053B RID: 1339
		private Rectangle CreateRoundRectangle;
	}
}
