using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000065 RID: 101
	public class CHCombobox : ComboBox
	{
		// Token: 0x06000B62 RID: 2914 RVA: 0x0000645B File Offset: 0x0000465B
		[DebuggerNonUserCode]
		static CHCombobox()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			CHCombobox.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000B63 RID: 2915 RVA: 0x00059448 File Offset: 0x00057648
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = CHCombobox.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (CHCombobox.__ENCList.Count == CHCombobox.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = CHCombobox.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = CHCombobox.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									CHCombobox.__ENCList[num] = CHCombobox.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						CHCombobox.__ENCList.RemoveRange(num, CHCombobox.__ENCList.Count - num);
						CHCombobox.__ENCList.Capacity = CHCombobox.__ENCList.Count;
					}
					CHCombobox.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170003B9 RID: 953
		// (get) Token: 0x06000B64 RID: 2916 RVA: 0x00059530 File Offset: 0x00057730
		// (set) Token: 0x06000B65 RID: 2917 RVA: 0x0000646C File Offset: 0x0000466C
		[Category("Colours")]
		public Color BorderColour
		{
			get
			{
				return this._BorderColour;
			}
			set
			{
				this._BorderColour = value;
			}
		}

		// Token: 0x170003BA RID: 954
		// (get) Token: 0x06000B66 RID: 2918 RVA: 0x00059548 File Offset: 0x00057748
		// (set) Token: 0x06000B67 RID: 2919 RVA: 0x00006475 File Offset: 0x00004675
		[Category("Colours")]
		public Color BaseColour
		{
			get
			{
				return this._BaseColour;
			}
			set
			{
				this._BaseColour = value;
			}
		}

		// Token: 0x170003BB RID: 955
		// (get) Token: 0x06000B68 RID: 2920 RVA: 0x00059560 File Offset: 0x00057760
		// (set) Token: 0x06000B69 RID: 2921 RVA: 0x0000647E File Offset: 0x0000467E
		[Category("Colours")]
		public Color FontColour
		{
			get
			{
				return this._FontColour;
			}
			set
			{
				this._FontColour = value;
			}
		}

		// Token: 0x170003BC RID: 956
		// (get) Token: 0x06000B6A RID: 2922 RVA: 0x00059578 File Offset: 0x00057778
		// (set) Token: 0x06000B6B RID: 2923 RVA: 0x00059590 File Offset: 0x00057790
		public int StartIndex
		{
			get
			{
				return this._StartIndex;
			}
			set
			{
				this._StartIndex = value;
				try
				{
					base.SelectedIndex = value;
				}
				catch (Exception arg_10_0)
				{
					ProjectData.SetProjectError(arg_10_0);
					ProjectData.ClearProjectError();
				}
				this.Invalidate();
			}
		}

		// Token: 0x06000B6C RID: 2924 RVA: 0x000595D0 File Offset: 0x000577D0
		public void ReplaceItem(object sender, DrawItemEventArgs e)
		{
			e.DrawBackground();
			checked
			{
				Rectangle rect = new Rectangle(e.Bounds.X, e.Bounds.Y, e.Bounds.Width + 1, e.Bounds.Height + 1);
				try
				{
					Graphics graphics = e.Graphics;
					if ((e.State & DrawItemState.Selected) == DrawItemState.Selected)
					{
						graphics.FillRectangle(Brushes.DarkGreen, rect);
						graphics.DrawString(base.GetItemText(RuntimeHelpers.GetObjectValue(base.Items[e.Index])), this.Font, new SolidBrush(this._FontColour), 1f, (float)(e.Bounds.Top + 2));
					}
					else
					{
						graphics.FillRectangle(new SolidBrush(Color.FromArgb(23, 23, 23)), rect);
						graphics.DrawString(base.GetItemText(RuntimeHelpers.GetObjectValue(base.Items[e.Index])), this.Font, new SolidBrush(this._FontColour), 1f, (float)(e.Bounds.Top + 2));
					}
				}
				catch (Exception arg_11F_0)
				{
					ProjectData.SetProjectError(arg_11F_0);
					ProjectData.ClearProjectError();
				}
				e.DrawFocusRectangle();
				this.Invalidate();
			}
		}

		// Token: 0x06000B6D RID: 2925 RVA: 0x00006487 File Offset: 0x00004687
		protected override void OnTextChanged(EventArgs e)
		{
			base.OnTextChanged(e);
			this.Invalidate();
		}

		// Token: 0x06000B6E RID: 2926 RVA: 0x00006496 File Offset: 0x00004696
		protected override void OnMouseDown(MouseEventArgs e)
		{
			base.Invalidate();
			base.OnMouseClick(e);
		}

		// Token: 0x06000B6F RID: 2927 RVA: 0x000064A5 File Offset: 0x000046A5
		protected override void OnMouseUp(MouseEventArgs e)
		{
			base.Invalidate();
			base.OnMouseUp(e);
		}

		// Token: 0x06000B70 RID: 2928 RVA: 0x00059724 File Offset: 0x00057924
		public CHCombobox()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.DrawItem += new DrawItemEventHandler(this.ReplaceItem);
			CHCombobox.__ENCAddToList(this);
			this._StartIndex = 0;
			this._BorderColour = Color.Green;
			this._BaseColour = Color.Black;
			this._FontColour = Color.Lime;
			this.SetStyle(ControlStyles.UserPaint | ControlStyles.ResizeRedraw | ControlStyles.SupportsTransparentBackColor | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer, true);
			this.DoubleBuffered = true;
			this.BackColor = Color.Transparent;
			this.DrawMode = DrawMode.OwnerDrawFixed;
			this.DropDownStyle = ComboBoxStyle.DropDownList;
			this.Width = 163;
			this.Font = new Font("Segoe UI", 10f);
		}

		// Token: 0x06000B71 RID: 2929 RVA: 0x000597CC File Offset: 0x000579CC
		protected override void OnPaint(PaintEventArgs e)
		{
			Bitmap bitmap = new Bitmap(this.Width, this.Height);
			Graphics graphics = Graphics.FromImage(bitmap);
			Graphics graphics2 = graphics;
			graphics2.SmoothingMode = SmoothingMode.HighQuality;
			graphics2.PixelOffsetMode = PixelOffsetMode.HighQuality;
			graphics2.Clear(this.BackColor);
			checked
			{
				try
				{
					Rectangle rect = new Rectangle(this.Width - 22, 0, this.Width, this.Height);
					graphics2.FillRectangle(new SolidBrush(Color.FromArgb(23, 23, 23)), rect);
					Graphics arg_95_0 = graphics2;
					Brush arg_95_1 = new SolidBrush(this._BaseColour);
					Rectangle rectangle = new Rectangle(0, 0, this.Width - 22, this.Height);
					arg_95_0.FillRectangle(arg_95_1, rectangle);
					Graphics arg_D2_0 = graphics2;
					Pen arg_D2_1 = new Pen(this._BorderColour);
					Point point = new Point(this.Width - 23, 0);
					Point arg_D2_2 = point;
					Point point2 = new Point(this.Width - 23, this.Height);
					arg_D2_0.DrawLine(arg_D2_1, arg_D2_2, point2);
					try
					{
						Graphics arg_128_0 = graphics2;
						string arg_128_1 = this.Text;
						Font arg_128_2 = this.Font;
						Brush arg_128_3 = new SolidBrush(this._FontColour);
						rectangle = new Rectangle(3, 0, this.Width - 20, this.Height);
						arg_128_0.DrawString(arg_128_1, arg_128_2, arg_128_3, rectangle, new StringFormat
						{
							LineAlignment = StringAlignment.Center,
							Alignment = StringAlignment.Near
						});
					}
					catch (Exception arg_12F_0)
					{
						ProjectData.SetProjectError(arg_12F_0);
						ProjectData.ClearProjectError();
					}
					graphics2.DrawLine(new Pen(this._BorderColour), 0, 0, 0, 0);
					Graphics arg_175_0 = graphics2;
					Pen arg_175_1 = new Pen(this._BorderColour);
					rectangle = new Rectangle(0, 0, this.Width, this.Height);
					arg_175_0.DrawRectangle(arg_175_1, rectangle);
					Point[] array = new Point[3];
					Point[] arg_19E_0_cp_0 = array;
					int arg_19E_0_cp_1 = 0;
					point2 = new Point(this.Width - 18, 9);
					arg_19E_0_cp_0[arg_19E_0_cp_1] = point2;
					Point[] arg_1BF_0_cp_0 = array;
					int arg_1BF_0_cp_1 = 1;
					point = new Point(this.Width - 12, 18);
					arg_1BF_0_cp_0[arg_1BF_0_cp_1] = point;
					Point[] arg_1DF_0_cp_0 = array;
					int arg_1DF_0_cp_1 = 2;
					Point point3 = new Point(this.Width - 6, 9);
					arg_1DF_0_cp_0[arg_1DF_0_cp_1] = point3;
					Point[] points = array;
					graphics2.FillPolygon(new SolidBrush(Color.DarkGreen), points);
					graphics2.DrawPolygon(new Pen(Color.Gainsboro), points);
				}
				catch (Exception arg_20D_0)
				{
					ProjectData.SetProjectError(arg_20D_0);
					ProjectData.ClearProjectError();
				}
				graphics2 = null;
				base.OnPaint(e);
				graphics.Dispose();
				e.Graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
				e.Graphics.DrawImageUnscaled(bitmap, 0, 0);
				bitmap.Dispose();
			}
		}

		// Token: 0x04000557 RID: 1367
		private static List<WeakReference> __ENCList;

		// Token: 0x04000558 RID: 1368
		private int _StartIndex;

		// Token: 0x04000559 RID: 1369
		private Color _BorderColour;

		// Token: 0x0400055A RID: 1370
		private Color _BaseColour;

		// Token: 0x0400055B RID: 1371
		private Color _FontColour;
	}
}
