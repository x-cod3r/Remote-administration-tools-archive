using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x0200001F RID: 31
	[DesignerGenerated]
	public partial class FrmProcess : Form
	{
		// Token: 0x06000670 RID: 1648 RVA: 0x00004136 File Offset: 0x00002336
		[DebuggerNonUserCode]
		static FrmProcess()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmProcess.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000671 RID: 1649 RVA: 0x00004147 File Offset: 0x00002347
		[DebuggerNonUserCode]
		public FrmProcess()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.proc_FormClosing);
			base.Load += new EventHandler(this.proc_Load);
			FrmProcess.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x06000672 RID: 1650 RVA: 0x00035EE4 File Offset: 0x000340E4
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmProcess.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmProcess.__ENCList.Count == FrmProcess.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmProcess.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmProcess.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmProcess.__ENCList[num] = FrmProcess.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmProcess.__ENCList.RemoveRange(num, FrmProcess.__ENCList.Count - num);
						FrmProcess.__ENCList.Capacity = FrmProcess.__ENCList.Count;
					}
					FrmProcess.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000265 RID: 613
		// (get) Token: 0x06000675 RID: 1653 RVA: 0x000367D0 File Offset: 0x000349D0
		// (set) Token: 0x06000676 RID: 1654 RVA: 0x00004186 File Offset: 0x00002386
		internal virtual ContextMenuStrip M1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._M1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._M1 = value;
			}
		}

		// Token: 0x17000266 RID: 614
		// (get) Token: 0x06000677 RID: 1655 RVA: 0x000367E8 File Offset: 0x000349E8
		// (set) Token: 0x06000678 RID: 1656 RVA: 0x00036800 File Offset: 0x00034A00
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

		// Token: 0x17000267 RID: 615
		// (get) Token: 0x06000679 RID: 1657 RVA: 0x00036858 File Offset: 0x00034A58
		// (set) Token: 0x0600067A RID: 1658 RVA: 0x00036870 File Offset: 0x00034A70
		internal virtual ToolStripMenuItem RefreshToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RefreshToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RefreshToolStripMenuItem_Click);
				if (this._RefreshToolStripMenuItem != null)
				{
					this._RefreshToolStripMenuItem.Click -= value2;
				}
				this._RefreshToolStripMenuItem = value;
				if (this._RefreshToolStripMenuItem != null)
				{
					this._RefreshToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000268 RID: 616
		// (get) Token: 0x0600067B RID: 1659 RVA: 0x000368C8 File Offset: 0x00034AC8
		// (set) Token: 0x0600067C RID: 1660 RVA: 0x000368E0 File Offset: 0x00034AE0
		internal virtual ToolStripMenuItem KillToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._KillToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.KillToolStripMenuItem_Click);
				if (this._KillToolStripMenuItem != null)
				{
					this._KillToolStripMenuItem.Click -= value2;
				}
				this._KillToolStripMenuItem = value;
				if (this._KillToolStripMenuItem != null)
				{
					this._KillToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000269 RID: 617
		// (get) Token: 0x0600067D RID: 1661 RVA: 0x00036938 File Offset: 0x00034B38
		// (set) Token: 0x0600067E RID: 1662 RVA: 0x00036950 File Offset: 0x00034B50
		internal virtual ToolStripMenuItem KillDeleteToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._KillDeleteToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.KillDeleteToolStripMenuItem_Click);
				if (this._KillDeleteToolStripMenuItem != null)
				{
					this._KillDeleteToolStripMenuItem.Click -= value2;
				}
				this._KillDeleteToolStripMenuItem = value;
				if (this._KillDeleteToolStripMenuItem != null)
				{
					this._KillDeleteToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700026A RID: 618
		// (get) Token: 0x0600067F RID: 1663 RVA: 0x000369A8 File Offset: 0x00034BA8
		// (set) Token: 0x06000680 RID: 1664 RVA: 0x000369C0 File Offset: 0x00034BC0
		internal virtual ToolStripMenuItem SuspendToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SuspendToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.SuspendToolStripMenuItem_Click);
				if (this._SuspendToolStripMenuItem != null)
				{
					this._SuspendToolStripMenuItem.Click -= value2;
				}
				this._SuspendToolStripMenuItem = value;
				if (this._SuspendToolStripMenuItem != null)
				{
					this._SuspendToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700026B RID: 619
		// (get) Token: 0x06000681 RID: 1665 RVA: 0x00036A18 File Offset: 0x00034C18
		// (set) Token: 0x06000682 RID: 1666 RVA: 0x00036A30 File Offset: 0x00034C30
		internal virtual ToolStripMenuItem ResumeToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ResumeToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ResumeToolStripMenuItem_Click);
				if (this._ResumeToolStripMenuItem != null)
				{
					this._ResumeToolStripMenuItem.Click -= value2;
				}
				this._ResumeToolStripMenuItem = value;
				if (this._ResumeToolStripMenuItem != null)
				{
					this._ResumeToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700026C RID: 620
		// (get) Token: 0x06000683 RID: 1667 RVA: 0x00036A88 File Offset: 0x00034C88
		// (set) Token: 0x06000684 RID: 1668 RVA: 0x0000418F File Offset: 0x0000238F
		internal virtual ImageList ImageList1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ImageList1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ImageList1 = value;
			}
		}

		// Token: 0x1700026D RID: 621
		// (get) Token: 0x06000685 RID: 1669 RVA: 0x00036AA0 File Offset: 0x00034CA0
		// (set) Token: 0x06000686 RID: 1670 RVA: 0x00004198 File Offset: 0x00002398
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

		// Token: 0x1700026E RID: 622
		// (get) Token: 0x06000687 RID: 1671 RVA: 0x00036AB8 File Offset: 0x00034CB8
		// (set) Token: 0x06000688 RID: 1672 RVA: 0x000041A1 File Offset: 0x000023A1
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

		// Token: 0x1700026F RID: 623
		// (get) Token: 0x06000689 RID: 1673 RVA: 0x00036AD0 File Offset: 0x00034CD0
		// (set) Token: 0x0600068A RID: 1674 RVA: 0x000041AA File Offset: 0x000023AA
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

		// Token: 0x17000270 RID: 624
		// (get) Token: 0x0600068B RID: 1675 RVA: 0x00036AE8 File Offset: 0x00034CE8
		// (set) Token: 0x0600068C RID: 1676 RVA: 0x000041B3 File Offset: 0x000023B3
		internal virtual LV L1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._L1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._L1 = value;
			}
		}

		// Token: 0x17000271 RID: 625
		// (get) Token: 0x0600068D RID: 1677 RVA: 0x00036B00 File Offset: 0x00034D00
		// (set) Token: 0x0600068E RID: 1678 RVA: 0x000041BC File Offset: 0x000023BC
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

		// Token: 0x17000272 RID: 626
		// (get) Token: 0x0600068F RID: 1679 RVA: 0x00036B18 File Offset: 0x00034D18
		// (set) Token: 0x06000690 RID: 1680 RVA: 0x000041C5 File Offset: 0x000023C5
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

		// Token: 0x17000273 RID: 627
		// (get) Token: 0x06000691 RID: 1681 RVA: 0x00036B30 File Offset: 0x00034D30
		// (set) Token: 0x06000692 RID: 1682 RVA: 0x000041CE File Offset: 0x000023CE
		internal virtual ColumnHeader ColumnHeader5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader5 = value;
			}
		}

		// Token: 0x17000274 RID: 628
		// (get) Token: 0x06000693 RID: 1683 RVA: 0x00036B48 File Offset: 0x00034D48
		// (set) Token: 0x06000694 RID: 1684 RVA: 0x00036B60 File Offset: 0x00034D60
		internal virtual ToolStripMenuItem NewToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NewToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.NewToolStripMenuItem_Click);
				if (this._NewToolStripMenuItem != null)
				{
					this._NewToolStripMenuItem.Click -= value2;
				}
				this._NewToolStripMenuItem = value;
				if (this._NewToolStripMenuItem != null)
				{
					this._NewToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000275 RID: 629
		// (get) Token: 0x06000695 RID: 1685 RVA: 0x00036BB8 File Offset: 0x00034DB8
		// (set) Token: 0x06000696 RID: 1686 RVA: 0x000041D7 File Offset: 0x000023D7
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

		// Token: 0x17000276 RID: 630
		// (get) Token: 0x06000697 RID: 1687 RVA: 0x00036BD0 File Offset: 0x00034DD0
		// (set) Token: 0x06000698 RID: 1688 RVA: 0x000041E0 File Offset: 0x000023E0
		internal virtual ToolStripSeparator AToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._AToolStripMenuItem1 = value;
			}
		}

		// Token: 0x06000699 RID: 1689 RVA: 0x00036BE8 File Offset: 0x00034DE8
		private void KillDeleteToolStripMenuItem_Click(object sender, EventArgs e)
		{
			IEnumerator enumerator = null;
			string text = "";
			try
			{
				enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					text = text + ima.Y + listViewItem.SubItems[1].Text;
				}
			}
			finally
			{
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
			if (text.Length > 0)
			{
				this.sk.Send("kd" + text);
			}
		}

		// Token: 0x0600069A RID: 1690 RVA: 0x00036C8C File Offset: 0x00034E8C
		private void KillToolStripMenuItem_Click(object sender, EventArgs e)
		{
			IEnumerator enumerator = null;
			string text = "";
			try
			{
				enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					text = text + ima.Y + listViewItem.SubItems[1].Text;
				}
			}
			finally
			{
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
			if (text.Length > 0)
			{
				this.sk.Send("k" + text);
			}
		}

		// Token: 0x0600069B RID: 1691 RVA: 0x000041E9 File Offset: 0x000023E9
		private void proc_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x0600069C RID: 1692 RVA: 0x00036D30 File Offset: 0x00034F30
		private void proc_Load(object sender, EventArgs e)
		{
			this.Text = "Process Manager - " + Conversions.ToString(RuntimeHelpers.GetObjectValue(ima.vno(this.osk.L)));
			this.Timer1.Enabled = true;
			try
			{
				this.sk.Send("~");
			}
			catch (Exception expr_49)
			{
				ProjectData.SetProjectError(expr_49);
				Exception ex = expr_49;
				this.SL.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600069D RID: 1693 RVA: 0x00036DB8 File Offset: 0x00034FB8
		private void RefreshToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				this.sk.Send("~");
			}
			catch (Exception expr_14)
			{
				ProjectData.SetProjectError(expr_14);
				Exception ex = expr_14;
				this.SL.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
			this.RefreshToolStripMenuItem.Text = "Refresh";
		}

		// Token: 0x0600069E RID: 1694 RVA: 0x00036E18 File Offset: 0x00035018
		private void ResumeToolStripMenuItem_Click(object sender, EventArgs e)
		{
			IEnumerator enumerator = null;
			string text = "";
			try
			{
				enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					text = text + ima.Y + listViewItem.SubItems[1].Text;
				}
			}
			finally
			{
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
			if (text.Length > 0)
			{
				this.sk.Send("res" + text);
			}
		}

		// Token: 0x0600069F RID: 1695 RVA: 0x000041F7 File Offset: 0x000023F7
		private void SL_Click(object sender, EventArgs e)
		{
			this.SL.Text = "";
		}

		// Token: 0x060006A0 RID: 1696 RVA: 0x00036EBC File Offset: 0x000350BC
		private void SuspendToolStripMenuItem_Click(object sender, EventArgs e)
		{
			IEnumerator enumerator = null;
			string text = "";
			try
			{
				enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					text = text + ima.Y + listViewItem.SubItems[1].Text;
				}
			}
			finally
			{
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
			if (text.Length > 0)
			{
				this.sk.Send("sus" + text);
			}
		}

		// Token: 0x060006A1 RID: 1697 RVA: 0x00036F60 File Offset: 0x00035160
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

		// Token: 0x060006A2 RID: 1698 RVA: 0x00036FB0 File Offset: 0x000351B0
		private void NewTaskRunToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string text = Interaction.InputBox("Open", "Create New Task", "cmd", -1, -1);
			if (Operators.CompareString(text, "", false) != 0)
			{
				this.sk.Send("$" + ima.Y + text);
			}
		}

		// Token: 0x060006A3 RID: 1699 RVA: 0x00036FB0 File Offset: 0x000351B0
		private void NewToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string text = Interaction.InputBox("Open", "Create New Task", "cmd", -1, -1);
			if (Operators.CompareString(text, "", false) != 0)
			{
				this.sk.Send("$" + ima.Y + text);
			}
		}

		// Token: 0x040002F9 RID: 761
		private static List<WeakReference> __ENCList;

		// Token: 0x040002FB RID: 763
		[AccessedThroughProperty("M1")]
		private ContextMenuStrip _M1;

		// Token: 0x040002FC RID: 764
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x040002FD RID: 765
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x040002FE RID: 766
		[AccessedThroughProperty("KillToolStripMenuItem")]
		private ToolStripMenuItem _KillToolStripMenuItem;

		// Token: 0x040002FF RID: 767
		[AccessedThroughProperty("KillDeleteToolStripMenuItem")]
		private ToolStripMenuItem _KillDeleteToolStripMenuItem;

		// Token: 0x04000300 RID: 768
		[AccessedThroughProperty("SuspendToolStripMenuItem")]
		private ToolStripMenuItem _SuspendToolStripMenuItem;

		// Token: 0x04000301 RID: 769
		[AccessedThroughProperty("ResumeToolStripMenuItem")]
		private ToolStripMenuItem _ResumeToolStripMenuItem;

		// Token: 0x04000302 RID: 770
		[AccessedThroughProperty("ImageList1")]
		private ImageList _ImageList1;

		// Token: 0x04000303 RID: 771
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x04000304 RID: 772
		[AccessedThroughProperty("SL")]
		private ToolStripStatusLabel _SL;

		// Token: 0x04000305 RID: 773
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x04000306 RID: 774
		[AccessedThroughProperty("L1")]
		private LV _L1;

		// Token: 0x04000307 RID: 775
		[AccessedThroughProperty("ColumnHeader3")]
		private ColumnHeader _ColumnHeader3;

		// Token: 0x04000308 RID: 776
		[AccessedThroughProperty("ColumnHeader4")]
		private ColumnHeader _ColumnHeader4;

		// Token: 0x04000309 RID: 777
		[AccessedThroughProperty("ColumnHeader5")]
		private ColumnHeader _ColumnHeader5;

		// Token: 0x0400030A RID: 778
		[AccessedThroughProperty("NewToolStripMenuItem")]
		private ToolStripMenuItem _NewToolStripMenuItem;

		// Token: 0x0400030B RID: 779
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x0400030C RID: 780
		[AccessedThroughProperty("AToolStripMenuItem1")]
		private ToolStripSeparator _AToolStripMenuItem1;

		// Token: 0x0400030D RID: 781
		public int ID;

		// Token: 0x0400030E RID: 782
		public Client osk;

		// Token: 0x0400030F RID: 783
		public Client sk;
	}
}
