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
	// Token: 0x02000023 RID: 35
	[DesignerGenerated]
	public partial class FrmServices : Form
	{
		// Token: 0x060006FB RID: 1787 RVA: 0x000043E5 File Offset: 0x000025E5
		[DebuggerNonUserCode]
		static FrmServices()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmServices.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060006FC RID: 1788 RVA: 0x000043F6 File Offset: 0x000025F6
		[DebuggerNonUserCode]
		public FrmServices()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FrmServices_Load);
			base.FormClosing += new FormClosingEventHandler(this.FrmServices_FormClosing);
			FrmServices.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060006FD RID: 1789 RVA: 0x0003933C File Offset: 0x0003753C
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmServices.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmServices.__ENCList.Count == FrmServices.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmServices.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmServices.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmServices.__ENCList[num] = FrmServices.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmServices.__ENCList.RemoveRange(num, FrmServices.__ENCList.Count - num);
						FrmServices.__ENCList.Capacity = FrmServices.__ENCList.Count;
					}
					FrmServices.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000293 RID: 659
		// (get) Token: 0x06000700 RID: 1792 RVA: 0x00039ADC File Offset: 0x00037CDC
		// (set) Token: 0x06000701 RID: 1793 RVA: 0x00004435 File Offset: 0x00002635
		internal virtual ContextMenuStrip ContextMenuStrip1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ContextMenuStrip1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ContextMenuStrip1 = value;
			}
		}

		// Token: 0x17000294 RID: 660
		// (get) Token: 0x06000702 RID: 1794 RVA: 0x00039AF4 File Offset: 0x00037CF4
		// (set) Token: 0x06000703 RID: 1795 RVA: 0x00039B0C File Offset: 0x00037D0C
		internal virtual ToolStripMenuItem ToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripMenuItem1_Click);
				if (this._ToolStripMenuItem1 != null)
				{
					this._ToolStripMenuItem1.Click -= value2;
				}
				this._ToolStripMenuItem1 = value;
				if (this._ToolStripMenuItem1 != null)
				{
					this._ToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x17000295 RID: 661
		// (get) Token: 0x06000704 RID: 1796 RVA: 0x00039B64 File Offset: 0x00037D64
		// (set) Token: 0x06000705 RID: 1797 RVA: 0x00039B7C File Offset: 0x00037D7C
		internal virtual ToolStripMenuItem StartToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._StartToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.StartToolStripMenuItem_Click);
				if (this._StartToolStripMenuItem != null)
				{
					this._StartToolStripMenuItem.Click -= value2;
				}
				this._StartToolStripMenuItem = value;
				if (this._StartToolStripMenuItem != null)
				{
					this._StartToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000296 RID: 662
		// (get) Token: 0x06000706 RID: 1798 RVA: 0x00039BD4 File Offset: 0x00037DD4
		// (set) Token: 0x06000707 RID: 1799 RVA: 0x00039BEC File Offset: 0x00037DEC
		internal virtual ToolStripMenuItem PauseToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PauseToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PauseToolStripMenuItem_Click);
				if (this._PauseToolStripMenuItem != null)
				{
					this._PauseToolStripMenuItem.Click -= value2;
				}
				this._PauseToolStripMenuItem = value;
				if (this._PauseToolStripMenuItem != null)
				{
					this._PauseToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000297 RID: 663
		// (get) Token: 0x06000708 RID: 1800 RVA: 0x00039C44 File Offset: 0x00037E44
		// (set) Token: 0x06000709 RID: 1801 RVA: 0x00039C5C File Offset: 0x00037E5C
		internal virtual ToolStripMenuItem StopToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._StopToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.StopToolStripMenuItem_Click);
				if (this._StopToolStripMenuItem != null)
				{
					this._StopToolStripMenuItem.Click -= value2;
				}
				this._StopToolStripMenuItem = value;
				if (this._StopToolStripMenuItem != null)
				{
					this._StopToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000298 RID: 664
		// (get) Token: 0x0600070A RID: 1802 RVA: 0x00039CB4 File Offset: 0x00037EB4
		// (set) Token: 0x0600070B RID: 1803 RVA: 0x0000443E File Offset: 0x0000263E
		internal virtual LV L3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._L3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._L3 = value;
			}
		}

		// Token: 0x17000299 RID: 665
		// (get) Token: 0x0600070C RID: 1804 RVA: 0x00039CCC File Offset: 0x00037ECC
		// (set) Token: 0x0600070D RID: 1805 RVA: 0x00004447 File Offset: 0x00002647
		internal virtual ColumnHeader ColumnHeader6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader6 = value;
			}
		}

		// Token: 0x1700029A RID: 666
		// (get) Token: 0x0600070E RID: 1806 RVA: 0x00039CE4 File Offset: 0x00037EE4
		// (set) Token: 0x0600070F RID: 1807 RVA: 0x00004450 File Offset: 0x00002650
		internal virtual ColumnHeader ColumnHeader7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader7 = value;
			}
		}

		// Token: 0x1700029B RID: 667
		// (get) Token: 0x06000710 RID: 1808 RVA: 0x00039CFC File Offset: 0x00037EFC
		// (set) Token: 0x06000711 RID: 1809 RVA: 0x00004459 File Offset: 0x00002659
		internal virtual ColumnHeader ColumnHeader8
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader8;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader8 = value;
			}
		}

		// Token: 0x1700029C RID: 668
		// (get) Token: 0x06000712 RID: 1810 RVA: 0x00039D14 File Offset: 0x00037F14
		// (set) Token: 0x06000713 RID: 1811 RVA: 0x00004462 File Offset: 0x00002662
		internal virtual ColumnHeader ColumnHeader9
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader9;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader9 = value;
			}
		}

		// Token: 0x1700029D RID: 669
		// (get) Token: 0x06000714 RID: 1812 RVA: 0x00039D2C File Offset: 0x00037F2C
		// (set) Token: 0x06000715 RID: 1813 RVA: 0x0000446B File Offset: 0x0000266B
		internal virtual ColumnHeader ColumnHeader10
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader10;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader10 = value;
			}
		}

		// Token: 0x1700029E RID: 670
		// (get) Token: 0x06000716 RID: 1814 RVA: 0x00039D44 File Offset: 0x00037F44
		// (set) Token: 0x06000717 RID: 1815 RVA: 0x00004474 File Offset: 0x00002674
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

		// Token: 0x1700029F RID: 671
		// (get) Token: 0x06000718 RID: 1816 RVA: 0x00039D5C File Offset: 0x00037F5C
		// (set) Token: 0x06000719 RID: 1817 RVA: 0x0000447D File Offset: 0x0000267D
		internal virtual StatusStrip StatusStrip1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._StatusStrip1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._StatusStrip1 = value;
			}
		}

		// Token: 0x170002A0 RID: 672
		// (get) Token: 0x0600071A RID: 1818 RVA: 0x00039D74 File Offset: 0x00037F74
		// (set) Token: 0x0600071B RID: 1819 RVA: 0x00004486 File Offset: 0x00002686
		internal virtual ToolStripStatusLabel SL
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SL;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SL = value;
			}
		}

		// Token: 0x170002A1 RID: 673
		// (get) Token: 0x0600071C RID: 1820 RVA: 0x00039D8C File Offset: 0x00037F8C
		// (set) Token: 0x0600071D RID: 1821 RVA: 0x0000448F File Offset: 0x0000268F
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

		// Token: 0x0600071E RID: 1822 RVA: 0x00004498 File Offset: 0x00002698
		private void FrmServices_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x0600071F RID: 1823 RVA: 0x00039DA4 File Offset: 0x00037FA4
		private void FrmServices_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Service Manager - ", ima.vno(this.osk.L)));
			try
			{
				this.sk.Send("!");
			}
			catch (Exception expr_38)
			{
				ProjectData.SetProjectError(expr_38);
				Exception ex = expr_38;
				this.SL.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000720 RID: 1824 RVA: 0x00039E18 File Offset: 0x00038018
		private void ToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				this.sk.Send("!");
			}
			catch (Exception expr_14)
			{
				ProjectData.SetProjectError(expr_14);
				Exception ex = expr_14;
				this.SL.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000721 RID: 1825 RVA: 0x00039E68 File Offset: 0x00038068
		private void StartToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				this.sk.Send("@" + ima.Y + this.L3.FocusedItem.Text);
			}
			catch (Exception expr_2E)
			{
				ProjectData.SetProjectError(expr_2E);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000722 RID: 1826 RVA: 0x00039EC4 File Offset: 0x000380C4
		private void PauseToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				this.sk.Send("$" + ima.Y + this.L3.FocusedItem.Text);
			}
			catch (Exception expr_2E)
			{
				ProjectData.SetProjectError(expr_2E);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000723 RID: 1827 RVA: 0x00039F20 File Offset: 0x00038120
		private void StopToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				this.sk.Send("#" + ima.Y + this.L3.FocusedItem.Text);
			}
			catch (Exception expr_2E)
			{
				ProjectData.SetProjectError(expr_2E);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0400033A RID: 826
		private static List<WeakReference> __ENCList;

		// Token: 0x0400033C RID: 828
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x0400033D RID: 829
		[AccessedThroughProperty("ToolStripMenuItem1")]
		private ToolStripMenuItem _ToolStripMenuItem1;

		// Token: 0x0400033E RID: 830
		[AccessedThroughProperty("StartToolStripMenuItem")]
		private ToolStripMenuItem _StartToolStripMenuItem;

		// Token: 0x0400033F RID: 831
		[AccessedThroughProperty("PauseToolStripMenuItem")]
		private ToolStripMenuItem _PauseToolStripMenuItem;

		// Token: 0x04000340 RID: 832
		[AccessedThroughProperty("StopToolStripMenuItem")]
		private ToolStripMenuItem _StopToolStripMenuItem;

		// Token: 0x04000341 RID: 833
		[AccessedThroughProperty("L3")]
		private LV _L3;

		// Token: 0x04000342 RID: 834
		[AccessedThroughProperty("ColumnHeader6")]
		private ColumnHeader _ColumnHeader6;

		// Token: 0x04000343 RID: 835
		[AccessedThroughProperty("ColumnHeader7")]
		private ColumnHeader _ColumnHeader7;

		// Token: 0x04000344 RID: 836
		[AccessedThroughProperty("ColumnHeader8")]
		private ColumnHeader _ColumnHeader8;

		// Token: 0x04000345 RID: 837
		[AccessedThroughProperty("ColumnHeader9")]
		private ColumnHeader _ColumnHeader9;

		// Token: 0x04000346 RID: 838
		[AccessedThroughProperty("ColumnHeader10")]
		private ColumnHeader _ColumnHeader10;

		// Token: 0x04000347 RID: 839
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x04000348 RID: 840
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x04000349 RID: 841
		[AccessedThroughProperty("SL")]
		private ToolStripStatusLabel _SL;

		// Token: 0x0400034A RID: 842
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x0400034B RID: 843
		public Client sk;

		// Token: 0x0400034C RID: 844
		public Client osk;
	}
}
