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
	// Token: 0x02000029 RID: 41
	[DesignerGenerated]
	public partial class FrmWinList : Form
	{
		// Token: 0x060007B0 RID: 1968 RVA: 0x0000473E File Offset: 0x0000293E
		[DebuggerNonUserCode]
		static FrmWinList()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmWinList.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060007B1 RID: 1969 RVA: 0x0000474F File Offset: 0x0000294F
		[DebuggerNonUserCode]
		public FrmWinList()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FrmWinList_Load);
			base.FormClosing += new FormClosingEventHandler(this.FrmWinList_FormClosing);
			FrmWinList.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060007B2 RID: 1970 RVA: 0x0003D70C File Offset: 0x0003B90C
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmWinList.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmWinList.__ENCList.Count == FrmWinList.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmWinList.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmWinList.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmWinList.__ENCList[num] = FrmWinList.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmWinList.__ENCList.RemoveRange(num, FrmWinList.__ENCList.Count - num);
						FrmWinList.__ENCList.Capacity = FrmWinList.__ENCList.Count;
					}
					FrmWinList.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170002CD RID: 717
		// (get) Token: 0x060007B5 RID: 1973 RVA: 0x0003DF00 File Offset: 0x0003C100
		// (set) Token: 0x060007B6 RID: 1974 RVA: 0x0000478E File Offset: 0x0000298E
		internal virtual LV L2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._L2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._L2 = value;
			}
		}

		// Token: 0x170002CE RID: 718
		// (get) Token: 0x060007B7 RID: 1975 RVA: 0x0003DF18 File Offset: 0x0003C118
		// (set) Token: 0x060007B8 RID: 1976 RVA: 0x00004797 File Offset: 0x00002997
		internal virtual ColumnHeader ColumnHeader1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader1 = value;
			}
		}

		// Token: 0x170002CF RID: 719
		// (get) Token: 0x060007B9 RID: 1977 RVA: 0x0003DF30 File Offset: 0x0003C130
		// (set) Token: 0x060007BA RID: 1978 RVA: 0x000047A0 File Offset: 0x000029A0
		internal virtual ColumnHeader ColumnHeader2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader2 = value;
			}
		}

		// Token: 0x170002D0 RID: 720
		// (get) Token: 0x060007BB RID: 1979 RVA: 0x0003DF48 File Offset: 0x0003C148
		// (set) Token: 0x060007BC RID: 1980 RVA: 0x000047A9 File Offset: 0x000029A9
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

		// Token: 0x170002D1 RID: 721
		// (get) Token: 0x060007BD RID: 1981 RVA: 0x0003DF60 File Offset: 0x0003C160
		// (set) Token: 0x060007BE RID: 1982 RVA: 0x000047B2 File Offset: 0x000029B2
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

		// Token: 0x170002D2 RID: 722
		// (get) Token: 0x060007BF RID: 1983 RVA: 0x0003DF78 File Offset: 0x0003C178
		// (set) Token: 0x060007C0 RID: 1984 RVA: 0x000047BB File Offset: 0x000029BB
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

		// Token: 0x170002D3 RID: 723
		// (get) Token: 0x060007C1 RID: 1985 RVA: 0x0003DF90 File Offset: 0x0003C190
		// (set) Token: 0x060007C2 RID: 1986 RVA: 0x000047C4 File Offset: 0x000029C4
		internal virtual ContextMenuStrip ContextMenuStrip2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ContextMenuStrip2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ContextMenuStrip2 = value;
			}
		}

		// Token: 0x170002D4 RID: 724
		// (get) Token: 0x060007C3 RID: 1987 RVA: 0x0003DFA8 File Offset: 0x0003C1A8
		// (set) Token: 0x060007C4 RID: 1988 RVA: 0x0003DFC0 File Offset: 0x0003C1C0
		internal virtual ToolStripMenuItem StartToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._StartToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.StartToolStripMenuItem1_Click);
				if (this._StartToolStripMenuItem1 != null)
				{
					this._StartToolStripMenuItem1.Click -= value2;
				}
				this._StartToolStripMenuItem1 = value;
				if (this._StartToolStripMenuItem1 != null)
				{
					this._StartToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170002D5 RID: 725
		// (get) Token: 0x060007C5 RID: 1989 RVA: 0x0003E018 File Offset: 0x0003C218
		// (set) Token: 0x060007C6 RID: 1990 RVA: 0x0003E030 File Offset: 0x0003C230
		internal virtual ToolStripMenuItem NewTaskRunToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NewTaskRunToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.NewTaskRunToolStripMenuItem_Click);
				if (this._NewTaskRunToolStripMenuItem != null)
				{
					this._NewTaskRunToolStripMenuItem.Click -= value2;
				}
				this._NewTaskRunToolStripMenuItem = value;
				if (this._NewTaskRunToolStripMenuItem != null)
				{
					this._NewTaskRunToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002D6 RID: 726
		// (get) Token: 0x060007C7 RID: 1991 RVA: 0x0003E088 File Offset: 0x0003C288
		// (set) Token: 0x060007C8 RID: 1992 RVA: 0x0003E0A0 File Offset: 0x0003C2A0
		internal virtual ToolStripMenuItem SwitchToToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SwitchToToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.SwitchToToolStripMenuItem_Click);
				if (this._SwitchToToolStripMenuItem != null)
				{
					this._SwitchToToolStripMenuItem.Click -= value2;
				}
				this._SwitchToToolStripMenuItem = value;
				if (this._SwitchToToolStripMenuItem != null)
				{
					this._SwitchToToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002D7 RID: 727
		// (get) Token: 0x060007C9 RID: 1993 RVA: 0x0003E0F8 File Offset: 0x0003C2F8
		// (set) Token: 0x060007CA RID: 1994 RVA: 0x0003E110 File Offset: 0x0003C310
		internal virtual ToolStripMenuItem MinimazeToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._MinimazeToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.MinimazeToolStripMenuItem_Click);
				if (this._MinimazeToolStripMenuItem != null)
				{
					this._MinimazeToolStripMenuItem.Click -= value2;
				}
				this._MinimazeToolStripMenuItem = value;
				if (this._MinimazeToolStripMenuItem != null)
				{
					this._MinimazeToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002D8 RID: 728
		// (get) Token: 0x060007CB RID: 1995 RVA: 0x0003E168 File Offset: 0x0003C368
		// (set) Token: 0x060007CC RID: 1996 RVA: 0x0003E180 File Offset: 0x0003C380
		internal virtual ToolStripMenuItem MaximazeToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._MaximazeToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.MaximazeToolStripMenuItem_Click);
				if (this._MaximazeToolStripMenuItem != null)
				{
					this._MaximazeToolStripMenuItem.Click -= value2;
				}
				this._MaximazeToolStripMenuItem = value;
				if (this._MaximazeToolStripMenuItem != null)
				{
					this._MaximazeToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002D9 RID: 729
		// (get) Token: 0x060007CD RID: 1997 RVA: 0x0003E1D8 File Offset: 0x0003C3D8
		// (set) Token: 0x060007CE RID: 1998 RVA: 0x0003E1F0 File Offset: 0x0003C3F0
		internal virtual ToolStripMenuItem EndTaskToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._EndTaskToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.EndTaskToolStripMenuItem_Click);
				if (this._EndTaskToolStripMenuItem != null)
				{
					this._EndTaskToolStripMenuItem.Click -= value2;
				}
				this._EndTaskToolStripMenuItem = value;
				if (this._EndTaskToolStripMenuItem != null)
				{
					this._EndTaskToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002DA RID: 730
		// (get) Token: 0x060007CF RID: 1999 RVA: 0x0003E248 File Offset: 0x0003C448
		// (set) Token: 0x060007D0 RID: 2000 RVA: 0x000047CD File Offset: 0x000029CD
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

		// Token: 0x060007D1 RID: 2001 RVA: 0x000047D6 File Offset: 0x000029D6
		private void FrmWinList_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x060007D2 RID: 2002 RVA: 0x0003E260 File Offset: 0x0003C460
		private void FrmWinList_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Windows List - ", ima.vno(this.osk.L)));
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

		// Token: 0x060007D3 RID: 2003 RVA: 0x0003E2D4 File Offset: 0x0003C4D4
		private void NewTaskRunToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string text = Interaction.InputBox("Open", "Create New Task", "cmd", -1, -1);
			if (Operators.CompareString(text, "", false) != 0)
			{
				try
				{
					this.sk.Send("new" + ima.Y + text);
				}
				catch (Exception expr_47)
				{
					ProjectData.SetProjectError(expr_47);
					Exception ex = expr_47;
					this.SL.Text = ex.Message;
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x060007D4 RID: 2004 RVA: 0x0003E358 File Offset: 0x0003C558
		private void SwitchToToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string text = "";
			try
			{
				IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					text = text + listViewItem.SubItems[2].Text + "[,]";
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
			try
			{
				this.sk.Send("#" + ima.Y + text);
			}
			catch (Exception expr_85)
			{
				ProjectData.SetProjectError(expr_85);
				Exception ex = expr_85;
				this.SL.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060007D5 RID: 2005 RVA: 0x0003E428 File Offset: 0x0003C628
		private void MinimazeToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string text = "";
			try
			{
				IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					text = text + listViewItem.SubItems[2].Text + "[,]";
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
			try
			{
				this.sk.Send("$$" + ima.Y + text);
			}
			catch (Exception expr_85)
			{
				ProjectData.SetProjectError(expr_85);
				Exception ex = expr_85;
				this.SL.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060007D6 RID: 2006 RVA: 0x0003E4F8 File Offset: 0x0003C6F8
		private void MaximazeToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string text = "";
			try
			{
				IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					text = text + listViewItem.SubItems[2].Text + "[,]";
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
			try
			{
				this.sk.Send("$" + ima.Y + text);
			}
			catch (Exception expr_85)
			{
				ProjectData.SetProjectError(expr_85);
				Exception ex = expr_85;
				this.SL.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060007D7 RID: 2007 RVA: 0x0003E5C8 File Offset: 0x0003C7C8
		private void EndTaskToolStripMenuItem_Click(object sender, EventArgs e)
		{
			IEnumerator enumerator = null;
			string text = "";
			try
			{
				enumerator = this.L2.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					text = text + ima.Y + listViewItem.SubItems[3].Text;
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
				try
				{
					this.sk.Send("@" + text);
				}
				catch (Exception expr_8A)
				{
					ProjectData.SetProjectError(expr_8A);
					Exception ex = expr_8A;
					this.SL.Text = ex.Message;
					ProjectData.ClearProjectError();
				}
			}
			try
			{
				IEnumerator enumerator2 = this.L2.SelectedItems.GetEnumerator();
				while (enumerator2.MoveNext())
				{
					ListViewItem listViewItem2 = (ListViewItem)enumerator2.Current;
					listViewItem2.Remove();
				}
			}
			finally
			{
				IEnumerator enumerator2;
				if (enumerator2 is IDisposable)
				{
					(enumerator2 as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x060007D8 RID: 2008 RVA: 0x0003E6F8 File Offset: 0x0003C8F8
		private void StartToolStripMenuItem1_Click(object sender, EventArgs e)
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

		// Token: 0x04000393 RID: 915
		private static List<WeakReference> __ENCList;

		// Token: 0x04000395 RID: 917
		[AccessedThroughProperty("L2")]
		private LV _L2;

		// Token: 0x04000396 RID: 918
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x04000397 RID: 919
		[AccessedThroughProperty("ColumnHeader2")]
		private ColumnHeader _ColumnHeader2;

		// Token: 0x04000398 RID: 920
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x04000399 RID: 921
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x0400039A RID: 922
		[AccessedThroughProperty("SL")]
		private ToolStripStatusLabel _SL;

		// Token: 0x0400039B RID: 923
		[AccessedThroughProperty("ContextMenuStrip2")]
		private ContextMenuStrip _ContextMenuStrip2;

		// Token: 0x0400039C RID: 924
		[AccessedThroughProperty("StartToolStripMenuItem1")]
		private ToolStripMenuItem _StartToolStripMenuItem1;

		// Token: 0x0400039D RID: 925
		[AccessedThroughProperty("NewTaskRunToolStripMenuItem")]
		private ToolStripMenuItem _NewTaskRunToolStripMenuItem;

		// Token: 0x0400039E RID: 926
		[AccessedThroughProperty("SwitchToToolStripMenuItem")]
		private ToolStripMenuItem _SwitchToToolStripMenuItem;

		// Token: 0x0400039F RID: 927
		[AccessedThroughProperty("MinimazeToolStripMenuItem")]
		private ToolStripMenuItem _MinimazeToolStripMenuItem;

		// Token: 0x040003A0 RID: 928
		[AccessedThroughProperty("MaximazeToolStripMenuItem")]
		private ToolStripMenuItem _MaximazeToolStripMenuItem;

		// Token: 0x040003A1 RID: 929
		[AccessedThroughProperty("EndTaskToolStripMenuItem")]
		private ToolStripMenuItem _EndTaskToolStripMenuItem;

		// Token: 0x040003A2 RID: 930
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x040003A3 RID: 931
		public Client sk;

		// Token: 0x040003A4 RID: 932
		public Client osk;
	}
}
