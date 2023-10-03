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
	// Token: 0x02000010 RID: 16
	[DesignerGenerated]
	public partial class FrmConnections : Form
	{
		// Token: 0x06000361 RID: 865 RVA: 0x0000331D File Offset: 0x0000151D
		[DebuggerNonUserCode]
		static FrmConnections()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmConnections.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000362 RID: 866 RVA: 0x0000332E File Offset: 0x0000152E
		[DebuggerNonUserCode]
		public FrmConnections()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.FConnections_FormClosing);
			base.Load += new EventHandler(this.Form3_Load);
			FrmConnections.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x06000363 RID: 867 RVA: 0x00021984 File Offset: 0x0001FB84
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmConnections.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmConnections.__ENCList.Count == FrmConnections.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmConnections.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmConnections.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmConnections.__ENCList[num] = FrmConnections.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmConnections.__ENCList.RemoveRange(num, FrmConnections.__ENCList.Count - num);
						FrmConnections.__ENCList.Capacity = FrmConnections.__ENCList.Count;
					}
					FrmConnections.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000154 RID: 340
		// (get) Token: 0x06000366 RID: 870 RVA: 0x000220C4 File Offset: 0x000202C4
		// (set) Token: 0x06000367 RID: 871 RVA: 0x0000336D File Offset: 0x0000156D
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

		// Token: 0x17000155 RID: 341
		// (get) Token: 0x06000368 RID: 872 RVA: 0x000220DC File Offset: 0x000202DC
		// (set) Token: 0x06000369 RID: 873 RVA: 0x00003376 File Offset: 0x00001576
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

		// Token: 0x17000156 RID: 342
		// (get) Token: 0x0600036A RID: 874 RVA: 0x000220F4 File Offset: 0x000202F4
		// (set) Token: 0x0600036B RID: 875 RVA: 0x0000337F File Offset: 0x0000157F
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

		// Token: 0x17000157 RID: 343
		// (get) Token: 0x0600036C RID: 876 RVA: 0x0002210C File Offset: 0x0002030C
		// (set) Token: 0x0600036D RID: 877 RVA: 0x00022124 File Offset: 0x00020324
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

		// Token: 0x17000158 RID: 344
		// (get) Token: 0x0600036E RID: 878 RVA: 0x0002217C File Offset: 0x0002037C
		// (set) Token: 0x0600036F RID: 879 RVA: 0x00022194 File Offset: 0x00020394
		internal virtual ToolStripMenuItem KillConnectionToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._KillConnectionToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.KillConnectionToolStripMenuItem_Click);
				if (this._KillConnectionToolStripMenuItem != null)
				{
					this._KillConnectionToolStripMenuItem.Click -= value2;
				}
				this._KillConnectionToolStripMenuItem = value;
				if (this._KillConnectionToolStripMenuItem != null)
				{
					this._KillConnectionToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000159 RID: 345
		// (get) Token: 0x06000370 RID: 880 RVA: 0x000221EC File Offset: 0x000203EC
		// (set) Token: 0x06000371 RID: 881 RVA: 0x00022204 File Offset: 0x00020404
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

		// Token: 0x1700015A RID: 346
		// (get) Token: 0x06000372 RID: 882 RVA: 0x0002225C File Offset: 0x0002045C
		// (set) Token: 0x06000373 RID: 883 RVA: 0x00003388 File Offset: 0x00001588
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

		// Token: 0x1700015B RID: 347
		// (get) Token: 0x06000374 RID: 884 RVA: 0x00022274 File Offset: 0x00020474
		// (set) Token: 0x06000375 RID: 885 RVA: 0x00003391 File Offset: 0x00001591
		internal virtual LV LTCP
		{
			[DebuggerNonUserCode]
			get
			{
				return this._LTCP;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._LTCP = value;
			}
		}

		// Token: 0x1700015C RID: 348
		// (get) Token: 0x06000376 RID: 886 RVA: 0x0002228C File Offset: 0x0002048C
		// (set) Token: 0x06000377 RID: 887 RVA: 0x0000339A File Offset: 0x0000159A
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

		// Token: 0x1700015D RID: 349
		// (get) Token: 0x06000378 RID: 888 RVA: 0x000222A4 File Offset: 0x000204A4
		// (set) Token: 0x06000379 RID: 889 RVA: 0x000033A3 File Offset: 0x000015A3
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

		// Token: 0x1700015E RID: 350
		// (get) Token: 0x0600037A RID: 890 RVA: 0x000222BC File Offset: 0x000204BC
		// (set) Token: 0x0600037B RID: 891 RVA: 0x000033AC File Offset: 0x000015AC
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

		// Token: 0x1700015F RID: 351
		// (get) Token: 0x0600037C RID: 892 RVA: 0x000222D4 File Offset: 0x000204D4
		// (set) Token: 0x0600037D RID: 893 RVA: 0x000033B5 File Offset: 0x000015B5
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

		// Token: 0x17000160 RID: 352
		// (get) Token: 0x0600037E RID: 894 RVA: 0x000222EC File Offset: 0x000204EC
		// (set) Token: 0x0600037F RID: 895 RVA: 0x000033BE File Offset: 0x000015BE
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

		// Token: 0x17000161 RID: 353
		// (get) Token: 0x06000380 RID: 896 RVA: 0x00022304 File Offset: 0x00020504
		// (set) Token: 0x06000381 RID: 897 RVA: 0x000033C7 File Offset: 0x000015C7
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

		// Token: 0x17000162 RID: 354
		// (get) Token: 0x06000382 RID: 898 RVA: 0x0002231C File Offset: 0x0002051C
		// (set) Token: 0x06000383 RID: 899 RVA: 0x000033D0 File Offset: 0x000015D0
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

		// Token: 0x06000384 RID: 900 RVA: 0x000033D9 File Offset: 0x000015D9
		private void FConnections_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x06000385 RID: 901 RVA: 0x00022334 File Offset: 0x00020534
		private void Form3_Load(object sender, EventArgs e)
		{
			try
			{
				this.sk.Send("~");
			}
			catch (Exception expr_14)
			{
				ProjectData.SetProjectError(expr_14);
				Exception ex = expr_14;
				this.sl.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Connection(s) - ", ima.vno(this.osk.L)));
			this.Timer1.Start();
		}

		// Token: 0x06000386 RID: 902 RVA: 0x000223B4 File Offset: 0x000205B4
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
				this.sl.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000387 RID: 903 RVA: 0x00022404 File Offset: 0x00020604
		private void KillConnectionToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.LTCP.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					string text = "!";
					text = text + ima.Y + listViewItem.Tag.ToString();
					this.sk.Send(text);
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

		// Token: 0x06000388 RID: 904 RVA: 0x00022490 File Offset: 0x00020690
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

		// Token: 0x04000195 RID: 405
		private static List<WeakReference> __ENCList;

		// Token: 0x04000197 RID: 407
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x04000198 RID: 408
		[AccessedThroughProperty("sl")]
		private ToolStripStatusLabel _sl;

		// Token: 0x04000199 RID: 409
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x0400019A RID: 410
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x0400019B RID: 411
		[AccessedThroughProperty("KillConnectionToolStripMenuItem")]
		private ToolStripMenuItem _KillConnectionToolStripMenuItem;

		// Token: 0x0400019C RID: 412
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x0400019D RID: 413
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x0400019E RID: 414
		[AccessedThroughProperty("LTCP")]
		private LV _LTCP;

		// Token: 0x0400019F RID: 415
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x040001A0 RID: 416
		[AccessedThroughProperty("ColumnHeader2")]
		private ColumnHeader _ColumnHeader2;

		// Token: 0x040001A1 RID: 417
		[AccessedThroughProperty("ColumnHeader3")]
		private ColumnHeader _ColumnHeader3;

		// Token: 0x040001A2 RID: 418
		[AccessedThroughProperty("ColumnHeader4")]
		private ColumnHeader _ColumnHeader4;

		// Token: 0x040001A3 RID: 419
		[AccessedThroughProperty("ColumnHeader5")]
		private ColumnHeader _ColumnHeader5;

		// Token: 0x040001A4 RID: 420
		[AccessedThroughProperty("ColumnHeader6")]
		private ColumnHeader _ColumnHeader6;

		// Token: 0x040001A5 RID: 421
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x040001A6 RID: 422
		public Client sk;

		// Token: 0x040001A7 RID: 423
		public Client osk;
	}
}
