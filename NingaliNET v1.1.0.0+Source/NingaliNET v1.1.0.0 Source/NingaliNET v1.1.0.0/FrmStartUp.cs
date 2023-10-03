using System;
using System.Collections;
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
	// Token: 0x02000025 RID: 37
	[DesignerGenerated]
	public partial class FrmStartUp : Form
	{
		// Token: 0x06000734 RID: 1844 RVA: 0x00004530 File Offset: 0x00002730
		[DebuggerNonUserCode]
		static FrmStartUp()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmStartUp.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000735 RID: 1845 RVA: 0x00004541 File Offset: 0x00002741
		[DebuggerNonUserCode]
		public FrmStartUp()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.FrmStartUp_FormClosing);
			base.Load += new EventHandler(this.FrmStartUp_Load);
			FrmStartUp.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x06000736 RID: 1846 RVA: 0x0003A5C0 File Offset: 0x000387C0
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmStartUp.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmStartUp.__ENCList.Count == FrmStartUp.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmStartUp.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmStartUp.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmStartUp.__ENCList[num] = FrmStartUp.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmStartUp.__ENCList.RemoveRange(num, FrmStartUp.__ENCList.Count - num);
						FrmStartUp.__ENCList.Capacity = FrmStartUp.__ENCList.Count;
					}
					FrmStartUp.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170002A5 RID: 677
		// (get) Token: 0x06000739 RID: 1849 RVA: 0x0003AE58 File Offset: 0x00039058
		// (set) Token: 0x0600073A RID: 1850 RVA: 0x00004580 File Offset: 0x00002780
		internal virtual ImageList IM
		{
			[DebuggerNonUserCode]
			get
			{
				return this._IM;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._IM = value;
			}
		}

		// Token: 0x170002A6 RID: 678
		// (get) Token: 0x0600073B RID: 1851 RVA: 0x0003AE70 File Offset: 0x00039070
		// (set) Token: 0x0600073C RID: 1852 RVA: 0x00004589 File Offset: 0x00002789
		internal virtual ContextMenuStrip CM
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CM;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._CM = value;
			}
		}

		// Token: 0x170002A7 RID: 679
		// (get) Token: 0x0600073D RID: 1853 RVA: 0x0003AE88 File Offset: 0x00039088
		// (set) Token: 0x0600073E RID: 1854 RVA: 0x0003AEA0 File Offset: 0x000390A0
		internal virtual ToolStripMenuItem AtualizarToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AtualizarToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.AtualizarToolStripMenuItem_Click);
				if (this._AtualizarToolStripMenuItem != null)
				{
					this._AtualizarToolStripMenuItem.Click -= value2;
				}
				this._AtualizarToolStripMenuItem = value;
				if (this._AtualizarToolStripMenuItem != null)
				{
					this._AtualizarToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002A8 RID: 680
		// (get) Token: 0x0600073F RID: 1855 RVA: 0x0003AEF8 File Offset: 0x000390F8
		// (set) Token: 0x06000740 RID: 1856 RVA: 0x0003AF10 File Offset: 0x00039110
		internal virtual ToolStripMenuItem ExcluirToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ExcluirToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ExcluirToolStripMenuItem_Click);
				if (this._ExcluirToolStripMenuItem != null)
				{
					this._ExcluirToolStripMenuItem.Click -= value2;
				}
				this._ExcluirToolStripMenuItem = value;
				if (this._ExcluirToolStripMenuItem != null)
				{
					this._ExcluirToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002A9 RID: 681
		// (get) Token: 0x06000741 RID: 1857 RVA: 0x0003AF68 File Offset: 0x00039168
		// (set) Token: 0x06000742 RID: 1858 RVA: 0x0003AF80 File Offset: 0x00039180
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

		// Token: 0x170002AA RID: 682
		// (get) Token: 0x06000743 RID: 1859 RVA: 0x0003AFD8 File Offset: 0x000391D8
		// (set) Token: 0x06000744 RID: 1860 RVA: 0x00004592 File Offset: 0x00002792
		internal virtual CHProgressbar pr
		{
			[DebuggerNonUserCode]
			get
			{
				return this._pr;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._pr = value;
			}
		}

		// Token: 0x170002AB RID: 683
		// (get) Token: 0x06000745 RID: 1861 RVA: 0x0003AFF0 File Offset: 0x000391F0
		// (set) Token: 0x06000746 RID: 1862 RVA: 0x0000459B File Offset: 0x0000279B
		internal virtual ToolStripStatusLabel sl
		{
			[DebuggerNonUserCode]
			get
			{
				return this._sl;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._sl = value;
			}
		}

		// Token: 0x170002AC RID: 684
		// (get) Token: 0x06000747 RID: 1863 RVA: 0x0003B008 File Offset: 0x00039208
		// (set) Token: 0x06000748 RID: 1864 RVA: 0x000045A4 File Offset: 0x000027A4
		internal virtual StatusStrip ST
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ST;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ST = value;
			}
		}

		// Token: 0x170002AD RID: 685
		// (get) Token: 0x06000749 RID: 1865 RVA: 0x0003B020 File Offset: 0x00039220
		// (set) Token: 0x0600074A RID: 1866 RVA: 0x000045AD File Offset: 0x000027AD
		internal virtual LV ListView1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ListView1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ListView1 = value;
			}
		}

		// Token: 0x170002AE RID: 686
		// (get) Token: 0x0600074B RID: 1867 RVA: 0x0003B038 File Offset: 0x00039238
		// (set) Token: 0x0600074C RID: 1868 RVA: 0x000045B6 File Offset: 0x000027B6
		internal virtual ColumnHeader ColumnHeader3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader3 = value;
			}
		}

		// Token: 0x170002AF RID: 687
		// (get) Token: 0x0600074D RID: 1869 RVA: 0x0003B050 File Offset: 0x00039250
		// (set) Token: 0x0600074E RID: 1870 RVA: 0x000045BF File Offset: 0x000027BF
		internal virtual ColumnHeader ColumnHeader4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader4 = value;
			}
		}

		// Token: 0x170002B0 RID: 688
		// (get) Token: 0x0600074F RID: 1871 RVA: 0x0003B068 File Offset: 0x00039268
		// (set) Token: 0x06000750 RID: 1872 RVA: 0x000045C8 File Offset: 0x000027C8
		internal virtual ToolStripSeparator AToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._AToolStripMenuItem = value;
			}
		}

		// Token: 0x06000751 RID: 1873 RVA: 0x000045D1 File Offset: 0x000027D1
		private void AtualizarToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.sk.Send("~");
		}

		// Token: 0x06000752 RID: 1874 RVA: 0x0003B080 File Offset: 0x00039280
		private void ExcluirToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.ListView1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					RuntimeHelpers.GetObjectValue(enumerator.Current);
					if (this.ListView1.SelectedItems[0].ImageIndex == 0)
					{
						if (!this.ListView1.SelectedItems[0].Group.Header.StartsWith("HKEY_LOCAL_MACHINE"))
						{
						}
						this.sk.Send(string.Concat(new string[]
						{
							"!",
							ima.Y,
							this.ListView1.SelectedItems[0].Group.Header,
							"\\",
							ima.Y,
							this.ListView1.SelectedItems[0].Text,
							ima.Y
						}));
						this.sk.Send("~");
					}
					else
					{
						this.sk.Send("@" + ima.Y + this.ListView1.SelectedItems[0].Text + ima.Y);
						this.sk.Send("~");
					}
				}
			}
			finally
			{
				IEnumerator enumerator;
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x06000753 RID: 1875 RVA: 0x000045E4 File Offset: 0x000027E4
		private void FrmStartUp_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x06000754 RID: 1876 RVA: 0x0003B20C File Offset: 0x0003940C
		private void FrmStartUp_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Startup Manager - ", ima.vno(this.osk.L)));
			this.Timer1.Start();
			try
			{
				this.sk.Send("~");
			}
			catch (Exception expr_43)
			{
				ProjectData.SetProjectError(expr_43);
				Exception ex = expr_43;
				this.sl.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000755 RID: 1877 RVA: 0x0003B28C File Offset: 0x0003948C
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

		// Token: 0x04000357 RID: 855
		private static List<WeakReference> __ENCList;

		// Token: 0x04000359 RID: 857
		[AccessedThroughProperty("IM")]
		private ImageList _IM;

		// Token: 0x0400035A RID: 858
		[AccessedThroughProperty("CM")]
		private ContextMenuStrip _CM;

		// Token: 0x0400035B RID: 859
		[AccessedThroughProperty("AtualizarToolStripMenuItem")]
		private ToolStripMenuItem _AtualizarToolStripMenuItem;

		// Token: 0x0400035C RID: 860
		[AccessedThroughProperty("ExcluirToolStripMenuItem")]
		private ToolStripMenuItem _ExcluirToolStripMenuItem;

		// Token: 0x0400035D RID: 861
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x0400035E RID: 862
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x0400035F RID: 863
		[AccessedThroughProperty("sl")]
		private ToolStripStatusLabel _sl;

		// Token: 0x04000360 RID: 864
		[AccessedThroughProperty("ST")]
		private StatusStrip _ST;

		// Token: 0x04000361 RID: 865
		[AccessedThroughProperty("ListView1")]
		private LV _ListView1;

		// Token: 0x04000362 RID: 866
		[AccessedThroughProperty("ColumnHeader3")]
		private ColumnHeader _ColumnHeader3;

		// Token: 0x04000363 RID: 867
		[AccessedThroughProperty("ColumnHeader4")]
		private ColumnHeader _ColumnHeader4;

		// Token: 0x04000364 RID: 868
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x04000365 RID: 869
		public Client sk;

		// Token: 0x04000366 RID: 870
		public Client osk;
	}
}
