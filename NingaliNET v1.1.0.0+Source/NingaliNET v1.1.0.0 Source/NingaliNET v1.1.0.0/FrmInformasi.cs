using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000018 RID: 24
	[DesignerGenerated]
	public partial class FrmInformasi : Form
	{
		// Token: 0x060005A2 RID: 1442 RVA: 0x00003D62 File Offset: 0x00001F62
		[DebuggerNonUserCode]
		static FrmInformasi()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmInformasi.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060005A3 RID: 1443 RVA: 0x00003D73 File Offset: 0x00001F73
		[DebuggerNonUserCode]
		public FrmInformasi()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.FrmInformasi_FormClosing);
			base.Load += new EventHandler(this.Form2_Load);
			FrmInformasi.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060005A4 RID: 1444 RVA: 0x00030ED4 File Offset: 0x0002F0D4
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmInformasi.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmInformasi.__ENCList.Count == FrmInformasi.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmInformasi.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmInformasi.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmInformasi.__ENCList[num] = FrmInformasi.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmInformasi.__ENCList.RemoveRange(num, FrmInformasi.__ENCList.Count - num);
						FrmInformasi.__ENCList.Capacity = FrmInformasi.__ENCList.Count;
					}
					FrmInformasi.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000224 RID: 548
		// (get) Token: 0x060005A7 RID: 1447 RVA: 0x00031690 File Offset: 0x0002F890
		// (set) Token: 0x060005A8 RID: 1448 RVA: 0x00003DB2 File Offset: 0x00001FB2
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

		// Token: 0x17000225 RID: 549
		// (get) Token: 0x060005A9 RID: 1449 RVA: 0x000316A8 File Offset: 0x0002F8A8
		// (set) Token: 0x060005AA RID: 1450 RVA: 0x000316C0 File Offset: 0x0002F8C0
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

		// Token: 0x17000226 RID: 550
		// (get) Token: 0x060005AB RID: 1451 RVA: 0x00031718 File Offset: 0x0002F918
		// (set) Token: 0x060005AC RID: 1452 RVA: 0x00003DBB File Offset: 0x00001FBB
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

		// Token: 0x17000227 RID: 551
		// (get) Token: 0x060005AD RID: 1453 RVA: 0x00031730 File Offset: 0x0002F930
		// (set) Token: 0x060005AE RID: 1454 RVA: 0x00003DC4 File Offset: 0x00001FC4
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

		// Token: 0x17000228 RID: 552
		// (get) Token: 0x060005AF RID: 1455 RVA: 0x00031748 File Offset: 0x0002F948
		// (set) Token: 0x060005B0 RID: 1456 RVA: 0x00003DCD File Offset: 0x00001FCD
		internal virtual LV Lv1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Lv1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Lv1 = value;
			}
		}

		// Token: 0x17000229 RID: 553
		// (get) Token: 0x060005B1 RID: 1457 RVA: 0x00031760 File Offset: 0x0002F960
		// (set) Token: 0x060005B2 RID: 1458 RVA: 0x00003DD6 File Offset: 0x00001FD6
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

		// Token: 0x1700022A RID: 554
		// (get) Token: 0x060005B3 RID: 1459 RVA: 0x00031778 File Offset: 0x0002F978
		// (set) Token: 0x060005B4 RID: 1460 RVA: 0x00003DDF File Offset: 0x00001FDF
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

		// Token: 0x1700022B RID: 555
		// (get) Token: 0x060005B5 RID: 1461 RVA: 0x00031790 File Offset: 0x0002F990
		// (set) Token: 0x060005B6 RID: 1462 RVA: 0x00003DE8 File Offset: 0x00001FE8
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

		// Token: 0x1700022C RID: 556
		// (get) Token: 0x060005B7 RID: 1463 RVA: 0x000317A8 File Offset: 0x0002F9A8
		// (set) Token: 0x060005B8 RID: 1464 RVA: 0x000317C0 File Offset: 0x0002F9C0
		internal virtual ToolStripMenuItem SaveToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SaveToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.SaveToolStripMenuItem_Click);
				if (this._SaveToolStripMenuItem != null)
				{
					this._SaveToolStripMenuItem.Click -= value2;
				}
				this._SaveToolStripMenuItem = value;
				if (this._SaveToolStripMenuItem != null)
				{
					this._SaveToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700022D RID: 557
		// (get) Token: 0x060005B9 RID: 1465 RVA: 0x00031818 File Offset: 0x0002FA18
		// (set) Token: 0x060005BA RID: 1466 RVA: 0x00003DF1 File Offset: 0x00001FF1
		internal virtual ToolStripSeparator AsToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AsToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._AsToolStripMenuItem = value;
			}
		}

		// Token: 0x060005BB RID: 1467 RVA: 0x00031830 File Offset: 0x0002FA30
		private void FrmInformasi_FormClosing(object sender, FormClosingEventArgs e)
		{
			try
			{
				File.WriteAllText(Conversions.ToString(Operators.AddObject(this.folder, "Informations.txt")), Conversions.ToString(this.SV));
			}
			catch (Exception expr_28)
			{
				ProjectData.SetProjectError(expr_28);
				ProjectData.ClearProjectError();
			}
			this.sk.CN = false;
		}

		// Token: 0x060005BC RID: 1468 RVA: 0x00031890 File Offset: 0x0002FA90
		private void Form2_Load(object sender, EventArgs e)
		{
			this.Lv1.FX();
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Information(s) - ", ima.vno(this.osk.L)));
			this.folder = Operators.ConcatenateObject(Operators.ConcatenateObject(this.osk.Folder, ima.vno(this.osk.L)), "\\");
			if (!Directory.Exists(Conversions.ToString(this.folder)))
			{
				Directory.CreateDirectory(Conversions.ToString(this.folder));
			}
			try
			{
				this.sk.Send("!");
			}
			catch (Exception expr_9A)
			{
				ProjectData.SetProjectError(expr_9A);
				Exception ex = expr_9A;
				this.sl.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060005BD RID: 1469 RVA: 0x00031968 File Offset: 0x0002FB68
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
				this.sl.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060005BE RID: 1470 RVA: 0x000319B8 File Offset: 0x0002FBB8
		private void SaveToolStripMenuItem_Click(object sender, EventArgs e)
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog
			{
				Filter = "TXT|*.txt",
				FileName = "Informations.txt"
			};
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				try
				{
					File.WriteAllText(saveFileDialog.FileName, Conversions.ToString(this.SV));
					ima.F.sl.Text = Conversions.ToString(Operators.AddObject(Operators.AddObject("Save information(s) ", ima.vno(this.osk.L)), " succeeded.."));
				}
				catch (Exception expr_7D)
				{
					ProjectData.SetProjectError(expr_7D);
					ima.F.sl.Text = Conversions.ToString(Operators.AddObject(Operators.AddObject("Save information(s) ", ima.vno(this.osk.L)), " error.."));
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x04000291 RID: 657
		private static List<WeakReference> __ENCList;

		// Token: 0x04000293 RID: 659
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x04000294 RID: 660
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x04000295 RID: 661
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x04000296 RID: 662
		[AccessedThroughProperty("sl")]
		private ToolStripStatusLabel _sl;

		// Token: 0x04000297 RID: 663
		[AccessedThroughProperty("Lv1")]
		private LV _Lv1;

		// Token: 0x04000298 RID: 664
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x04000299 RID: 665
		[AccessedThroughProperty("ColumnHeader2")]
		private ColumnHeader _ColumnHeader2;

		// Token: 0x0400029A RID: 666
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x0400029B RID: 667
		[AccessedThroughProperty("SaveToolStripMenuItem")]
		private ToolStripMenuItem _SaveToolStripMenuItem;

		// Token: 0x0400029C RID: 668
		[AccessedThroughProperty("AsToolStripMenuItem")]
		private ToolStripSeparator _AsToolStripMenuItem;

		// Token: 0x0400029D RID: 669
		public Client osk;

		// Token: 0x0400029E RID: 670
		public Client sk;

		// Token: 0x0400029F RID: 671
		public string SV;

		// Token: 0x040002A0 RID: 672
		public object folder;
	}
}
