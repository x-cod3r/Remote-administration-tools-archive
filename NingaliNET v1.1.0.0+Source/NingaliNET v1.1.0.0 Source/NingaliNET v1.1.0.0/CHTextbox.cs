using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x02000063 RID: 99
	internal class CHTextbox : ThemeControl154
	{
		// Token: 0x06000B50 RID: 2896 RVA: 0x000063E7 File Offset: 0x000045E7
		[DebuggerNonUserCode]
		static CHTextbox()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			CHTextbox.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000B51 RID: 2897 RVA: 0x000590A8 File Offset: 0x000572A8
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = CHTextbox.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (CHTextbox.__ENCList.Count == CHTextbox.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = CHTextbox.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = CHTextbox.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									CHTextbox.__ENCList[num] = CHTextbox.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						CHTextbox.__ENCList.RemoveRange(num, CHTextbox.__ENCList.Count - num);
						CHTextbox.__ENCList.Capacity = CHTextbox.__ENCList.Count;
					}
					CHTextbox.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170003B6 RID: 950
		// (get) Token: 0x06000B52 RID: 2898 RVA: 0x00059190 File Offset: 0x00057390
		// (set) Token: 0x06000B53 RID: 2899 RVA: 0x000591A8 File Offset: 0x000573A8
		private virtual TextBox txtbox
		{
			[DebuggerNonUserCode]
			get
			{
				return this._txtbox;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = delegate(object sender, EventArgs e)
				{
					this.TextChngTxtBox();
				};
				if (this._txtbox != null)
				{
					this._txtbox.TextChanged -= value2;
				}
				this._txtbox = value;
				if (this._txtbox != null)
				{
					this._txtbox.TextChanged += value2;
				}
			}
		}

		// Token: 0x170003B7 RID: 951
		// (get) Token: 0x06000B54 RID: 2900 RVA: 0x000063F8 File Offset: 0x000045F8
		// (set) Token: 0x06000B55 RID: 2901 RVA: 0x00006400 File Offset: 0x00004600
		public bool UsePasswordMask
		{
			get
			{
				return this._PassMask;
			}
			set
			{
				this._PassMask = value;
				this.Invalidate();
			}
		}

		// Token: 0x170003B8 RID: 952
		// (get) Token: 0x06000B56 RID: 2902 RVA: 0x00059200 File Offset: 0x00057400
		// (set) Token: 0x06000B57 RID: 2903 RVA: 0x0000640F File Offset: 0x0000460F
		public int MaxCharacters
		{
			get
			{
				return this._maxchars;
			}
			set
			{
				this._maxchars = value;
			}
		}

		// Token: 0x06000B58 RID: 2904 RVA: 0x00059218 File Offset: 0x00057418
		public CHTextbox()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.TextChanged += delegate(object sender, EventArgs e)
			{
				this.TextChng();
			};
			CHTextbox.__ENCAddToList(this);
			this.txtbox = new TextBox();
			this.txtbox.TextAlign = HorizontalAlignment.Left;
			this.txtbox.BorderStyle = BorderStyle.None;
			Control arg_57_0 = this.txtbox;
			Point location = new Point(5, 6);
			arg_57_0.Location = location;
			this.txtbox.Font = new Font("Verdana", 7.25f);
			this.Controls.Add(this.txtbox);
			this.Text = "";
			this.txtbox.Text = "";
			Size size = new Size(135, 35);
			this.Size = size;
			this.Transparent = true;
			this.BackColor = Color.Transparent;
		}

		// Token: 0x06000B59 RID: 2905 RVA: 0x00002F54 File Offset: 0x00001154
		protected override void ColorHook()
		{
		}

		// Token: 0x06000B5A RID: 2906 RVA: 0x000592F0 File Offset: 0x000574F0
		protected override void PaintHook()
		{
			this.G.Clear(Color.Black);
			switch (this.UsePasswordMask)
			{
			case false:
				this.txtbox.UseSystemPasswordChar = false;
				break;
			case true:
				this.txtbox.UseSystemPasswordChar = true;
				break;
			}
			Size size = new Size(this.Width, 25);
			this.Size = size;
			this.txtbox.BackColor = Color.Black;
			this.txtbox.ForeColor = Color.Lime;
			this.txtbox.Font = this.Font;
			Control arg_AB_0 = this.txtbox;
			size = checked(new Size(this.Width - 10, this.txtbox.Height - 10));
			arg_AB_0.Size = size;
			this.txtbox.MaxLength = this.MaxCharacters;
			this.DrawBorders(new Pen(new SolidBrush(Color.DarkGreen)));
		}

		// Token: 0x06000B5B RID: 2907 RVA: 0x00006418 File Offset: 0x00004618
		public void TextChngTxtBox()
		{
			this.Text = this.txtbox.Text;
		}

		// Token: 0x06000B5C RID: 2908 RVA: 0x0000642B File Offset: 0x0000462B
		public void TextChng()
		{
			this.txtbox.Text = this.Text;
		}

		// Token: 0x06000B5D RID: 2909 RVA: 0x0000643E File Offset: 0x0000463E
		[CompilerGenerated, DebuggerStepThrough]
		private void _Lambda$__1(object sender, EventArgs e)
		{
			this.TextChngTxtBox();
		}

		// Token: 0x06000B5E RID: 2910 RVA: 0x00006446 File Offset: 0x00004646
		[DebuggerStepThrough, CompilerGenerated]
		private void _Lambda$__2(object sender, EventArgs e)
		{
			this.TextChng();
		}

		// Token: 0x04000552 RID: 1362
		private static List<WeakReference> __ENCList;

		// Token: 0x04000553 RID: 1363
		[AccessedThroughProperty("txtbox")]
		private TextBox _txtbox;

		// Token: 0x04000554 RID: 1364
		private bool _PassMask;

		// Token: 0x04000555 RID: 1365
		private int _maxchars;

		// Token: 0x04000556 RID: 1366
		private Pen P1;
	}
}
