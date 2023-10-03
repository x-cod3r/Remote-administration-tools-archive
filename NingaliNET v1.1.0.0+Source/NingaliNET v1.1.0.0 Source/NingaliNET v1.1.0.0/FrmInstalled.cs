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
	// Token: 0x02000019 RID: 25
	[DesignerGenerated]
	public partial class FrmInstalled : Form
	{
		// Token: 0x060005BF RID: 1471 RVA: 0x00003DFA File Offset: 0x00001FFA
		[DebuggerNonUserCode]
		static FrmInstalled()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmInstalled.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060005C0 RID: 1472 RVA: 0x00003E0B File Offset: 0x0000200B
		[DebuggerNonUserCode]
		public FrmInstalled()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.Installed_FormClosing);
			base.Load += new EventHandler(this.Form2_Load);
			FrmInstalled.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060005C1 RID: 1473 RVA: 0x00031A98 File Offset: 0x0002FC98
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmInstalled.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmInstalled.__ENCList.Count == FrmInstalled.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmInstalled.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmInstalled.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmInstalled.__ENCList[num] = FrmInstalled.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmInstalled.__ENCList.RemoveRange(num, FrmInstalled.__ENCList.Count - num);
						FrmInstalled.__ENCList.Capacity = FrmInstalled.__ENCList.Count;
					}
					FrmInstalled.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700022E RID: 558
		// (get) Token: 0x060005C4 RID: 1476 RVA: 0x00032150 File Offset: 0x00030350
		// (set) Token: 0x060005C5 RID: 1477 RVA: 0x00003E4A File Offset: 0x0000204A
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

		// Token: 0x1700022F RID: 559
		// (get) Token: 0x060005C6 RID: 1478 RVA: 0x00032168 File Offset: 0x00030368
		// (set) Token: 0x060005C7 RID: 1479 RVA: 0x00032180 File Offset: 0x00030380
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

		// Token: 0x17000230 RID: 560
		// (get) Token: 0x060005C8 RID: 1480 RVA: 0x000321D8 File Offset: 0x000303D8
		// (set) Token: 0x060005C9 RID: 1481 RVA: 0x000321F0 File Offset: 0x000303F0
		internal virtual ToolStripMenuItem UnistallAProgramToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UnistallAProgramToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.UnistallAProgramToolStripMenuItem_Click);
				if (this._UnistallAProgramToolStripMenuItem != null)
				{
					this._UnistallAProgramToolStripMenuItem.Click -= value2;
				}
				this._UnistallAProgramToolStripMenuItem = value;
				if (this._UnistallAProgramToolStripMenuItem != null)
				{
					this._UnistallAProgramToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000231 RID: 561
		// (get) Token: 0x060005CA RID: 1482 RVA: 0x00032248 File Offset: 0x00030448
		// (set) Token: 0x060005CB RID: 1483 RVA: 0x00003E53 File Offset: 0x00002053
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

		// Token: 0x17000232 RID: 562
		// (get) Token: 0x060005CC RID: 1484 RVA: 0x00032260 File Offset: 0x00030460
		// (set) Token: 0x060005CD RID: 1485 RVA: 0x00003E5C File Offset: 0x0000205C
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

		// Token: 0x17000233 RID: 563
		// (get) Token: 0x060005CE RID: 1486 RVA: 0x00032278 File Offset: 0x00030478
		// (set) Token: 0x060005CF RID: 1487 RVA: 0x00032290 File Offset: 0x00030490
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

		// Token: 0x17000234 RID: 564
		// (get) Token: 0x060005D0 RID: 1488 RVA: 0x000322E8 File Offset: 0x000304E8
		// (set) Token: 0x060005D1 RID: 1489 RVA: 0x00003E65 File Offset: 0x00002065
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

		// Token: 0x17000235 RID: 565
		// (get) Token: 0x060005D2 RID: 1490 RVA: 0x00032300 File Offset: 0x00030500
		// (set) Token: 0x060005D3 RID: 1491 RVA: 0x00003E6E File Offset: 0x0000206E
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

		// Token: 0x17000236 RID: 566
		// (get) Token: 0x060005D4 RID: 1492 RVA: 0x00032318 File Offset: 0x00030518
		// (set) Token: 0x060005D5 RID: 1493 RVA: 0x00003E77 File Offset: 0x00002077
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

		// Token: 0x17000237 RID: 567
		// (get) Token: 0x060005D6 RID: 1494 RVA: 0x00032330 File Offset: 0x00030530
		// (set) Token: 0x060005D7 RID: 1495 RVA: 0x00003E80 File Offset: 0x00002080
		internal virtual ToolStripSeparator DToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._DToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._DToolStripMenuItem = value;
			}
		}

		// Token: 0x060005D8 RID: 1496 RVA: 0x00003E89 File Offset: 0x00002089
		private void UnistallAProgramToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.sk.Send("@" + ima.Y + this.L1.FocusedItem.Text);
		}

		// Token: 0x060005D9 RID: 1497 RVA: 0x00003EB6 File Offset: 0x000020B6
		private void Installed_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x060005DA RID: 1498 RVA: 0x00032348 File Offset: 0x00030548
		private void Form2_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Uninstall Program(s) - ", ima.vno(this.osk.L)));
			this.Timer1.Start();
			try
			{
				this.sk.Send("!");
			}
			catch (Exception expr_43)
			{
				ProjectData.SetProjectError(expr_43);
				Exception ex = expr_43;
				this.SL.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060005DB RID: 1499 RVA: 0x000323C8 File Offset: 0x000305C8
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

		// Token: 0x060005DC RID: 1500 RVA: 0x00032418 File Offset: 0x00030618
		private void RefreshToolStripMenuItem_Click(object sender, EventArgs e)
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

		// Token: 0x040002A1 RID: 673
		private static List<WeakReference> __ENCList;

		// Token: 0x040002A3 RID: 675
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x040002A4 RID: 676
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x040002A5 RID: 677
		[AccessedThroughProperty("UnistallAProgramToolStripMenuItem")]
		private ToolStripMenuItem _UnistallAProgramToolStripMenuItem;

		// Token: 0x040002A6 RID: 678
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x040002A7 RID: 679
		[AccessedThroughProperty("SL")]
		private ToolStripStatusLabel _SL;

		// Token: 0x040002A8 RID: 680
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x040002A9 RID: 681
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x040002AA RID: 682
		[AccessedThroughProperty("L1")]
		private LV _L1;

		// Token: 0x040002AB RID: 683
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x040002AC RID: 684
		[AccessedThroughProperty("DToolStripMenuItem")]
		private ToolStripSeparator _DToolStripMenuItem;

		// Token: 0x040002AD RID: 685
		public Client sk;

		// Token: 0x040002AE RID: 686
		public Client osk;
	}
}
