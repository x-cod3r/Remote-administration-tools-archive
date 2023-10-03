using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000046 RID: 70
	public sealed class Pp1 : PictureBox
	{
		// Token: 0x0600098E RID: 2446 RVA: 0x00004F0D File Offset: 0x0000310D
		[DebuggerNonUserCode]
		static Pp1()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			Pp1.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600098F RID: 2447 RVA: 0x00052FA8 File Offset: 0x000511A8
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = Pp1.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (Pp1.__ENCList.Count == Pp1.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = Pp1.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = Pp1.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									Pp1.__ENCList[num] = Pp1.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						Pp1.__ENCList.RemoveRange(num, Pp1.__ENCList.Count - num);
						Pp1.__ENCList.Capacity = Pp1.__ENCList.Count;
					}
					Pp1.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x06000990 RID: 2448 RVA: 0x00053090 File Offset: 0x00051290
		public Pp1()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			Pp1.__ENCAddToList(this);
			this.font = new Font("arial", 8f);
			this.Lines = new List<object[]>();
			Timer t = new Timer
			{
				Interval = 50,
				Enabled = false
			};
			this.T = t;
			this.SizeMode = PictureBoxSizeMode.Normal;
		}

		// Token: 0x06000991 RID: 2449 RVA: 0x000530F4 File Offset: 0x000512F4
		[DebuggerStepThrough, CompilerGenerated]
		private void ksh__4(object sender, EventArgs e)
		{
			try
			{
				this.wrk();
			}
			catch (Exception expr_09)
			{
				ProjectData.SetProjectError(expr_09);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000992 RID: 2450 RVA: 0x00053128 File Offset: 0x00051328
		public void wrk()
		{
			checked
			{
				try
				{
					this.T.Enabled = false;
					lock (this)
					{
						Bitmap image = new Bitmap(this.Width, this.Height);
						this.G = Graphics.FromImage(image);
						this.G.Clear(Color.FromArgb(10, 10, 10));
						int num = 3;
						int height = TextRenderer.MeasureText("test", this.font).Height;
						Color color = Color.White;
						for (int i = this.Lines.Count - 1; i >= 0; i += -1)
						{
							int num2 = 3;
							object[] array = this.Lines[i];
							int num3 = array.Length - 1;
							for (int j = 0; j <= num3; j++)
							{
								object objectValue = RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(array[j])))))));
								string left = objectValue.GetType().ToString();
								if (Operators.CompareString(left, typeof(Bitmap).ToString(), false) == 0)
								{
									Bitmap bitmap = (Bitmap)objectValue;
									if (bitmap.Height > height)
									{
										IntPtr callbackData;
										bitmap = (Bitmap)bitmap.GetThumbnailImage(height, height, null, callbackData);
									}
									this.G.DrawImage(bitmap, num2, num);
									num2 += bitmap.Width + 3;
								}
								else if (Operators.CompareString(left, typeof(string).ToString(), false) == 0)
								{
									string text = Conversions.ToString(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(objectValue))));
									Size size = TextRenderer.MeasureText(text, this.font);
									this.G.DrawString(text, this.font, new Pen(color).Brush, (float)num2, (float)num);
									if (size.Height - height > 0)
									{
										num += size.Height - height;
										num2 = 3;
									}
									else
									{
										num2 += size.Width + 3;
									}
								}
								else if (Operators.CompareString(left, typeof(Color).ToString(), false) == 0)
								{
									color = (Color)objectValue;
								}
							}
							num += height;
						}
						this.G.Dispose();
						this.Image = image;
					}
					this.T.Enabled = true;
				}
				catch (Exception expr_25E)
				{
					ProjectData.SetProjectError(expr_25E);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x06000993 RID: 2451 RVA: 0x000533D8 File Offset: 0x000515D8
		public void WRT(params object[] A)
		{
			lock (this)
			{
				this.Lines.Add(A);
				if (this.Lines.Count == 100)
				{
					this.Lines.RemoveAt(0);
				}
			}
		}

		// Token: 0x17000355 RID: 853
		// (get) Token: 0x06000994 RID: 2452 RVA: 0x00053434 File Offset: 0x00051634
		// (set) Token: 0x06000995 RID: 2453 RVA: 0x0005344C File Offset: 0x0005164C
		public Timer T
		{
			get
			{
				return this._T;
			}
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ksh__4);
				if (this._T != null)
				{
					this._T.Tick -= value2;
				}
				this._T = value;
				if (this._T != null)
				{
					this._T.Tick += value2;
				}
			}
		}

		// Token: 0x040004A0 RID: 1184
		private static List<WeakReference> __ENCList;

		// Token: 0x040004A1 RID: 1185
		private Timer _T;

		// Token: 0x040004A2 RID: 1186
		public Font font;

		// Token: 0x040004A3 RID: 1187
		public Graphics G;

		// Token: 0x040004A4 RID: 1188
		public List<object[]> Lines;
	}
}
