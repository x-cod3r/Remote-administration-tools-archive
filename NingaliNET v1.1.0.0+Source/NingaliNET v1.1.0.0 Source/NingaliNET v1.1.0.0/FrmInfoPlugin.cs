using System;
using System.Collections;
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
	// Token: 0x02000017 RID: 23
	[DesignerGenerated]
	public partial class FrmInfoPlugin : Form
	{
		// Token: 0x06000580 RID: 1408 RVA: 0x00003C7F File Offset: 0x00001E7F
		[DebuggerNonUserCode]
		static FrmInfoPlugin()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmInfoPlugin.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000581 RID: 1409 RVA: 0x00003C90 File Offset: 0x00001E90
		[DebuggerNonUserCode]
		public FrmInfoPlugin()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FrmInfoPlugin_Load);
			FrmInfoPlugin.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x06000582 RID: 1410 RVA: 0x00030370 File Offset: 0x0002E570
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmInfoPlugin.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmInfoPlugin.__ENCList.Count == FrmInfoPlugin.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmInfoPlugin.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmInfoPlugin.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmInfoPlugin.__ENCList[num] = FrmInfoPlugin.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmInfoPlugin.__ENCList.RemoveRange(num, FrmInfoPlugin.__ENCList.Count - num);
						FrmInfoPlugin.__ENCList.Capacity = FrmInfoPlugin.__ENCList.Count;
					}
					FrmInfoPlugin.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000218 RID: 536
		// (get) Token: 0x06000585 RID: 1413 RVA: 0x00030B30 File Offset: 0x0002ED30
		// (set) Token: 0x06000586 RID: 1414 RVA: 0x00003CBC File Offset: 0x00001EBC
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

		// Token: 0x17000219 RID: 537
		// (get) Token: 0x06000587 RID: 1415 RVA: 0x00030B48 File Offset: 0x0002ED48
		// (set) Token: 0x06000588 RID: 1416 RVA: 0x00003CC5 File Offset: 0x00001EC5
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

		// Token: 0x1700021A RID: 538
		// (get) Token: 0x06000589 RID: 1417 RVA: 0x00030B60 File Offset: 0x0002ED60
		// (set) Token: 0x0600058A RID: 1418 RVA: 0x00003CCE File Offset: 0x00001ECE
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

		// Token: 0x1700021B RID: 539
		// (get) Token: 0x0600058B RID: 1419 RVA: 0x00030B78 File Offset: 0x0002ED78
		// (set) Token: 0x0600058C RID: 1420 RVA: 0x00003CD7 File Offset: 0x00001ED7
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

		// Token: 0x1700021C RID: 540
		// (get) Token: 0x0600058D RID: 1421 RVA: 0x00030B90 File Offset: 0x0002ED90
		// (set) Token: 0x0600058E RID: 1422 RVA: 0x00003CE0 File Offset: 0x00001EE0
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

		// Token: 0x1700021D RID: 541
		// (get) Token: 0x0600058F RID: 1423 RVA: 0x00030BA8 File Offset: 0x0002EDA8
		// (set) Token: 0x06000590 RID: 1424 RVA: 0x00003CE9 File Offset: 0x00001EE9
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

		// Token: 0x1700021E RID: 542
		// (get) Token: 0x06000591 RID: 1425 RVA: 0x00030BC0 File Offset: 0x0002EDC0
		// (set) Token: 0x06000592 RID: 1426 RVA: 0x00030BD8 File Offset: 0x0002EDD8
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

		// Token: 0x1700021F RID: 543
		// (get) Token: 0x06000593 RID: 1427 RVA: 0x00030C30 File Offset: 0x0002EE30
		// (set) Token: 0x06000594 RID: 1428 RVA: 0x00030C48 File Offset: 0x0002EE48
		internal virtual ToolStripMenuItem RemoveSelectedToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RemoveSelectedToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RemoveSelectedToolStripMenuItem_Click);
				if (this._RemoveSelectedToolStripMenuItem != null)
				{
					this._RemoveSelectedToolStripMenuItem.Click -= value2;
				}
				this._RemoveSelectedToolStripMenuItem = value;
				if (this._RemoveSelectedToolStripMenuItem != null)
				{
					this._RemoveSelectedToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000220 RID: 544
		// (get) Token: 0x06000595 RID: 1429 RVA: 0x00030CA0 File Offset: 0x0002EEA0
		// (set) Token: 0x06000596 RID: 1430 RVA: 0x00030CB8 File Offset: 0x0002EEB8
		internal virtual ToolStripMenuItem RemoveAllToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RemoveAllToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RemoveAllToolStripMenuItem_Click);
				if (this._RemoveAllToolStripMenuItem != null)
				{
					this._RemoveAllToolStripMenuItem.Click -= value2;
				}
				this._RemoveAllToolStripMenuItem = value;
				if (this._RemoveAllToolStripMenuItem != null)
				{
					this._RemoveAllToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000221 RID: 545
		// (get) Token: 0x06000597 RID: 1431 RVA: 0x00030D10 File Offset: 0x0002EF10
		// (set) Token: 0x06000598 RID: 1432 RVA: 0x00030D28 File Offset: 0x0002EF28
		internal virtual ToolStripMenuItem UploadUpdatePluginFromDiskToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UploadUpdatePluginFromDiskToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.UploadUpdatePluginFromDiskToolStripMenuItem_Click);
				if (this._UploadUpdatePluginFromDiskToolStripMenuItem != null)
				{
					this._UploadUpdatePluginFromDiskToolStripMenuItem.Click -= value2;
				}
				this._UploadUpdatePluginFromDiskToolStripMenuItem = value;
				if (this._UploadUpdatePluginFromDiskToolStripMenuItem != null)
				{
					this._UploadUpdatePluginFromDiskToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000222 RID: 546
		// (get) Token: 0x06000599 RID: 1433 RVA: 0x00030D80 File Offset: 0x0002EF80
		// (set) Token: 0x0600059A RID: 1434 RVA: 0x00003CF2 File Offset: 0x00001EF2
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

		// Token: 0x17000223 RID: 547
		// (get) Token: 0x0600059B RID: 1435 RVA: 0x00030D98 File Offset: 0x0002EF98
		// (set) Token: 0x0600059C RID: 1436 RVA: 0x00003CFB File Offset: 0x00001EFB
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

		// Token: 0x0600059D RID: 1437 RVA: 0x00003D04 File Offset: 0x00001F04
		private void FrmInfoPlugin_Load(object sender, EventArgs e)
		{
			this.Lv1.FX();
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Plugin Manager - ", ima.vno(this.sk.L)));
		}

		// Token: 0x0600059E RID: 1438 RVA: 0x00003D36 File Offset: 0x00001F36
		private void RefreshToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.sk.Send("inpl");
		}

		// Token: 0x0600059F RID: 1439 RVA: 0x00030DB0 File Offset: 0x0002EFB0
		private void RemoveSelectedToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.Lv1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					this.sk.Send("inpl!" + ima.Y + listViewItem.Text);
					this.Close();
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

		// Token: 0x060005A0 RID: 1440 RVA: 0x00003D49 File Offset: 0x00001F49
		private void RemoveAllToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.sk.Send("inpl@");
			this.Close();
		}

		// Token: 0x060005A1 RID: 1441 RVA: 0x00030E38 File Offset: 0x0002F038
		private void UploadUpdatePluginFromDiskToolStripMenuItem_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog();
			openFileDialog.Filter = "DLL|*.dll";
			openFileDialog.FileName = "";
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				Client arg_81_0 = this.sk;
				string[] array = new string[5];
				array[0] = "plg";
				array[1] = ima.Y;
				array[2] = new FileInfo(openFileDialog.FileName).Name;
				array[3] = ima.Y;
				string[] arg_7A_0 = array;
				int arg_7A_1 = 4;
				byte[] arg_70_0 = File.ReadAllBytes(openFileDialog.FileName);
				bool flag = true;
				arg_7A_0[arg_7A_1] = Convert.ToBase64String(Fungsi.ZIP(arg_70_0, ref flag));
				arg_81_0.Send(string.Concat(array));
				this.Close();
			}
		}

		// Token: 0x04000282 RID: 642
		private static List<WeakReference> __ENCList;

		// Token: 0x04000284 RID: 644
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x04000285 RID: 645
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x04000286 RID: 646
		[AccessedThroughProperty("SL")]
		private ToolStripStatusLabel _SL;

		// Token: 0x04000287 RID: 647
		[AccessedThroughProperty("Lv1")]
		private LV _Lv1;

		// Token: 0x04000288 RID: 648
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x04000289 RID: 649
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x0400028A RID: 650
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x0400028B RID: 651
		[AccessedThroughProperty("RemoveSelectedToolStripMenuItem")]
		private ToolStripMenuItem _RemoveSelectedToolStripMenuItem;

		// Token: 0x0400028C RID: 652
		[AccessedThroughProperty("RemoveAllToolStripMenuItem")]
		private ToolStripMenuItem _RemoveAllToolStripMenuItem;

		// Token: 0x0400028D RID: 653
		[AccessedThroughProperty("UploadUpdatePluginFromDiskToolStripMenuItem")]
		private ToolStripMenuItem _UploadUpdatePluginFromDiskToolStripMenuItem;

		// Token: 0x0400028E RID: 654
		[AccessedThroughProperty("ImageList1")]
		private ImageList _ImageList1;

		// Token: 0x0400028F RID: 655
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x04000290 RID: 656
		public Client sk;
	}
}
