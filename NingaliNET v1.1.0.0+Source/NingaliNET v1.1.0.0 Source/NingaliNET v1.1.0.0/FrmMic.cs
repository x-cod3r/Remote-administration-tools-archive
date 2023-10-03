using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My;

namespace NINGALINET
{
	// Token: 0x0200001C RID: 28
	[DesignerGenerated]
	public partial class FrmMic : Form
	{
		// Token: 0x06000623 RID: 1571 RVA: 0x0000401B File Offset: 0x0000221B
		[DebuggerNonUserCode]
		static FrmMic()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmMic.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000624 RID: 1572 RVA: 0x00034194 File Offset: 0x00032394
		public FrmMic()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.FMic_FormClosing);
			base.Load += new EventHandler(this.FMic_Load);
			FrmMic.__ENCAddToList(this);
			this.too = false;
			this.ran = new Random();
			this.InitializeComponent();
		}

		// Token: 0x06000625 RID: 1573 RVA: 0x000341F8 File Offset: 0x000323F8
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmMic.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmMic.__ENCList.Count == FrmMic.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmMic.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmMic.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmMic.__ENCList[num] = FrmMic.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmMic.__ENCList.RemoveRange(num, FrmMic.__ENCList.Count - num);
						FrmMic.__ENCList.Capacity = FrmMic.__ENCList.Count;
					}
					FrmMic.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700024F RID: 591
		// (get) Token: 0x06000628 RID: 1576 RVA: 0x00034B40 File Offset: 0x00032D40
		// (set) Token: 0x06000629 RID: 1577 RVA: 0x0000402C File Offset: 0x0000222C
		internal virtual Label Label1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label1 = value;
			}
		}

		// Token: 0x17000250 RID: 592
		// (get) Token: 0x0600062A RID: 1578 RVA: 0x00034B58 File Offset: 0x00032D58
		// (set) Token: 0x0600062B RID: 1579 RVA: 0x00004035 File Offset: 0x00002235
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

		// Token: 0x17000251 RID: 593
		// (get) Token: 0x0600062C RID: 1580 RVA: 0x00034B70 File Offset: 0x00032D70
		// (set) Token: 0x0600062D RID: 1581 RVA: 0x0000403E File Offset: 0x0000223E
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

		// Token: 0x17000252 RID: 594
		// (get) Token: 0x0600062E RID: 1582 RVA: 0x00034B88 File Offset: 0x00032D88
		// (set) Token: 0x0600062F RID: 1583 RVA: 0x00034BA0 File Offset: 0x00032DA0
		internal virtual ToolStripMenuItem PlayToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PlayToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PlayToolStripMenuItem_Click);
				if (this._PlayToolStripMenuItem != null)
				{
					this._PlayToolStripMenuItem.Click -= value2;
				}
				this._PlayToolStripMenuItem = value;
				if (this._PlayToolStripMenuItem != null)
				{
					this._PlayToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000253 RID: 595
		// (get) Token: 0x06000630 RID: 1584 RVA: 0x00034BF8 File Offset: 0x00032DF8
		// (set) Token: 0x06000631 RID: 1585 RVA: 0x00034C10 File Offset: 0x00032E10
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

		// Token: 0x17000254 RID: 596
		// (get) Token: 0x06000632 RID: 1586 RVA: 0x00034C68 File Offset: 0x00032E68
		// (set) Token: 0x06000633 RID: 1587 RVA: 0x00004047 File Offset: 0x00002247
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

		// Token: 0x17000255 RID: 597
		// (get) Token: 0x06000634 RID: 1588 RVA: 0x00034C80 File Offset: 0x00032E80
		// (set) Token: 0x06000635 RID: 1589 RVA: 0x00034C98 File Offset: 0x00032E98
		internal virtual ToolStripMenuItem RemoveToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RemoveToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RemoveToolStripMenuItem_Click);
				if (this._RemoveToolStripMenuItem != null)
				{
					this._RemoveToolStripMenuItem.Click -= value2;
				}
				this._RemoveToolStripMenuItem = value;
				if (this._RemoveToolStripMenuItem != null)
				{
					this._RemoveToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000256 RID: 598
		// (get) Token: 0x06000636 RID: 1590 RVA: 0x00034CF0 File Offset: 0x00032EF0
		// (set) Token: 0x06000637 RID: 1591 RVA: 0x00004050 File Offset: 0x00002250
		internal virtual NumericUpDown NumericUpDown1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NumericUpDown1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._NumericUpDown1 = value;
			}
		}

		// Token: 0x17000257 RID: 599
		// (get) Token: 0x06000638 RID: 1592 RVA: 0x00034D08 File Offset: 0x00032F08
		// (set) Token: 0x06000639 RID: 1593 RVA: 0x00004059 File Offset: 0x00002259
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

		// Token: 0x17000258 RID: 600
		// (get) Token: 0x0600063A RID: 1594 RVA: 0x00034D20 File Offset: 0x00032F20
		// (set) Token: 0x0600063B RID: 1595 RVA: 0x00004062 File Offset: 0x00002262
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

		// Token: 0x17000259 RID: 601
		// (get) Token: 0x0600063C RID: 1596 RVA: 0x00034D38 File Offset: 0x00032F38
		// (set) Token: 0x0600063D RID: 1597 RVA: 0x00034D50 File Offset: 0x00032F50
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

		// Token: 0x1700025A RID: 602
		// (get) Token: 0x0600063E RID: 1598 RVA: 0x00034DA8 File Offset: 0x00032FA8
		// (set) Token: 0x0600063F RID: 1599 RVA: 0x0000406B File Offset: 0x0000226B
		internal virtual Panel Panel1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Panel1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Panel1 = value;
			}
		}

		// Token: 0x1700025B RID: 603
		// (get) Token: 0x06000640 RID: 1600 RVA: 0x00034DC0 File Offset: 0x00032FC0
		// (set) Token: 0x06000641 RID: 1601 RVA: 0x00004074 File Offset: 0x00002274
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

		// Token: 0x1700025C RID: 604
		// (get) Token: 0x06000642 RID: 1602 RVA: 0x00034DD8 File Offset: 0x00032FD8
		// (set) Token: 0x06000643 RID: 1603 RVA: 0x0000407D File Offset: 0x0000227D
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

		// Token: 0x1700025D RID: 605
		// (get) Token: 0x06000644 RID: 1604 RVA: 0x00034DF0 File Offset: 0x00032FF0
		// (set) Token: 0x06000645 RID: 1605 RVA: 0x00004086 File Offset: 0x00002286
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

		// Token: 0x06000646 RID: 1606 RVA: 0x00034E08 File Offset: 0x00033008
		public void wa()
		{
			this.Lv1.Items.Clear();
			string[] files = Directory.GetFiles(Conversions.ToString(this.folder));
			checked
			{
				for (int i = 0; i < files.Length; i++)
				{
					string fileName = files[i];
					FileInfo fileInfo = new FileInfo(fileName);
					if (Operators.CompareString(fileInfo.Extension, ".wav", false) == 0)
					{
						string name = fileInfo.Name;
						ListViewItem listViewItem = new ListViewItem();
						listViewItem.Text = name;
						listViewItem.SubItems.Add(fileInfo.LastWriteTime.ToString());
						this.Lv1.Items.Add(listViewItem);
					}
				}
				this.Lv1.FX();
			}
		}

		// Token: 0x06000647 RID: 1607 RVA: 0x00034EBC File Offset: 0x000330BC
		private void PlayToolStripMenuItem_Click(object sender, EventArgs e)
		{
			NewLateBinding.LateCall(MyProject.Computer.Audio, null, "Play", new object[]
			{
				Operators.ConcatenateObject(this.folder, this.Lv1.FocusedItem.Text),
				AudioPlayMode.Background
			}, null, null, null, true);
		}

		// Token: 0x06000648 RID: 1608 RVA: 0x0000408F File Offset: 0x0000228F
		private void FMic_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x06000649 RID: 1609 RVA: 0x00034F14 File Offset: 0x00033114
		private void FMic_Load(object sender, EventArgs e)
		{
			this.Lv1.FX();
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Microphone - ", ima.vno(this.osk.L)));
			this.folder = Operators.ConcatenateObject(Operators.ConcatenateObject(this.osk.Folder, ima.vno(this.osk.L)), "\\Microphone\\");
			if (!Directory.Exists(Conversions.ToString(this.folder)))
			{
				Directory.CreateDirectory(Conversions.ToString(this.folder));
			}
			this.wa();
			if (ima.F.SAUT.Checked)
			{
				decimal num = this.NumericUpDown1.Value;
				num = decimal.Multiply(num, new decimal(1000L));
				this.sk.Send("!" + ima.Y + Conversions.ToString(num));
				this.Button1.Enabled = false;
			}
		}

		// Token: 0x0600064A RID: 1610 RVA: 0x0000409D File Offset: 0x0000229D
		private void StopToolStripMenuItem_Click(object sender, EventArgs e)
		{
			MyProject.Computer.Audio.Stop();
		}

		// Token: 0x0600064B RID: 1611 RVA: 0x0003500C File Offset: 0x0003320C
		private void RemoveToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				File.Delete(Conversions.ToString(Operators.ConcatenateObject(this.folder, this.Lv1.FocusedItem.Text)));
				this.wa();
			}
			catch (Exception expr_2E)
			{
				ProjectData.SetProjectError(expr_2E);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600064C RID: 1612
		[DllImport("winmm.dll", CharSet = CharSet.Ansi, ExactSpelling = true, SetLastError = true)]
		private static extern int mciSendStringA([MarshalAs(UnmanagedType.VBByRefStr)] ref string lpstrCommand, [MarshalAs(UnmanagedType.VBByRefStr)] ref string lpstrReturnString, int uReturnLength, int hwndCallback);

		// Token: 0x0600064D RID: 1613 RVA: 0x00035068 File Offset: 0x00033268
		private void Button1_Click(object sender, EventArgs e)
		{
			decimal num = this.NumericUpDown1.Value;
			num = decimal.Multiply(num, new decimal(1000L));
			this.sk.Send("!" + ima.Y + Conversions.ToString(num));
			this.Button1.Enabled = false;
		}

		// Token: 0x040002D3 RID: 723
		private static List<WeakReference> __ENCList;

		// Token: 0x040002D5 RID: 725
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x040002D6 RID: 726
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x040002D7 RID: 727
		[AccessedThroughProperty("ContextMenuStrip2")]
		private ContextMenuStrip _ContextMenuStrip2;

		// Token: 0x040002D8 RID: 728
		[AccessedThroughProperty("PlayToolStripMenuItem")]
		private ToolStripMenuItem _PlayToolStripMenuItem;

		// Token: 0x040002D9 RID: 729
		[AccessedThroughProperty("StopToolStripMenuItem")]
		private ToolStripMenuItem _StopToolStripMenuItem;

		// Token: 0x040002DA RID: 730
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x040002DB RID: 731
		[AccessedThroughProperty("RemoveToolStripMenuItem")]
		private ToolStripMenuItem _RemoveToolStripMenuItem;

		// Token: 0x040002DC RID: 732
		[AccessedThroughProperty("NumericUpDown1")]
		private NumericUpDown _NumericUpDown1;

		// Token: 0x040002DD RID: 733
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x040002DE RID: 734
		[AccessedThroughProperty("sl")]
		private ToolStripStatusLabel _sl;

		// Token: 0x040002DF RID: 735
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x040002E0 RID: 736
		[AccessedThroughProperty("Panel1")]
		private Panel _Panel1;

		// Token: 0x040002E1 RID: 737
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x040002E2 RID: 738
		[AccessedThroughProperty("Lv1")]
		private LV _Lv1;

		// Token: 0x040002E3 RID: 739
		[AccessedThroughProperty("ColumnHeader2")]
		private ColumnHeader _ColumnHeader2;

		// Token: 0x040002E4 RID: 740
		public object sock;

		// Token: 0x040002E5 RID: 741
		public Client sk;

		// Token: 0x040002E6 RID: 742
		public object folder;

		// Token: 0x040002E7 RID: 743
		public Client osk;

		// Token: 0x040002E8 RID: 744
		private object too;

		// Token: 0x040002E9 RID: 745
		private Random ran;
	}
}
