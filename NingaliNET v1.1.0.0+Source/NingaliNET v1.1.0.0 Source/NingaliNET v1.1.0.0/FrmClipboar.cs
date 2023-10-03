using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x0200000F RID: 15
	[DesignerGenerated]
	public partial class FrmClipboar : Form
	{
		// Token: 0x0600034E RID: 846 RVA: 0x0000326E File Offset: 0x0000146E
		[DebuggerNonUserCode]
		static FrmClipboar()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmClipboar.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600034F RID: 847 RVA: 0x0000327F File Offset: 0x0000147F
		[DebuggerNonUserCode]
		public FrmClipboar()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FrmClipboar_Load);
			FrmClipboar.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x06000350 RID: 848 RVA: 0x0002129C File Offset: 0x0001F49C
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmClipboar.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmClipboar.__ENCList.Count == FrmClipboar.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmClipboar.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmClipboar.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmClipboar.__ENCList[num] = FrmClipboar.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmClipboar.__ENCList.RemoveRange(num, FrmClipboar.__ENCList.Count - num);
						FrmClipboar.__ENCList.Capacity = FrmClipboar.__ENCList.Count;
					}
					FrmClipboar.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700014F RID: 335
		// (get) Token: 0x06000353 RID: 851 RVA: 0x00021804 File Offset: 0x0001FA04
		// (set) Token: 0x06000354 RID: 852 RVA: 0x000032AB File Offset: 0x000014AB
		internal virtual TextBox TextBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TextBox1 = value;
			}
		}

		// Token: 0x17000150 RID: 336
		// (get) Token: 0x06000355 RID: 853 RVA: 0x0002181C File Offset: 0x0001FA1C
		// (set) Token: 0x06000356 RID: 854 RVA: 0x00021834 File Offset: 0x0001FA34
		internal virtual Button Button1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button1_Click);
				if (this._Button1 != null)
				{
					this._Button1.Click -= value2;
				}
				this._Button1 = value;
				if (this._Button1 != null)
				{
					this._Button1.Click += value2;
				}
			}
		}

		// Token: 0x17000151 RID: 337
		// (get) Token: 0x06000357 RID: 855 RVA: 0x0002188C File Offset: 0x0001FA8C
		// (set) Token: 0x06000358 RID: 856 RVA: 0x000218A4 File Offset: 0x0001FAA4
		internal virtual Button Button2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button2_Click);
				if (this._Button2 != null)
				{
					this._Button2.Click -= value2;
				}
				this._Button2 = value;
				if (this._Button2 != null)
				{
					this._Button2.Click += value2;
				}
			}
		}

		// Token: 0x17000152 RID: 338
		// (get) Token: 0x06000359 RID: 857 RVA: 0x000218FC File Offset: 0x0001FAFC
		// (set) Token: 0x0600035A RID: 858 RVA: 0x000032B4 File Offset: 0x000014B4
		internal virtual Button Button3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Button3 = value;
			}
		}

		// Token: 0x17000153 RID: 339
		// (get) Token: 0x0600035B RID: 859 RVA: 0x00021914 File Offset: 0x0001FB14
		// (set) Token: 0x0600035C RID: 860 RVA: 0x0002192C File Offset: 0x0001FB2C
		internal virtual Button Button4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button4_Click);
				if (this._Button4 != null)
				{
					this._Button4.Click -= value2;
				}
				this._Button4 = value;
				if (this._Button4 != null)
				{
					this._Button4.Click += value2;
				}
			}
		}

		// Token: 0x0600035D RID: 861 RVA: 0x000032BD File Offset: 0x000014BD
		private void Button1_Click(object sender, EventArgs e)
		{
			this.sk.Send("clp");
		}

		// Token: 0x0600035E RID: 862 RVA: 0x000032D0 File Offset: 0x000014D0
		private void FrmClipboar_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Clipboar - ", ima.vno(this.sk.L)));
		}

		// Token: 0x0600035F RID: 863 RVA: 0x000032F7 File Offset: 0x000014F7
		private void Button2_Click(object sender, EventArgs e)
		{
			this.sk.Send("clp!");
		}

		// Token: 0x06000360 RID: 864 RVA: 0x0000330A File Offset: 0x0000150A
		private void Button4_Click(object sender, EventArgs e)
		{
			this.sk.Send("clp@");
		}

		// Token: 0x0400018D RID: 397
		private static List<WeakReference> __ENCList;

		// Token: 0x0400018F RID: 399
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x04000190 RID: 400
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x04000191 RID: 401
		[AccessedThroughProperty("Button2")]
		private Button _Button2;

		// Token: 0x04000192 RID: 402
		[AccessedThroughProperty("Button3")]
		private Button _Button3;

		// Token: 0x04000193 RID: 403
		[AccessedThroughProperty("Button4")]
		private Button _Button4;

		// Token: 0x04000194 RID: 404
		public Client sk;
	}
}
